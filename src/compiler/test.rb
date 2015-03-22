# -*- coding: utf-8 -*-

require_relative "./siam.rb"

def main
  input = ANTLR3::FileStream.new(ARGV[0])
  lexer = Siam::Lexer.new(input)
  tokens = ANTLR3::CommonTokenStream.new(lexer)
  siam_parser = Siam::Parser.new(tokens)
  puts siam_parser.compilationUnit.inspect
end

main
#
#
