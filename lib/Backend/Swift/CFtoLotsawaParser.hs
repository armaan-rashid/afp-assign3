{-# LANGUAGE InstanceSigs #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NamedFieldPuns #-}

module Backend.Swift.CFtoLotsawaParser
  ( terminalCount,
    categoryCount,
    lotsawaRule,
    recognizingSym,
    LotsawaRule (..),
    LotsawaGrammar (..),
    toList,
  )
where

import BNFC.CF
  ( CF,
    Cat,
    Literal,
    Rul (Rule, rhsRule, valRCat),
    Rule,
    WithPosition (WithPosition, wpThing),
    allEntryPoints,
  )
import Backend.Swift.CFtoCitronLexer (mapIndent)
import Control.Monad (foldM)
import Control.Monad.Reader (MonadReader (ask), Reader)
import Control.Monad.State.Lazy (MonadState (get), State, modify)
import Data.Functor ((<&>))
import Data.List (intercalate)
import qualified Data.List.NonEmpty as NE
import Data.Map.Strict (Map)
import qualified Data.Map.Strict as M

-- | Type of Lotsawa grammar rules. Lotsawa grammar doesn't operate
--   with any string or similar types to populate its grammar rules:
--   everything must be provided as a fixed-width integer.
--   The sole constructor of this type takes one integer on the LHS and
--   a list of integers on the RHS corresponding to terminals / nonterminals.

--   An 8-bit integer might suffice but we default to 16 bits so there
--   can be as many as 65536 terminals and nonterminals (combined) in a
--   grammar. That said, there's no reason not to make this polymorphic to
--   any fixed-width integer in the future.
data LotsawaRule = LotsawaRule Int [Int]
  deriving (Eq)

toList :: LotsawaRule -> [Int]
toList (LotsawaRule i ints) = i : ints

-- | This show instance renders the rule in Swift code
--   as suitable function parameters for Lotsawa's grammar code, e.g.
--   @
--   show (Rule 5 [2, 1])` ==
--   (lhs: 5, rhs: [2, 1]) -- Swift
--   @
instance Show LotsawaRule where
  show :: LotsawaRule -> String
  show (LotsawaRule i ints) =
    "(lhs: Symbol(id: "
      ++ show i
      ++ "), rhs: ["
      ++ displayedInts
      ++ "])"
    where
      displayedInts = intercalate ", " $ map (("Symbol(id: " ++) . (++ ")") . show) ints

-- | Represents a grammar, as defined by the specification for Lotsawa.
data LotsawaGrammar = Grammar
  { rules :: [LotsawaRule],
    recognizing :: Int,
    categories :: Map Cat Int,
    terminals :: Map Literal Int
  }

-- | The actual Swift code that initializes the Lotsawa Grammar correctly
--   in Swift.
instance Show LotsawaGrammar where
  show :: LotsawaGrammar -> String
  show (Grammar {rules, recognizing, categories, terminals}) =
    unlines $
      ( "var grammar: DefaultGrammar = Grammar(recognizing: Symbol(id: "
          ++ show recognizing
          ++ "))"
      )
        : ""
        : "init() {"
        : (unlines . mapIndent) (map (("grammar.addRule" ++) . show) rules)
        : "}"
        : ""
        : ["", "let cats: [Int : String] = ["]
        ++ (mapIndent . fst) (M.mapAccumWithKey printCats [] categories)
        ++ ["]", "", "let terminals: [Int : String] = ["]
        ++ (mapIndent . fst) (M.mapAccumWithKey printLits [] terminals)
        ++ ["]"]
    where
      printCats :: [String] -> Cat -> Int -> ([String], ())
      printCats strs a b = (strs ++ [show b ++ " : \"" ++ show a ++ "\","], ())
      printLits :: [String] -> Literal -> Int -> ([String], ())
      printLits strs a b = (strs ++ [show b ++ " : " ++ show a ++ ","], ())

-- | The heart of this backend: turn BNFC's rule into a Lotsawa-friendly
-- rule made of ints only. Read from the maps given in the local environment
-- to do this!
lotsawaRule :: Rule -> Reader (Map Cat Int, Map Literal Int) LotsawaRule
lotsawaRule (Rule {valRCat = (WithPosition {wpThing = cat}), rhsRule = rule}) = do
  (catMap, litMap) <- ask
  let lhs = forceLookup $ M.lookup cat catMap
  let rhs = map (forceLookup . either (`M.lookup` catMap) (`M.lookup` litMap)) rule
  return $ LotsawaRule lhs rhs
  where
    forceLookup = maybe (-1) id

-- | Count how many categories there are in a set
-- of categories EXCLUDING 'TokenCat' categories.
-- Retain those excluded tokenCats in a separate set.
-- We count in a state monad so we don't have to worry about
-- where we're starting from.
categoryCount :: [Cat] -> State Int (Map Cat Int)
categoryCount = keyCount

-- | Count the terminals in the grammar.
terminalCount :: [Literal] -> State Int (Map Literal Int)
terminalCount = keyCount

-- | Count list of objects and map them to some indices.
-- We count in a state monad so we don't have to worry about
-- where we're starting from.
keyCount :: (Ord a) => [a] -> State Int (Map a Int)
keyCount keys = foldM (keyInsert) M.empty keys
  where
    keyInsert m key = do
      i <- get
      modify (+ 1)
      return $ M.insert key i m

-- | Get the symbol to recognize for the parser.
recognizingSym :: CF -> Reader (Map Cat Int) (Cat, Int)
recognizingSym cfg = do
  let parseCat = NE.head $ allEntryPoints cfg
  (M.lookup parseCat <$> ask) <&> \case
    Just i -> (parseCat, i)
    Nothing -> (parseCat, -1)
