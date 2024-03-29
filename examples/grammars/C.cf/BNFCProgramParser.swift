// Generated by BNFC 2.9.6

import Lotsawa
import CitronLexerModule
import Foundation


struct Parser {
	let lexer: CitronLexer<Int16> = CitronLexer(rules: [
		CitronLexer.LexingRule.regexPattern("//.*$", {_ in nil}),
		CitronLexer.LexingRule.regex(try! NSRegularExpression(pattern: "/*.*?*/", options: NSRegularExpression.Options.dotMatchesLineSeparators), {_ in nil}),
	])


	var grammar: DefaultGrammar = Grammar(recognizing: Symbol(id: 0))
	
	init() {
		grammar.addRule(lhs: Symbol(id: 0), rhs: [Symbol(id: 1)])
		grammar.addRule(lhs: Symbol(id: 1), rhs: [])
		grammar.addRule(lhs: Symbol(id: 1), rhs: [Symbol(id: 2), Symbol(id: 1)])
		grammar.addRule(lhs: Symbol(id: 2), rhs: [Symbol(id: 9), Symbol(id: 40), Symbol(id: 59), Symbol(id: 8), Symbol(id: 60), Symbol(id: 3)])
		grammar.addRule(lhs: Symbol(id: 3), rhs: [Symbol(id: 61), Symbol(id: 38), Symbol(id: 62)])
		grammar.addRule(lhs: Symbol(id: 3), rhs: [Symbol(id: 63)])
		grammar.addRule(lhs: Symbol(id: 4), rhs: [Symbol(id: 5)])
		grammar.addRule(lhs: Symbol(id: 4), rhs: [Symbol(id: 5), Symbol(id: 64), Symbol(id: 4)])
		grammar.addRule(lhs: Symbol(id: 5), rhs: [Symbol(id: 40)])
		grammar.addRule(lhs: Symbol(id: 5), rhs: [Symbol(id: 40), Symbol(id: 65), Symbol(id: 33)])
		grammar.addRule(lhs: Symbol(id: 6), rhs: [Symbol(id: 7)])
		grammar.addRule(lhs: Symbol(id: 6), rhs: [Symbol(id: 7), Symbol(id: 64), Symbol(id: 6)])
		grammar.addRule(lhs: Symbol(id: 7), rhs: [Symbol(id: 9)])
		grammar.addRule(lhs: Symbol(id: 7), rhs: [Symbol(id: 9), Symbol(id: 5)])
		grammar.addRule(lhs: Symbol(id: 8), rhs: [])
		grammar.addRule(lhs: Symbol(id: 8), rhs: [Symbol(id: 6)])
		grammar.addRule(lhs: Symbol(id: 9), rhs: [Symbol(id: 45), Symbol(id: 10)])
		grammar.addRule(lhs: Symbol(id: 10), rhs: [Symbol(id: 46)])
		grammar.addRule(lhs: Symbol(id: 10), rhs: [Symbol(id: 47)])
		grammar.addRule(lhs: Symbol(id: 10), rhs: [Symbol(id: 48)])
		grammar.addRule(lhs: Symbol(id: 10), rhs: [Symbol(id: 49)])
		grammar.addRule(lhs: Symbol(id: 10), rhs: [Symbol(id: 50)])
		grammar.addRule(lhs: Symbol(id: 10), rhs: [Symbol(id: 51)])
		grammar.addRule(lhs: Symbol(id: 10), rhs: [Symbol(id: 52), Symbol(id: 40)])
		grammar.addRule(lhs: Symbol(id: 9), rhs: [Symbol(id: 10)])
		grammar.addRule(lhs: Symbol(id: 11), rhs: [Symbol(id: 44)])
		grammar.addRule(lhs: Symbol(id: 11), rhs: [Symbol(id: 43)])
		grammar.addRule(lhs: Symbol(id: 11), rhs: [Symbol(id: 41)])
		grammar.addRule(lhs: Symbol(id: 11), rhs: [Symbol(id: 42)])
		grammar.addRule(lhs: Symbol(id: 11), rhs: [Symbol(id: 53)])
		grammar.addRule(lhs: Symbol(id: 11), rhs: [Symbol(id: 54)])
		grammar.addRule(lhs: Symbol(id: 12), rhs: [Symbol(id: 66)])
		grammar.addRule(lhs: Symbol(id: 12), rhs: [Symbol(id: 67)])
		grammar.addRule(lhs: Symbol(id: 13), rhs: [Symbol(id: 68)])
		grammar.addRule(lhs: Symbol(id: 13), rhs: [Symbol(id: 69)])
		grammar.addRule(lhs: Symbol(id: 14), rhs: [Symbol(id: 68)])
		grammar.addRule(lhs: Symbol(id: 14), rhs: [Symbol(id: 69)])
		grammar.addRule(lhs: Symbol(id: 14), rhs: [Symbol(id: 70)])
		grammar.addRule(lhs: Symbol(id: 14), rhs: [Symbol(id: 71)])
		grammar.addRule(lhs: Symbol(id: 15), rhs: [Symbol(id: 71)])
		grammar.addRule(lhs: Symbol(id: 15), rhs: [Symbol(id: 72)])
		grammar.addRule(lhs: Symbol(id: 15), rhs: [Symbol(id: 73)])
		grammar.addRule(lhs: Symbol(id: 16), rhs: [Symbol(id: 74)])
		grammar.addRule(lhs: Symbol(id: 16), rhs: [Symbol(id: 75)])
		grammar.addRule(lhs: Symbol(id: 17), rhs: [Symbol(id: 76)])
		grammar.addRule(lhs: Symbol(id: 17), rhs: [Symbol(id: 77)])
		grammar.addRule(lhs: Symbol(id: 18), rhs: [Symbol(id: 78)])
		grammar.addRule(lhs: Symbol(id: 18), rhs: [Symbol(id: 79)])
		grammar.addRule(lhs: Symbol(id: 18), rhs: [Symbol(id: 80)])
		grammar.addRule(lhs: Symbol(id: 18), rhs: [Symbol(id: 81)])
		grammar.addRule(lhs: Symbol(id: 19), rhs: [Symbol(id: 82)])
		grammar.addRule(lhs: Symbol(id: 19), rhs: [Symbol(id: 83)])
		grammar.addRule(lhs: Symbol(id: 20), rhs: [Symbol(id: 65)])
		grammar.addRule(lhs: Symbol(id: 20), rhs: [Symbol(id: 84)])
		grammar.addRule(lhs: Symbol(id: 20), rhs: [Symbol(id: 85)])
		grammar.addRule(lhs: Symbol(id: 21), rhs: [Symbol(id: 33)])
		grammar.addRule(lhs: Symbol(id: 21), rhs: [Symbol(id: 33), Symbol(id: 64), Symbol(id: 21)])
		grammar.addRule(lhs: Symbol(id: 22), rhs: [Symbol(id: 40)])
		grammar.addRule(lhs: Symbol(id: 22), rhs: [Symbol(id: 11)])
		grammar.addRule(lhs: Symbol(id: 23), rhs: [Symbol(id: 23), Symbol(id: 86), Symbol(id: 33), Symbol(id: 87)])
		grammar.addRule(lhs: Symbol(id: 23), rhs: [Symbol(id: 23), Symbol(id: 59), Symbol(id: 21), Symbol(id: 60)])
		grammar.addRule(lhs: Symbol(id: 23), rhs: [Symbol(id: 23), Symbol(id: 12), Symbol(id: 22)])
		grammar.addRule(lhs: Symbol(id: 23), rhs: [Symbol(id: 23), Symbol(id: 13)])
		grammar.addRule(lhs: Symbol(id: 24), rhs: [Symbol(id: 14), Symbol(id: 24)])
		grammar.addRule(lhs: Symbol(id: 25), rhs: [Symbol(id: 25), Symbol(id: 15), Symbol(id: 24)])
		grammar.addRule(lhs: Symbol(id: 26), rhs: [Symbol(id: 26), Symbol(id: 16), Symbol(id: 25)])
		grammar.addRule(lhs: Symbol(id: 27), rhs: [Symbol(id: 27), Symbol(id: 17), Symbol(id: 26)])
		grammar.addRule(lhs: Symbol(id: 28), rhs: [Symbol(id: 28), Symbol(id: 18), Symbol(id: 27)])
		grammar.addRule(lhs: Symbol(id: 29), rhs: [Symbol(id: 29), Symbol(id: 19), Symbol(id: 28)])
		grammar.addRule(lhs: Symbol(id: 30), rhs: [Symbol(id: 30), Symbol(id: 88), Symbol(id: 35)])
		grammar.addRule(lhs: Symbol(id: 31), rhs: [Symbol(id: 31), Symbol(id: 89), Symbol(id: 30)])
		grammar.addRule(lhs: Symbol(id: 32), rhs: [Symbol(id: 31), Symbol(id: 20), Symbol(id: 32)])
		grammar.addRule(lhs: Symbol(id: 32), rhs: [Symbol(id: 31), Symbol(id: 90), Symbol(id: 33), Symbol(id: 91), Symbol(id: 32)])
		grammar.addRule(lhs: Symbol(id: 33), rhs: [Symbol(id: 34)])
		grammar.addRule(lhs: Symbol(id: 34), rhs: [Symbol(id: 32)])
		grammar.addRule(lhs: Symbol(id: 32), rhs: [Symbol(id: 31)])
		grammar.addRule(lhs: Symbol(id: 31), rhs: [Symbol(id: 30)])
		grammar.addRule(lhs: Symbol(id: 30), rhs: [Symbol(id: 35)])
		grammar.addRule(lhs: Symbol(id: 35), rhs: [Symbol(id: 36)])
		grammar.addRule(lhs: Symbol(id: 36), rhs: [Symbol(id: 37)])
		grammar.addRule(lhs: Symbol(id: 37), rhs: [Symbol(id: 29)])
		grammar.addRule(lhs: Symbol(id: 29), rhs: [Symbol(id: 28)])
		grammar.addRule(lhs: Symbol(id: 28), rhs: [Symbol(id: 27)])
		grammar.addRule(lhs: Symbol(id: 27), rhs: [Symbol(id: 26)])
		grammar.addRule(lhs: Symbol(id: 26), rhs: [Symbol(id: 25)])
		grammar.addRule(lhs: Symbol(id: 25), rhs: [Symbol(id: 24)])
		grammar.addRule(lhs: Symbol(id: 24), rhs: [Symbol(id: 23)])
		grammar.addRule(lhs: Symbol(id: 23), rhs: [Symbol(id: 22)])
		grammar.addRule(lhs: Symbol(id: 22), rhs: [Symbol(id: 59), Symbol(id: 33), Symbol(id: 60)])
		grammar.addRule(lhs: Symbol(id: 38), rhs: [])
		grammar.addRule(lhs: Symbol(id: 38), rhs: [Symbol(id: 39), Symbol(id: 38)])
		grammar.addRule(lhs: Symbol(id: 39), rhs: [Symbol(id: 9), Symbol(id: 4), Symbol(id: 63)])
		grammar.addRule(lhs: Symbol(id: 39), rhs: [Symbol(id: 33), Symbol(id: 63)])
		grammar.addRule(lhs: Symbol(id: 39), rhs: [Symbol(id: 55), Symbol(id: 33), Symbol(id: 63)])
		grammar.addRule(lhs: Symbol(id: 39), rhs: [Symbol(id: 56), Symbol(id: 59), Symbol(id: 33), Symbol(id: 60), Symbol(id: 39)])
		grammar.addRule(lhs: Symbol(id: 39), rhs: [Symbol(id: 61), Symbol(id: 38), Symbol(id: 62)])
		grammar.addRule(lhs: Symbol(id: 39), rhs: [Symbol(id: 57), Symbol(id: 59), Symbol(id: 33), Symbol(id: 60), Symbol(id: 39), Symbol(id: 58), Symbol(id: 39)])
		grammar.addRule(lhs: Symbol(id: 39), rhs: [Symbol(id: 57), Symbol(id: 59), Symbol(id: 33), Symbol(id: 60), Symbol(id: 39)])
	
	}
	
	
	let cats: [Int : String] = [
		16 : "AddSubOps",
		20 : "AssnOps",
		18 : "CmpOps",
		2 : "Decl",
		19 : "EqOps",
		33 : "Exp",
		3 : "FnBody",
		11 : "Literal",
		15 : "MulDivOps",
		7 : "Param",
		8 : "Params",
		13 : "PostOps",
		14 : "PreOps",
		0 : "Program",
		12 : "ProjOps",
		17 : "ShiftOps",
		39 : "Stm",
		9 : "Type",
		5 : "Var",
		41 : "Char",
		42 : "Double",
		40 : "Ident",
		43 : "Integer",
		44 : "String",
		1 : "[Decl]",
		21 : "[Exp]",
		6 : "[Param]",
		38 : "[Stm]",
		4 : "[Var]",
		34 : "Exp1",
		32 : "Exp2",
		31 : "Exp3",
		30 : "Exp4",
		35 : "Exp5",
		36 : "Exp6",
		37 : "Exp7",
		29 : "Exp8",
		28 : "Exp9",
		27 : "Exp10",
		26 : "Exp11",
		25 : "Exp12",
		24 : "Exp13",
		23 : "Exp14",
		22 : "Exp15",
		10 : "Type1",
	]
	
