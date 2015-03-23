# -*- coding: utf-8 -*-

require_relative "./siam.rb"

def main(a)
  begin
    input = ANTLR3::StringStream.new(a)
    lexer = Siam::Lexer.new(input)
    tokens = ANTLR3::CommonTokenStream.new(lexer)
    siam_parser = Siam::Parser.new(tokens)
    siam_parser.compilationUnit
  rescue
    puts "rescue"
  end
end
