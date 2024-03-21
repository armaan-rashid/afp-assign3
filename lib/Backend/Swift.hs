{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE NamedFieldPuns #-}

module Swift (makeSwift) where

import BNFC.Backend.Base
import BNFC.CF
import BNFC.Options hiding (Backend)
import Control.Monad.State.Lazy
import Control.Monad.Reader
import Control.Monad.Writer
import qualified Data.List.NonEmpty as NE
import Data.Function ((&))
import Data.Functor ((<&>))

import Backend.Swift.Lexer
import Backend.Swift.Parser

-- | Run the context free grammar produced by BNFC frontend
-- through a conversion process that turns it into a proper
-- Lotsawa grammar in Swift code.

-- Right now there's no meaningful options for the Swift backend
-- so we just ignore them, but they're there to satisfy the type
-- signature for all the other backends.
makeSwift :: SharedOptions -> CF -> Backend
makeSwift _ (cfg@CFG {cfgRules}) = do
  -- Count everything!
  let (catMap, i) = runState (categoryCount (reallyAllCats cfg)) 0
  let termMap     = evalState (terminalCount (cfgLiterals cfg)) i
  let tokenMap    = tokenRules cfg

  -- Gather the lexing code.
  let lexCode = runReader citronLexer (catMap, tokenMap)

  -- Convert raw rules into Lotsawa friendly ones, create the grammar.
  let lotsawaRules = with (catMap, termMap) (mapM lotsawaRule (cfgRules))
  let (mainCat, lotsawaSymbol) = with catMap (recognizingSym cfg)
  let lotsawaGrammar = Grammar {recognizing = lotsawaSymbol,
                                      rules = lotsawaRules}
  -- Stitch together the lexing and parsing code somehow.
  let mainParserFile = unlines [imports,
                                "", lexCode,
                                "", show lotsawaGrammar,
                                "", swiftParse]
  tell [
      GeneratedFile {fileName = "Package.swift",
                     fileContent = swiftPackage mainCat},
      GeneratedFile {fileName = show mainCat ++ "Parser.swift",
                     fileContent = mainParserFile}]
  where with = flip runReader

-- * Code constants
-- Functions that return the necessary Swift boilerplate as constant Strings

imports :: String
imports = unlines $ map ("import " ++) ["Lotsawa",
                                        "CitronLexerModule",
                                        "Foundation"]

-- | Painful boilerplate for Package.Swift file.
swiftPackage :: Cat -> String
swiftPackage cat = let pkgName = "BNFC" ++ show cat ++ "Parser"
    in unlines $ [
    "// swift-tools-version: 5.7",
    "let CitronLexer = Target.Dependency.product(name: \"CitronLexerModule\", package: \"citron\")",
    "let Lotsawa = Target.Dependency.product(name: \"Lotsawa\", package: \"Lotsawa\")",
    "let package = Package("] ++ mapIndent ([
        "name: \"" ++ pkgName ++ "\",",
        "platforms: [.macOS(.v10_15)],",
        "dependencies: ["] ++ mapIndent ([
            ".package(url: \"https://github.com/roop/citron.git\", branch: \"master\"),",
            ".package(url: \"https://github.com/hylo-lang/Lotsawa.git\", branch: \"main\")],"]) ++
        ["targets: ["] ++ mapIndent ([
            ".target("] ++ mapIndent ([
                "name: \""++ show cat ++"Parser\",",
                "dependencies: [Lotsawa, \"" ++ pkgName ++ "\"],",
                "path: \".\")]"])
        )
    )

-- | Use a Swift function to read, lex, and parse a file!
swiftParse :: String
swiftParse = unlines $ [
    "public func runBNFCParser()"]

{-
".target("] ++ mapIndent ([
    "name: \"" ++ pkgName ++ "\",",
    "dependencies: [Lotsawa, CitronLexer],",
    "path: \".\"),"]) ++ [
-}
