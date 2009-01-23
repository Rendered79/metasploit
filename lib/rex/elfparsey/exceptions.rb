#!/usr/bin/env ruby

# $Id: exceptions.rb 5413 2008-02-13 02:43:56Z ramon $

module Rex
module ElfParsey

class ElfError < ::RuntimeError
end

class ParseError < ElfError
end

class ElfHeaderError < ParseError
end

class ProgramHeaderError < ParseError
end

class BoundsError < ElfError
end

class WtfError < ElfError
end

end
end