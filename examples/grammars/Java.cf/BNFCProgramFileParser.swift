// Generated by BNFC 2.9.6

import Lotsawa
import CitronLexerModule
import Foundation


struct Parser {
	let lexer: CitronLexer<Int16> = CitronLexer(rules: [
		CitronLexer.LexingRule.regexPattern("0[Xx][ABCDEFabcdef]|[0-9]+[Ll]", {_ in 83}),
		CitronLexer.LexingRule.regexPattern("0[Xx][ABCDEFabcdef]|[0-9]+ul|UL", {_ in 84}),
		CitronLexer.LexingRule.regexPattern("0[Xx][ABCDEFabcdef]|[0-9]+[Uu]", {_ in 82}),
		CitronLexer.LexingRule.regexPattern("0[Xx][ABCDEFabcdef]|[0-9]+", {_ in 81}),
		CitronLexer.LexingRule.regexPattern("'.-['\]|\['\nrt]'", {_ in 93}),
		CitronLexer.LexingRule.regexPattern("[0-9]+.|.[0-9]+[Ee]-?[0-9]+?|[0-9]+[Ee]-?[0-9]+|[0-9]+.[0-9]+E-?[0-9]+", {_ in 89}),
		CitronLexer.LexingRule.regexPattern("[0-9]+.[0-9]+|[0-9]+.|.[0-9]+[Ee]-?[0-9]+?[Ff]|[0-9]+[Ee]-?[0-9]+[Ff]", {_ in 90}),
		CitronLexer.LexingRule.regexPattern("[0-9]+.[0-9]+|[0-9]+.|.[0-9]+[Ee]-?[0-9]+?[Ll]|[0-9]+[Ee]-?[0-9]+[Ll]", {_ in 91}),
		CitronLexer.LexingRule.regexPattern("[123456789][0-9]*[Ll]", {_ in 79}),
		CitronLexer.LexingRule.regexPattern("0[01234567]*", {_ in 85}),
		CitronLexer.LexingRule.regexPattern("0[01234567]*[Ll]", {_ in 87}),
		CitronLexer.LexingRule.regexPattern("0[01234567]*ul|UL", {_ in 88}),
		CitronLexer.LexingRule.regexPattern("0[01234567]*[Uu]", {_ in 86}),
		CitronLexer.LexingRule.regexPattern("'\u[ABCDEFabcdef]|[0-9][ABCDEFabcdef]|[0-9][ABCDEFabcdef]|[0-9][ABCDEFabcdef]|[0-9]'", {_ in 92}),
		CitronLexer.LexingRule.regexPattern("[123456789][0-9]*[Uu]", {_ in 78}),
		CitronLexer.LexingRule.regexPattern("[123456789][0-9]*ul|UL", {_ in 80}),
		CitronLexer.LexingRule.regexPattern("//.*$", {_ in nil}),
		CitronLexer.LexingRule.regex(try! NSRegularExpression(pattern: "/*.*?*/", options: NSRegularExpression.Options.dotMatchesLineSeparators), {_ in nil}),
	])


	var grammar: DefaultGrammar = Grammar(recognizing: Symbol(id: 0))
	
