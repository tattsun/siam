#!/usr/bin/env ruby
#
# /Users/tattsun/Dropbox/work/src/github.com/tattsun/siam/syntax/Siam.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: /Users/tattsun/Dropbox/work/src/github.com/tattsun/siam/syntax/Siam.g
# Generated at: 2015-03-23 05:43:43
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

  end


  class Lexer < ANTLR3::Lexer
    @grammar_home = Siam
    include TokenData

    begin
      generated_using( "/Users/tattsun/Dropbox/work/src/github.com/tattsun/siam/syntax/Siam.g", "3.5", "1.10.0" )
    rescue NoMethodError => error
      # ignore
    end

    RULE_NAMES   = [ "INT", "WS" ].freeze
    RULE_METHODS = [ :int!, :ws! ].freeze

    def initialize( input=nil, options = {} )
      super( input, options )
    end


    # - - - - - - - - - - - lexer rules - - - - - - - - - - - -
    # lexer rule int! (INT)
    # (in /Users/tattsun/Dropbox/work/src/github.com/tattsun/siam/syntax/Siam.g)
    def int!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )



      type = INT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 17:9: ( '0' .. '9' )+
      # at file 17:9: ( '0' .. '9' )+
      match_count_1 = 0
      while true
        alt_1 = 2
        look_1_0 = @input.peek( 1 )

        if ( look_1_0.between?( 0x30, 0x39 ) )
          alt_1 = 1

        end
        case alt_1
        when 1
          # at line 
          if @input.peek( 1 ).between?( 0x30, 0x39 )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse

          end



        else
          match_count_1 > 0 and break
          eee = EarlyExit(1)


          raise eee
        end
        match_count_1 += 1
      end




      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 1 )


    end

    # lexer rule ws! (WS)
    # (in /Users/tattsun/Dropbox/work/src/github.com/tattsun/siam/syntax/Siam.g)
    def ws!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )



      type = WS
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 20:9: ( ' ' | '\\r' | '\\t' | '\\n' )
      if @input.peek( 1 ).between?( 0x9, 0xa ) || @input.peek(1) == 0xd || @input.peek(1) == 0x20
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse

      end



      # --> action
      channel=HIDDEN;
      # <-- action



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 2 )


    end

    # main rule used to study the input at the current position,
    # and choose the proper lexer rule to call in order to
    # fetch the next token
    #
    # usually, you don't make direct calls to this method,
    # but instead use the next_token method, which will
    # build and emit the actual next token
    def token!
      # at line 1:8: ( INT | WS )
      alt_2 = 2
      look_2_0 = @input.peek( 1 )

      if ( look_2_0.between?( 0x30, 0x39 ) )
        alt_2 = 1
      elsif ( look_2_0.between?( 0x9, 0xa ) || look_2_0 == 0xd || look_2_0 == 0x20 )
        alt_2 = 2
      else
        raise NoViableAlternative( "", 2, 0 )

      end
      case alt_2
      when 1
        # at line 1:10: INT
        int!


      when 2
        # at line 1:14: WS
        ws!


      end
    end

  end # class Lexer < ANTLR3::Lexer

  at_exit { Lexer.main( ARGV ) } if __FILE__ == $0

end
