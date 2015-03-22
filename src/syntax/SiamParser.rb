#!/usr/bin/env ruby
#
# /Users/tattsun/Dropbox/work/src/github.com/tattsun/siam/syntax/Siam.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: /Users/tattsun/Dropbox/work/src/github.com/tattsun/siam/syntax/Siam.g
# Generated at: 2015-03-23 05:43:42
#

# ~~~> start load path setup
this_directory = File.expand_path( File.dirname( __FILE__ ) )
$LOAD_PATH.unshift( this_directory ) unless $LOAD_PATH.include?( this_directory )

antlr_load_failed = proc do
  load_path = $LOAD_PATH.map { |dir| '  - ' << dir }.join( $/ )
  raise LoadError, <<-END.strip!

Failed to load the ANTLR3 runtime library (version 1.10.0):

Ensure the library has been installed on your system and is available
on the load path. If rubygems is available on your system, this can
be done with the command:

  gem install antlr3

Current load path:
#{ load_path }

  END
end

defined?( ANTLR3 ) or begin

  # 1: try to load the ruby antlr3 runtime library from the system path
  require 'antlr3'

rescue LoadError

  # 2: try to load rubygems if it isn't already loaded
  defined?( Gem ) or begin
    require 'rubygems'
  rescue LoadError
    antlr_load_failed.call
  end

  # 3: try to activate the antlr3 gem
  begin
    defined?( gem ) and gem( 'antlr3', '~> 1.10.0' )
  rescue Gem::LoadError
    antlr_load_failed.call
  end

  require 'antlr3'

end
# <~~~ end load path setup

module Siam
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all
  # ANTLR-generated recognizers.
  const_defined?( :TokenData ) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens( :EOF => -1, :INT => 4, :WS => 5 )


    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "INT", "WS" )


  end


  class Parser < ANTLR3::Parser
    @grammar_home = Siam
    include ANTLR3::ASTBuilder

    RULE_METHODS = [ :compilationUnit ].freeze

    include TokenData

    begin
      generated_using( "/Users/tattsun/Dropbox/work/src/github.com/tattsun/siam/syntax/Siam.g", "3.5", "1.10.0" )
    rescue NoMethodError => error
      # ignore
    end

    def initialize( input, options = {} )
      super( input, options )
    end
    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -
    CompilationUnitReturnValue = define_return_scope

    #
    # parser rule compilationUnit
    #
    # (in /Users/tattsun/Dropbox/work/src/github.com/tattsun/siam/syntax/Siam.g)
    # 12:1: compilationUnit : INT ;
    #
    def compilationUnit
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )


      return_value = CompilationUnitReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      root_0 = nil

      __INT1__ = nil


      tree_for_INT1 = nil

      begin
      root_0 = @adaptor.create_flat_list


      # at line 13:9: INT
      __INT1__ = match( INT, TOKENS_FOLLOWING_INT_IN_compilationUnit_59 )
      tree_for_INT1 = @adaptor.create_with_payload( __INT1__ )
      @adaptor.add_child( root_0, tree_for_INT1 )



      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      return_value.tree = @adaptor.rule_post_processing( root_0 )
      @adaptor.set_token_boundaries( return_value.tree, return_value.start, return_value.stop )


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node( @input, return_value.start, @input.look(-1), re )


      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 1 )


      end

      return return_value
    end



    TOKENS_FOLLOWING_INT_IN_compilationUnit_59 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0

end