	init() {
		grammar.addRule(lhs: Symbol(id: 0), rhs: [Symbol(id: 94), Symbol(id: 38), Symbol(id: 73), Symbol(id: 2), Symbol(id: 4)])
		grammar.addRule(lhs: Symbol(id: 0), rhs: [Symbol(id: 2), Symbol(id: 4)])
		grammar.addRule(lhs: Symbol(id: 1), rhs: [Symbol(id: 95), Symbol(id: 38), Symbol(id: 73)])
		grammar.addRule(lhs: Symbol(id: 1), rhs: [Symbol(id: 95), Symbol(id: 38), Symbol(id: 141), Symbol(id: 73)])
		grammar.addRule(lhs: Symbol(id: 2), rhs: [])
		grammar.addRule(lhs: Symbol(id: 2), rhs: [Symbol(id: 1), Symbol(id: 2)])
		grammar.addRule(lhs: Symbol(id: 3), rhs: [Symbol(id: 5), Symbol(id: 142), Symbol(id: 7), Symbol(id: 143)])
		grammar.addRule(lhs: Symbol(id: 4), rhs: [])
		grammar.addRule(lhs: Symbol(id: 4), rhs: [Symbol(id: 3), Symbol(id: 4)])
		grammar.addRule(lhs: Symbol(id: 5), rhs: [Symbol(id: 31), Symbol(id: 96), Symbol(id: 74)])
		grammar.addRule(lhs: Symbol(id: 5), rhs: [Symbol(id: 31), Symbol(id: 96), Symbol(id: 74), Symbol(id: 97), Symbol(id: 35)])
		grammar.addRule(lhs: Symbol(id: 5), rhs: [Symbol(id: 31), Symbol(id: 96), Symbol(id: 74), Symbol(id: 98), Symbol(id: 35)])
		grammar.addRule(lhs: Symbol(id: 5), rhs: [Symbol(id: 31), Symbol(id: 96), Symbol(id: 74), Symbol(id: 97), Symbol(id: 35), Symbol(id: 98), Symbol(id: 35)])
		grammar.addRule(lhs: Symbol(id: 5), rhs: [Symbol(id: 31), Symbol(id: 99), Symbol(id: 74)])
		grammar.addRule(lhs: Symbol(id: 5), rhs: [Symbol(id: 31), Symbol(id: 99), Symbol(id: 74), Symbol(id: 97), Symbol(id: 35)])
		grammar.addRule(lhs: Symbol(id: 5), rhs: [Symbol(id: 31), Symbol(id: 99), Symbol(id: 74), Symbol(id: 98), Symbol(id: 35)])
		grammar.addRule(lhs: Symbol(id: 5), rhs: [Symbol(id: 31), Symbol(id: 99), Symbol(id: 74), Symbol(id: 97), Symbol(id: 35), Symbol(id: 98), Symbol(id: 35)])
		grammar.addRule(lhs: Symbol(id: 6), rhs: [Symbol(id: 31), Symbol(id: 33), Symbol(id: 15), Symbol(id: 144)])
		grammar.addRule(lhs: Symbol(id: 6), rhs: [Symbol(id: 31), Symbol(id: 33), Symbol(id: 18), Symbol(id: 8)])
		grammar.addRule(lhs: Symbol(id: 6), rhs: [Symbol(id: 31), Symbol(id: 33), Symbol(id: 18), Symbol(id: 100), Symbol(id: 35), Symbol(id: 8)])
		grammar.addRule(lhs: Symbol(id: 6), rhs: [Symbol(id: 31), Symbol(id: 74), Symbol(id: 145), Symbol(id: 20), Symbol(id: 146), Symbol(id: 11)])
		grammar.addRule(lhs: Symbol(id: 6), rhs: [Symbol(id: 31), Symbol(id: 74), Symbol(id: 145), Symbol(id: 20), Symbol(id: 146), Symbol(id: 100), Symbol(id: 35), Symbol(id: 11)])
		grammar.addRule(lhs: Symbol(id: 6), rhs: [Symbol(id: 11)])
		grammar.addRule(lhs: Symbol(id: 6), rhs: [Symbol(id: 3)])
		grammar.addRule(lhs: Symbol(id: 7), rhs: [])
		grammar.addRule(lhs: Symbol(id: 7), rhs: [Symbol(id: 6), Symbol(id: 7)])
		grammar.addRule(lhs: Symbol(id: 8), rhs: [Symbol(id: 144)])
		grammar.addRule(lhs: Symbol(id: 8), rhs: [Symbol(id: 11)])
		grammar.addRule(lhs: Symbol(id: 9), rhs: [Symbol(id: 33), Symbol(id: 15), Symbol(id: 144)])
		grammar.addRule(lhs: Symbol(id: 9), rhs: [Symbol(id: 101), Symbol(id: 33), Symbol(id: 15), Symbol(id: 144)])
		grammar.addRule(lhs: Symbol(id: 9), rhs: [Symbol(id: 12)])
		grammar.addRule(lhs: Symbol(id: 10), rhs: [])
		grammar.addRule(lhs: Symbol(id: 10), rhs: [Symbol(id: 9), Symbol(id: 10)])
		grammar.addRule(lhs: Symbol(id: 11), rhs: [Symbol(id: 142), Symbol(id: 10), Symbol(id: 143)])
		grammar.addRule(lhs: Symbol(id: 12), rhs: [Symbol(id: 144)])
		grammar.addRule(lhs: Symbol(id: 12), rhs: [Symbol(id: 74), Symbol(id: 147)])
		grammar.addRule(lhs: Symbol(id: 12), rhs: [Symbol(id: 102), Symbol(id: 39), Symbol(id: 147)])
		grammar.addRule(lhs: Symbol(id: 12), rhs: [Symbol(id: 103), Symbol(id: 147)])
		grammar.addRule(lhs: Symbol(id: 12), rhs: [Symbol(id: 39), Symbol(id: 144)])
		grammar.addRule(lhs: Symbol(id: 12), rhs: [Symbol(id: 142), Symbol(id: 10), Symbol(id: 143)])
		grammar.addRule(lhs: Symbol(id: 12), rhs: [Symbol(id: 24)])
		grammar.addRule(lhs: Symbol(id: 12), rhs: [Symbol(id: 25)])
		grammar.addRule(lhs: Symbol(id: 12), rhs: [Symbol(id: 28)])
		grammar.addRule(lhs: Symbol(id: 12), rhs: [Symbol(id: 21)])
		grammar.addRule(lhs: Symbol(id: 13), rhs: [Symbol(id: 74)])
		grammar.addRule(lhs: Symbol(id: 13), rhs: [Symbol(id: 74), Symbol(id: 37)])
		grammar.addRule(lhs: Symbol(id: 14), rhs: [Symbol(id: 13), Symbol(id: 148), Symbol(id: 16)])
		grammar.addRule(lhs: Symbol(id: 14), rhs: [Symbol(id: 74)])
		grammar.addRule(lhs: Symbol(id: 15), rhs: [Symbol(id: 14)])
		grammar.addRule(lhs: Symbol(id: 15), rhs: [Symbol(id: 14), Symbol(id: 149), Symbol(id: 15)])
		grammar.addRule(lhs: Symbol(id: 16), rhs: [Symbol(id: 39)])
		grammar.addRule(lhs: Symbol(id: 16), rhs: [Symbol(id: 142), Symbol(id: 143)])
		grammar.addRule(lhs: Symbol(id: 16), rhs: [Symbol(id: 142), Symbol(id: 17), Symbol(id: 143)])
		grammar.addRule(lhs: Symbol(id: 17), rhs: [Symbol(id: 16)])
		grammar.addRule(lhs: Symbol(id: 17), rhs: [Symbol(id: 17), Symbol(id: 149), Symbol(id: 16)])
		grammar.addRule(lhs: Symbol(id: 17), rhs: [Symbol(id: 17), Symbol(id: 149)])
		grammar.addRule(lhs: Symbol(id: 18), rhs: [Symbol(id: 13), Symbol(id: 145), Symbol(id: 20), Symbol(id: 146)])
		grammar.addRule(lhs: Symbol(id: 18), rhs: [Symbol(id: 18), Symbol(id: 36)])
		grammar.addRule(lhs: Symbol(id: 19), rhs: [Symbol(id: 33), Symbol(id: 13)])
		grammar.addRule(lhs: Symbol(id: 19), rhs: [Symbol(id: 101), Symbol(id: 33), Symbol(id: 13)])
		grammar.addRule(lhs: Symbol(id: 20), rhs: [])
		grammar.addRule(lhs: Symbol(id: 20), rhs: [Symbol(id: 19)])
		grammar.addRule(lhs: Symbol(id: 20), rhs: [Symbol(id: 19), Symbol(id: 149), Symbol(id: 20)])
		grammar.addRule(lhs: Symbol(id: 21), rhs: [Symbol(id: 104), Symbol(id: 145), Symbol(id: 39), Symbol(id: 146), Symbol(id: 12), Symbol(id: 23)])
		grammar.addRule(lhs: Symbol(id: 21), rhs: [Symbol(id: 104), Symbol(id: 145), Symbol(id: 39), Symbol(id: 146), Symbol(id: 12), Symbol(id: 23), Symbol(id: 105), Symbol(id: 12)])
		grammar.addRule(lhs: Symbol(id: 21), rhs: [Symbol(id: 106), Symbol(id: 145), Symbol(id: 39), Symbol(id: 146), Symbol(id: 11)])
		grammar.addRule(lhs: Symbol(id: 22), rhs: [Symbol(id: 105), Symbol(id: 104), Symbol(id: 145), Symbol(id: 39), Symbol(id: 146), Symbol(id: 12)])
		grammar.addRule(lhs: Symbol(id: 23), rhs: [])
		grammar.addRule(lhs: Symbol(id: 23), rhs: [Symbol(id: 22), Symbol(id: 23)])
		grammar.addRule(lhs: Symbol(id: 24), rhs: [Symbol(id: 107), Symbol(id: 144)])
		grammar.addRule(lhs: Symbol(id: 24), rhs: [Symbol(id: 107), Symbol(id: 74), Symbol(id: 144)])
		grammar.addRule(lhs: Symbol(id: 24), rhs: [Symbol(id: 108), Symbol(id: 144)])
		grammar.addRule(lhs: Symbol(id: 24), rhs: [Symbol(id: 108), Symbol(id: 74), Symbol(id: 144)])
		grammar.addRule(lhs: Symbol(id: 24), rhs: [Symbol(id: 109), Symbol(id: 144)])
		grammar.addRule(lhs: Symbol(id: 24), rhs: [Symbol(id: 109), Symbol(id: 39), Symbol(id: 144)])
		grammar.addRule(lhs: Symbol(id: 24), rhs: [Symbol(id: 110), Symbol(id: 39), Symbol(id: 144)])
		grammar.addRule(lhs: Symbol(id: 25), rhs: [Symbol(id: 111), Symbol(id: 145), Symbol(id: 39), Symbol(id: 146), Symbol(id: 11)])
		grammar.addRule(lhs: Symbol(id: 25), rhs: [Symbol(id: 112), Symbol(id: 11), Symbol(id: 27)])
		grammar.addRule(lhs: Symbol(id: 25), rhs: [Symbol(id: 112), Symbol(id: 11), Symbol(id: 27), Symbol(id: 113), Symbol(id: 11)])
		grammar.addRule(lhs: Symbol(id: 26), rhs: [Symbol(id: 114), Symbol(id: 145), Symbol(id: 33), Symbol(id: 74), Symbol(id: 146), Symbol(id: 11)])
		grammar.addRule(lhs: Symbol(id: 26), rhs: [Symbol(id: 114), Symbol(id: 145), Symbol(id: 33), Symbol(id: 146), Symbol(id: 11)])
		grammar.addRule(lhs: Symbol(id: 27), rhs: [])
		grammar.addRule(lhs: Symbol(id: 27), rhs: [Symbol(id: 26), Symbol(id: 27)])
		grammar.addRule(lhs: Symbol(id: 28), rhs: [Symbol(id: 115), Symbol(id: 145), Symbol(id: 39), Symbol(id: 146), Symbol(id: 12)])
		grammar.addRule(lhs: Symbol(id: 28), rhs: [Symbol(id: 116), Symbol(id: 12), Symbol(id: 115), Symbol(id: 145), Symbol(id: 39), Symbol(id: 146)])
		grammar.addRule(lhs: Symbol(id: 28), rhs: [Symbol(id: 117), Symbol(id: 145), Symbol(id: 29), Symbol(id: 67), Symbol(id: 144), Symbol(id: 67), Symbol(id: 146), Symbol(id: 12)])
		grammar.addRule(lhs: Symbol(id: 29), rhs: [Symbol(id: 67), Symbol(id: 144)])
		grammar.addRule(lhs: Symbol(id: 29), rhs: [Symbol(id: 33), Symbol(id: 15), Symbol(id: 144)])
		grammar.addRule(lhs: Symbol(id: 29), rhs: [Symbol(id: 101), Symbol(id: 33), Symbol(id: 15), Symbol(id: 144)])
		grammar.addRule(lhs: Symbol(id: 30), rhs: [Symbol(id: 118)])
		grammar.addRule(lhs: Symbol(id: 30), rhs: [Symbol(id: 101)])
		grammar.addRule(lhs: Symbol(id: 30), rhs: [Symbol(id: 119)])
		grammar.addRule(lhs: Symbol(id: 30), rhs: [Symbol(id: 120)])
		grammar.addRule(lhs: Symbol(id: 30), rhs: [Symbol(id: 121)])
		grammar.addRule(lhs: Symbol(id: 30), rhs: [Symbol(id: 122)])
		grammar.addRule(lhs: Symbol(id: 30), rhs: [Symbol(id: 123)])
		grammar.addRule(lhs: Symbol(id: 30), rhs: [Symbol(id: 124)])
		grammar.addRule(lhs: Symbol(id: 30), rhs: [Symbol(id: 111)])
		grammar.addRule(lhs: Symbol(id: 30), rhs: [Symbol(id: 125)])
		grammar.addRule(lhs: Symbol(id: 31), rhs: [])
		grammar.addRule(lhs: Symbol(id: 31), rhs: [Symbol(id: 30), Symbol(id: 31)])
		grammar.addRule(lhs: Symbol(id: 32), rhs: [Symbol(id: 126)])
		grammar.addRule(lhs: Symbol(id: 32), rhs: [Symbol(id: 127)])
		grammar.addRule(lhs: Symbol(id: 32), rhs: [Symbol(id: 128)])
		grammar.addRule(lhs: Symbol(id: 32), rhs: [Symbol(id: 129)])
		grammar.addRule(lhs: Symbol(id: 32), rhs: [Symbol(id: 130)])
		grammar.addRule(lhs: Symbol(id: 32), rhs: [Symbol(id: 131)])
		grammar.addRule(lhs: Symbol(id: 32), rhs: [Symbol(id: 132)])
		grammar.addRule(lhs: Symbol(id: 32), rhs: [Symbol(id: 133)])
		grammar.addRule(lhs: Symbol(id: 33), rhs: [Symbol(id: 34), Symbol(id: 37)])
		grammar.addRule(lhs: Symbol(id: 33), rhs: [Symbol(id: 34)])
		grammar.addRule(lhs: Symbol(id: 34), rhs: [Symbol(id: 32)])
		grammar.addRule(lhs: Symbol(id: 34), rhs: [Symbol(id: 38)])
		grammar.addRule(lhs: Symbol(id: 35), rhs: [Symbol(id: 34)])
		grammar.addRule(lhs: Symbol(id: 35), rhs: [Symbol(id: 34), Symbol(id: 149), Symbol(id: 35)])
		grammar.addRule(lhs: Symbol(id: 36), rhs: [Symbol(id: 150)])
		grammar.addRule(lhs: Symbol(id: 37), rhs: [Symbol(id: 36)])
		grammar.addRule(lhs: Symbol(id: 37), rhs: [Symbol(id: 36), Symbol(id: 37)])
		grammar.addRule(lhs: Symbol(id: 38), rhs: [Symbol(id: 74)])
		grammar.addRule(lhs: Symbol(id: 38), rhs: [Symbol(id: 74), Symbol(id: 151), Symbol(id: 38)])
		grammar.addRule(lhs: Symbol(id: 39), rhs: [Symbol(id: 52), Symbol(id: 71), Symbol(id: 39)])
		grammar.addRule(lhs: Symbol(id: 39), rhs: [Symbol(id: 52), Symbol(id: 134), Symbol(id: 34)])
		grammar.addRule(lhs: Symbol(id: 40), rhs: [Symbol(id: 41), Symbol(id: 152), Symbol(id: 39), Symbol(id: 147), Symbol(id: 40)])
		grammar.addRule(lhs: Symbol(id: 41), rhs: [Symbol(id: 41), Symbol(id: 153), Symbol(id: 42)])
		grammar.addRule(lhs: Symbol(id: 42), rhs: [Symbol(id: 42), Symbol(id: 154), Symbol(id: 43)])
		grammar.addRule(lhs: Symbol(id: 43), rhs: [Symbol(id: 43), Symbol(id: 155), Symbol(id: 44)])
		grammar.addRule(lhs: Symbol(id: 44), rhs: [Symbol(id: 44), Symbol(id: 156), Symbol(id: 45)])
		grammar.addRule(lhs: Symbol(id: 45), rhs: [Symbol(id: 45), Symbol(id: 157), Symbol(id: 46)])
		grammar.addRule(lhs: Symbol(id: 46), rhs: [Symbol(id: 46), Symbol(id: 158), Symbol(id: 47)])
		grammar.addRule(lhs: Symbol(id: 46), rhs: [Symbol(id: 46), Symbol(id: 159), Symbol(id: 47)])
		grammar.addRule(lhs: Symbol(id: 47), rhs: [Symbol(id: 47), Symbol(id: 160), Symbol(id: 48)])
		grammar.addRule(lhs: Symbol(id: 47), rhs: [Symbol(id: 47), Symbol(id: 161), Symbol(id: 48)])
		grammar.addRule(lhs: Symbol(id: 47), rhs: [Symbol(id: 47), Symbol(id: 162), Symbol(id: 48)])
		grammar.addRule(lhs: Symbol(id: 47), rhs: [Symbol(id: 47), Symbol(id: 163), Symbol(id: 48)])
		grammar.addRule(lhs: Symbol(id: 48), rhs: [Symbol(id: 48), Symbol(id: 164), Symbol(id: 49)])
		grammar.addRule(lhs: Symbol(id: 48), rhs: [Symbol(id: 48), Symbol(id: 165), Symbol(id: 49)])
		grammar.addRule(lhs: Symbol(id: 48), rhs: [Symbol(id: 48), Symbol(id: 166), Symbol(id: 49)])
		grammar.addRule(lhs: Symbol(id: 49), rhs: [Symbol(id: 49), Symbol(id: 167), Symbol(id: 50)])
		grammar.addRule(lhs: Symbol(id: 49), rhs: [Symbol(id: 49), Symbol(id: 168), Symbol(id: 50)])
		grammar.addRule(lhs: Symbol(id: 50), rhs: [Symbol(id: 50), Symbol(id: 169), Symbol(id: 51)])
		grammar.addRule(lhs: Symbol(id: 50), rhs: [Symbol(id: 50), Symbol(id: 170), Symbol(id: 51)])
		grammar.addRule(lhs: Symbol(id: 50), rhs: [Symbol(id: 50), Symbol(id: 171), Symbol(id: 51)])
		grammar.addRule(lhs: Symbol(id: 51), rhs: [Symbol(id: 145), Symbol(id: 32), Symbol(id: 146), Symbol(id: 51)])
		grammar.addRule(lhs: Symbol(id: 51), rhs: [Symbol(id: 145), Symbol(id: 39), Symbol(id: 146), Symbol(id: 53)])
		grammar.addRule(lhs: Symbol(id: 51), rhs: [Symbol(id: 145), Symbol(id: 38), Symbol(id: 37), Symbol(id: 146), Symbol(id: 51)])
		grammar.addRule(lhs: Symbol(id: 52), rhs: [Symbol(id: 70), Symbol(id: 51)])
		grammar.addRule(lhs: Symbol(id: 52), rhs: [Symbol(id: 172), Symbol(id: 52)])
		grammar.addRule(lhs: Symbol(id: 52), rhs: [Symbol(id: 173), Symbol(id: 52)])
		grammar.addRule(lhs: Symbol(id: 53), rhs: [Symbol(id: 53), Symbol(id: 172)])
		grammar.addRule(lhs: Symbol(id: 53), rhs: [Symbol(id: 53), Symbol(id: 173)])
		grammar.addRule(lhs: Symbol(id: 54), rhs: [Symbol(id: 57)])
		grammar.addRule(lhs: Symbol(id: 54), rhs: [Symbol(id: 59)])
		grammar.addRule(lhs: Symbol(id: 54), rhs: [Symbol(id: 62)])
		grammar.addRule(lhs: Symbol(id: 54), rhs: [Symbol(id: 63)])
		grammar.addRule(lhs: Symbol(id: 54), rhs: [Symbol(id: 69)])
		grammar.addRule(lhs: Symbol(id: 54), rhs: [Symbol(id: 77)])
		grammar.addRule(lhs: Symbol(id: 55), rhs: [Symbol(id: 58)])
		grammar.addRule(lhs: Symbol(id: 56), rhs: [Symbol(id: 38)])
		grammar.addRule(lhs: Symbol(id: 57), rhs: [Symbol(id: 135)])
		grammar.addRule(lhs: Symbol(id: 57), rhs: [Symbol(id: 136)])
		grammar.addRule(lhs: Symbol(id: 57), rhs: [Symbol(id: 137)])
		grammar.addRule(lhs: Symbol(id: 58), rhs: [Symbol(id: 138), Symbol(id: 34), Symbol(id: 64)])
		grammar.addRule(lhs: Symbol(id: 58), rhs: [Symbol(id: 138), Symbol(id: 34), Symbol(id: 64), Symbol(id: 142), Symbol(id: 7), Symbol(id: 143)])
		grammar.addRule(lhs: Symbol(id: 58), rhs: [Symbol(id: 138), Symbol(id: 34), Symbol(id: 66)])
		grammar.addRule(lhs: Symbol(id: 58), rhs: [Symbol(id: 138), Symbol(id: 34), Symbol(id: 66), Symbol(id: 142), Symbol(id: 143)])
		grammar.addRule(lhs: Symbol(id: 58), rhs: [Symbol(id: 138), Symbol(id: 34), Symbol(id: 66), Symbol(id: 142), Symbol(id: 17), Symbol(id: 143)])
		grammar.addRule(lhs: Symbol(id: 59), rhs: [Symbol(id: 38), Symbol(id: 174), Symbol(id: 39), Symbol(id: 175)])
		grammar.addRule(lhs: Symbol(id: 59), rhs: [Symbol(id: 60), Symbol(id: 174), Symbol(id: 39), Symbol(id: 175)])
		grammar.addRule(lhs: Symbol(id: 60), rhs: [Symbol(id: 145), Symbol(id: 39), Symbol(id: 146)])
		grammar.addRule(lhs: Symbol(id: 60), rhs: [Symbol(id: 61)])
		grammar.addRule(lhs: Symbol(id: 60), rhs: [Symbol(id: 57)])
		grammar.addRule(lhs: Symbol(id: 61), rhs: [Symbol(id: 69)])
		grammar.addRule(lhs: Symbol(id: 61), rhs: [Symbol(id: 59)])
		grammar.addRule(lhs: Symbol(id: 61), rhs: [Symbol(id: 62)])
		grammar.addRule(lhs: Symbol(id: 61), rhs: [Symbol(id: 63)])
		grammar.addRule(lhs: Symbol(id: 62), rhs: [Symbol(id: 38), Symbol(id: 64)])
		grammar.addRule(lhs: Symbol(id: 62), rhs: [Symbol(id: 61), Symbol(id: 64)])
		grammar.addRule(lhs: Symbol(id: 62), rhs: [Symbol(id: 57), Symbol(id: 64)])
		grammar.addRule(lhs: Symbol(id: 63), rhs: [Symbol(id: 60), Symbol(id: 151), Symbol(id: 74)])
		grammar.addRule(lhs: Symbol(id: 63), rhs: [Symbol(id: 58), Symbol(id: 151), Symbol(id: 74)])
		grammar.addRule(lhs: Symbol(id: 63), rhs: [Symbol(id: 38), Symbol(id: 176)])
		grammar.addRule(lhs: Symbol(id: 63), rhs: [Symbol(id: 38), Symbol(id: 177)])
		grammar.addRule(lhs: Symbol(id: 63), rhs: [Symbol(id: 32), Symbol(id: 177)])
		grammar.addRule(lhs: Symbol(id: 64), rhs: [Symbol(id: 145), Symbol(id: 67), Symbol(id: 146)])
		grammar.addRule(lhs: Symbol(id: 65), rhs: [Symbol(id: 174), Symbol(id: 39), Symbol(id: 175)])
		grammar.addRule(lhs: Symbol(id: 66), rhs: [Symbol(id: 65)])
		grammar.addRule(lhs: Symbol(id: 66), rhs: [Symbol(id: 65), Symbol(id: 66)])
		grammar.addRule(lhs: Symbol(id: 67), rhs: [])
		grammar.addRule(lhs: Symbol(id: 67), rhs: [Symbol(id: 39)])
		grammar.addRule(lhs: Symbol(id: 67), rhs: [Symbol(id: 39), Symbol(id: 149), Symbol(id: 67)])
		grammar.addRule(lhs: Symbol(id: 39), rhs: [Symbol(id: 68)])
		grammar.addRule(lhs: Symbol(id: 68), rhs: [Symbol(id: 40)])
		grammar.addRule(lhs: Symbol(id: 40), rhs: [Symbol(id: 41)])
		grammar.addRule(lhs: Symbol(id: 41), rhs: [Symbol(id: 42)])
		grammar.addRule(lhs: Symbol(id: 42), rhs: [Symbol(id: 43)])
		grammar.addRule(lhs: Symbol(id: 43), rhs: [Symbol(id: 44)])
		grammar.addRule(lhs: Symbol(id: 44), rhs: [Symbol(id: 45)])
		grammar.addRule(lhs: Symbol(id: 45), rhs: [Symbol(id: 46)])
		grammar.addRule(lhs: Symbol(id: 46), rhs: [Symbol(id: 47)])
		grammar.addRule(lhs: Symbol(id: 47), rhs: [Symbol(id: 48)])
		grammar.addRule(lhs: Symbol(id: 48), rhs: [Symbol(id: 49)])
		grammar.addRule(lhs: Symbol(id: 49), rhs: [Symbol(id: 50)])
		grammar.addRule(lhs: Symbol(id: 50), rhs: [Symbol(id: 51)])
		grammar.addRule(lhs: Symbol(id: 51), rhs: [Symbol(id: 52)])
		grammar.addRule(lhs: Symbol(id: 52), rhs: [Symbol(id: 53)])
		grammar.addRule(lhs: Symbol(id: 53), rhs: [Symbol(id: 54)])
		grammar.addRule(lhs: Symbol(id: 54), rhs: [Symbol(id: 55)])
		grammar.addRule(lhs: Symbol(id: 55), rhs: [Symbol(id: 56)])
		grammar.addRule(lhs: Symbol(id: 56), rhs: [Symbol(id: 145), Symbol(id: 39), Symbol(id: 146)])
		grammar.addRule(lhs: Symbol(id: 69), rhs: [Symbol(id: 75)])
		grammar.addRule(lhs: Symbol(id: 69), rhs: [Symbol(id: 93)])
		grammar.addRule(lhs: Symbol(id: 69), rhs: [Symbol(id: 92)])
		grammar.addRule(lhs: Symbol(id: 69), rhs: [Symbol(id: 78)])
		grammar.addRule(lhs: Symbol(id: 69), rhs: [Symbol(id: 79)])
		grammar.addRule(lhs: Symbol(id: 69), rhs: [Symbol(id: 80)])
		grammar.addRule(lhs: Symbol(id: 69), rhs: [Symbol(id: 81)])
		grammar.addRule(lhs: Symbol(id: 69), rhs: [Symbol(id: 82)])
		grammar.addRule(lhs: Symbol(id: 69), rhs: [Symbol(id: 83)])
		grammar.addRule(lhs: Symbol(id: 69), rhs: [Symbol(id: 84)])
		grammar.addRule(lhs: Symbol(id: 69), rhs: [Symbol(id: 85)])
		grammar.addRule(lhs: Symbol(id: 69), rhs: [Symbol(id: 86)])
		grammar.addRule(lhs: Symbol(id: 69), rhs: [Symbol(id: 87)])
		grammar.addRule(lhs: Symbol(id: 69), rhs: [Symbol(id: 88)])
		grammar.addRule(lhs: Symbol(id: 69), rhs: [Symbol(id: 89)])
		grammar.addRule(lhs: Symbol(id: 69), rhs: [Symbol(id: 90)])
		grammar.addRule(lhs: Symbol(id: 69), rhs: [Symbol(id: 91)])
		grammar.addRule(lhs: Symbol(id: 69), rhs: [Symbol(id: 76)])
		grammar.addRule(lhs: Symbol(id: 69), rhs: [Symbol(id: 139)])
		grammar.addRule(lhs: Symbol(id: 69), rhs: [Symbol(id: 140)])
		grammar.addRule(lhs: Symbol(id: 69), rhs: [Symbol(id: 76)])
		grammar.addRule(lhs: Symbol(id: 69), rhs: [Symbol(id: 75)])
		grammar.addRule(lhs: Symbol(id: 70), rhs: [Symbol(id: 167)])
		grammar.addRule(lhs: Symbol(id: 70), rhs: [Symbol(id: 168)])
		grammar.addRule(lhs: Symbol(id: 70), rhs: [Symbol(id: 178)])
		grammar.addRule(lhs: Symbol(id: 70), rhs: [Symbol(id: 179)])
		grammar.addRule(lhs: Symbol(id: 71), rhs: [Symbol(id: 148)])
		grammar.addRule(lhs: Symbol(id: 71), rhs: [Symbol(id: 180)])
		grammar.addRule(lhs: Symbol(id: 71), rhs: [Symbol(id: 181)])
		grammar.addRule(lhs: Symbol(id: 71), rhs: [Symbol(id: 182)])
		grammar.addRule(lhs: Symbol(id: 71), rhs: [Symbol(id: 183)])
		grammar.addRule(lhs: Symbol(id: 71), rhs: [Symbol(id: 184)])
		grammar.addRule(lhs: Symbol(id: 71), rhs: [Symbol(id: 185)])
		grammar.addRule(lhs: Symbol(id: 71), rhs: [Symbol(id: 186)])
		grammar.addRule(lhs: Symbol(id: 71), rhs: [Symbol(id: 187)])
		grammar.addRule(lhs: Symbol(id: 71), rhs: [Symbol(id: 188)])
		grammar.addRule(lhs: Symbol(id: 71), rhs: [Symbol(id: 189)])
		grammar.addRule(lhs: Symbol(id: 71), rhs: [Symbol(id: 190)])
		grammar.addRule(lhs: Symbol(id: 72), rhs: [Symbol(id: 144)])
		grammar.addRule(lhs: Symbol(id: 73), rhs: [])
		grammar.addRule(lhs: Symbol(id: 73), rhs: [Symbol(id: 72), Symbol(id: 73)])
	
	}
	
	
	let cats: [Int : String] = [
		64 : "Args",
		59 : "ArrAcc",
		17 : "ArrayInits",
		71 : "Assignment_op",
		32 : "BasicType",
		11 : "Body",
		36 : "BracketsOpt",
		26 : "Catch",
		5 : "ClassHeader",
		69 : "Constant",
		13 : "DeclaratorName",
		65 : "DimExpr",
		22 : "ElseIfStm",
		39 : "Exp",
		63 : "FieldAcc",
		6 : "FieldDeclaration",
		29 : "ForInit",
		25 : "GuardStm",
		1 : "Import",
		28 : "IterStm",
		24 : "JumpStm",
		9 : "LVarStatement",
		8 : "MethodBody",
		18 : "MethodDecl",
		30 : "Modifier",
		62 : "MthCall",
		58 : "NewAlloc",
		19 : "Parameter",
		0 : "ProgramFile",
		21 : "SelectionStm",
		72 : "Semi",
		60 : "SpecExp",
		61 : "SpecExpNP",
		57 : "SpecName",
		12 : "Stm",
		3 : "TypeDeclaration",
		34 : "TypeName",
		33 : "TypeSpec",
		70 : "Unary_operator",
		14 : "VarDecl",
		16 : "VariableInits",
		75 : "Double",
		83 : "HexLong",
		84 : "HexUnsLong",
		82 : "HexUnsigned",
		81 : "Hexadecimal",
		74 : "Ident",
		76 : "Integer",
		93 : "JChar",
		89 : "JDouble",
		90 : "JFloat",
		91 : "JLongDouble",
		79 : "Long",
		85 : "Octal",
		87 : "OctalLong",
		88 : "OctalUnsLong",
		86 : "OctalUnsigned",
		77 : "String",
		92 : "UnicodeChar",
		78 : "Unsigned",
		80 : "UnsignedLong",
		37 : "[BracketsOpt]",
		27 : "[Catch]",
		66 : "[DimExpr]",
		23 : "[ElseIfStm]",
		67 : "[Exp]",
		7 : "[FieldDeclaration]",
		2 : "[Import]",
		10 : "[LVarStatement]",
		31 : "[Modifier]",
		20 : "[Parameter]",
		73 : "[Semi]",
		4 : "[TypeDeclaration]",
		35 : "[TypeName]",
		15 : "[VarDecl]",
		38 : "[Ident]",
		68 : "Exp1",
		40 : "Exp2",
		41 : "Exp3",
		42 : "Exp4",
		43 : "Exp5",
		44 : "Exp6",
		45 : "Exp7",
		46 : "Exp8",
		47 : "Exp9",
		48 : "Exp10",
		49 : "Exp11",
		50 : "Exp12",
		51 : "Exp13",
		52 : "Exp14",
		53 : "Exp15",
		54 : "Exp16",
		55 : "Exp17",
		56 : "Exp18",
	]
	