	let terminals: [Int : String] = [
		70 : "!",
		83 : "!=",
		73 : "%",
		88 : "&&",
		59 : "(",
		60 : ")",
		71 : "*",
		74 : "+",
		68 : "++",
		84 : "+=",
		64 : ",",
		75 : "-",
		69 : "--",
		85 : "-=",
		67 : "->",
		66 : ".",
		72 : "/",
		91 : ":",
		63 : ";",
		78 : "<",
		76 : "<<",
		80 : "<=",
		65 : "=",
		82 : "==",
		79 : ">",
		81 : ">=",
		77 : ">>",
		90 : "?",
		86 : "[",
		87 : "]",
		50 : "bool",
		48 : "char",
		45 : "const",
		49 : "double",
		58 : "else",
		54 : "false",
		57 : "if",
		46 : "int",
		47 : "long",
		55 : "return",
		52 : "struct",
		53 : "true",
		51 : "void",
		56 : "while",
		61 : "{",
		89 : "||",
		62 : "}",
	]


	public func runProgramParser(input: String) throws -> Forest<Int16> {
		var recognizer: Recognizer<Int16> = Recognizer(PreprocessedGrammar(grammar))
		var tokens: [Int16] = []
		try lexer.tokenize(input, onFound: {(token) in tokens.append(token)})
		for (i,s) in tokens.enumerated() {
			recognizer.discover(Symbol(id: s), startingAt: UInt32(i))
		}
		return recognizer.forest
	}

}
