require 'test/unit'

class Grammar < Test::Unit::TestCase
  GRAMMAR_TESTCASES = []

  class << self
    def startup
      Dir[File.expand_path("example") << "/*.siam"].each do |path|
        GRAMMAR_TESTCASES.push(path)
      end
    end
  end

  test "parse" do
    GRAMMAR_TESTCASES.each do |file|
      assert_nothing_raised do
        input = ANTLR3::FileStream.new(file)
        lexer = Siam::Lexer.new(input)
        tokens = ANTLR3::CommonTokenStream.new(lexer)
        Siam::Parser.new(tokens)
      end
    end
  end

end
