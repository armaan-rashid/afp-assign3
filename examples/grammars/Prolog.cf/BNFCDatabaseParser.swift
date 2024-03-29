// Generated by BNFC 2.9.6

import Lotsawa
import CitronLexerModule
import Foundation


struct Parser {
	let lexer: CitronLexer<Int16> = CitronLexer(rules: [
		CitronLexer.LexingRule.regexPattern("[a-z]_|[0-9]|[A-Za-z]*", {_ in 12}),
		CitronLexer.LexingRule.regexPattern("[A-Z]_|[0-9]|[A-Za-z]*", {_ in 11}),
		CitronLexer.LexingRule.regexPattern("_.*", {_ in 13}),
	])


	var grammar: DefaultGrammar = Grammar(recognizing: Symbol(id: 0))
	
	init() {
		grammar.addRule(lhs: Symbol(id: 0), rhs: [Symbol(id: 7)])
		grammar.addRule(lhs: Symbol(id: 1), rhs: [Symbol(id: 2)])
		grammar.addRule(lhs: Symbol(id: 1), rhs: [Symbol(id: 2), Symbol(id: 14), Symbol(id: 8)])
		grammar.addRule(lhs: Symbol(id: 1), rhs: [Symbol(id: 14), Symbol(id: 8)])
		grammar.addRule(lhs: Symbol(id: 2), rhs: [Symbol(id: 4)])
		grammar.addRule(lhs: Symbol(id: 2), rhs: [Symbol(id: 4), Symbol(id: 15), Symbol(id: 9), Symbol(id: 16)])
		grammar.addRule(lhs: Symbol(id: 3), rhs: [Symbol(id: 4)])
		grammar.addRule(lhs: Symbol(id: 3), rhs: [Symbol(id: 5)])
		grammar.addRule(lhs: Symbol(id: 3), rhs: [Symbol(id: 4), Symbol(id: 15), Symbol(id: 9), Symbol(id: 16)])
		grammar.addRule(lhs: Symbol(id: 3), rhs: [Symbol(id: 6)])
		grammar.addRule(lhs: Symbol(id: 4), rhs: [Symbol(id: 12)])
		grammar.addRule(lhs: Symbol(id: 4), rhs: [Symbol(id: 17), Symbol(id: 10), Symbol(id: 17)])
		grammar.addRule(lhs: Symbol(id: 5), rhs: [Symbol(id: 11)])
		grammar.addRule(lhs: Symbol(id: 5), rhs: [Symbol(id: 13)])
		grammar.addRule(lhs: Symbol(id: 6), rhs: [Symbol(id: 18), Symbol(id: 19)])
		grammar.addRule(lhs: Symbol(id: 6), rhs: [Symbol(id: 18), Symbol(id: 9), Symbol(id: 19)])
		grammar.addRule(lhs: Symbol(id: 6), rhs: [Symbol(id: 18), Symbol(id: 9), Symbol(id: 20), Symbol(id: 6), Symbol(id: 19)])
		grammar.addRule(lhs: Symbol(id: 6), rhs: [Symbol(id: 18), Symbol(id: 9), Symbol(id: 20), Symbol(id: 5), Symbol(id: 19)])
		grammar.addRule(lhs: Symbol(id: 7), rhs: [])
		grammar.addRule(lhs: Symbol(id: 7), rhs: [Symbol(id: 1), Symbol(id: 21), Symbol(id: 7)])
		grammar.addRule(lhs: Symbol(id: 8), rhs: [Symbol(id: 2)])
		grammar.addRule(lhs: Symbol(id: 8), rhs: [Symbol(id: 2), Symbol(id: 22), Symbol(id: 8)])
		grammar.addRule(lhs: Symbol(id: 9), rhs: [Symbol(id: 3)])
		grammar.addRule(lhs: Symbol(id: 9), rhs: [Symbol(id: 3), Symbol(id: 22), Symbol(id: 9)])
	
	}
	
	
	let cats: [Int : String] = [
		4 : "Atom",
		1 : "Clause",
		0 : "Database",
		6 : "List",
		2 : "Predicate",
		3 : "Term",
		5 : "Var",
		10 : "Ident",
		12 : "LIdent",
		11 : "UIdent",
		13 : "Wild",
		7 : "[Clause]",
		8 : "[Predicate]",
		9 : "[Term]",
	]
	
	let terminals: [Int : String] = [
		17 : "'",
		15 : "(",
		16 : ")",
		22 : ",",
		21 : ".",
		14 : ":-",
		18 : "[",
		19 : "]",
		20 : "|",
	]


	public func runDatabaseParser(input: String) throws -> Forest<Int16> {
		var recognizer: Recognizer<Int16> = Recognizer(PreprocessedGrammar(grammar))
		var tokens: [Int16] = []
		try lexer.tokenize(input, onFound: {(token) in tokens.append(token)})
		for (i,s) in tokens.enumerated() {
			recognizer.discover(Symbol(id: s), startingAt: UInt32(i))
		}
		return recognizer.forest
	}

}
