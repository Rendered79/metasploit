#!/usr/bin/env ruby

# $Id: exceptions.rb 5871 2008-11-10 21:18:12Z hdm $

module Rex
module PeParsey

class PeError < ::RuntimeError
end

class ParseError < PeError
end

class DosHeaderError < ParseError
end

class FileHeaderError < ParseError
end

class OptionalHeaderError < ParseError
end

class BoundsError < PeError
end

class WtfError < PeError
end

class SkipError < PeError
end

end end
