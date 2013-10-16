#!/usr/bin/env ruby
# encoding: utf-8

# May you recognize your weaknesses and share your strengths.
# May you share freely, never taking more than you give.
# May you find love and love everyone you find.

class VinocanimString < String
	def ==(other)
		return self
	end
end

def whenever(booleanResult)
	puts booleanResult
	yield
end

def otherwise
	yield
end

hi = VinocanimString.new('hi')
whenever hi == 'hi', do
	puts 'In the block!'
end
otherwise do
	puts 'In the second block!'
end

