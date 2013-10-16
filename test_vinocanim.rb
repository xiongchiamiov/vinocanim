#!/usr/bin/env ruby
# encoding: utf-8

# May you recognize your weaknesses and share your strengths.
# May you share freely, never taking more than you give.
# May you find love and love everyone you find.

require 'test/unit'
require 'stringio'

require './vinocanim'

class TestVinocanim < Test::Unit::TestCase
    def test_character
        $stdout = (capture = StringIO.new)
        w = Character.new
        w.balloon "Hai~"
        w.balloon "What's your name?"
        $stdout = STDOUT
        
        capture.rewind
        assert_equal(%Q{
actor, {id = w},
actor, {id: 'w', balloon: "Hai~"},
actor, {id: 'w', balloon: "What's your name?"},
                     }.strip, capture.read)
    end
end