	let terminals: [Int : String] = [
		179 : "!",
		159 : "!=",
		171 : "%",
		182 : "%=",
		157 : "&",
		154 : "&&",
		188 : "&=",
		145 : "(",
		146 : ")",
		169 : "*",
		180 : "*=",
		167 : "+",
		172 : "++",
		183 : "+=",
		149 : ",",
		168 : "-",
		173 : "--",
		184 : "-=",
		151 : ".",
		141 : ".*",
		177 : ".class",
		176 : ".this",
		170 : "/",
		181 : "/=",
		147 : ":",
		144 : ";",
		160 : "<",
		164 : "<<",
		185 : "<<=",
		162 : "<=",
		148 : "=",
		158 : "==",
		161 : ">",
		163 : ">=",
		165 : ">>",
		186 : ">>=",
		166 : ">>>",
		187 : ">>>=",
		152 : "?",
		174 : "[",
		150 : "[]",
		175 : "]",
		156 : "^",
		189 : "^=",
		118 : "abstract",
		133 : "boolean",
		107 : "break",
		132 : "byte",
		102 : "case",
		114 : "catch",
		126 : "char",
		96 : "class",
		108 : "continue",
		103 : "default",
		116 : "do",
		131 : "double",
		105 : "else",
		97 : "extends",
		140 : "false",
		101 : "final",
		113 : "finally",
		130 : "float",
		117 : "for",
		104 : "if",
		98 : "implements",
		95 : "import",
		134 : "instanceof",
		128 : "int",
		99 : "interface",
		129 : "long",
		124 : "native",
		138 : "new",
		137 : "null",
		94 : "package",
		121 : "private",
		120 : "protected",
		119 : "public",
		109 : "return",
		127 : "short",
		125 : "static",
		135 : "super",
		106 : "switch",
		111 : "synchronized",
		136 : "this",
		110 : "throw",
		100 : "throws",
		122 : "transient",
		139 : "true",
		112 : "try",
		123 : "volatile",
		115 : "while",
		142 : "{",
		155 : "|",
		190 : "|=",
		153 : "||",
		143 : "}",
		178 : "~",
	]


	public func runProgramFileParser(input: String) throws -> Forest<Int16> {
		var recognizer: Recognizer<Int16> = Recognizer(PreprocessedGrammar(grammar))
		var tokens: [Int16] = []
		try lexer.tokenize(input, onFound: {(token) in tokens.append(token)})
		for (i,s) in tokens.enumerated() {
			recognizer.discover(Symbol(id: s), startingAt: UInt32(i))
		}
		return recognizer.forest
	}

}
