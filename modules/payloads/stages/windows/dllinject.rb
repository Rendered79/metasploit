##
# $Id: dllinject.rb 5773 2008-10-19 21:03:39Z ramon $
##

##
# This file is part of the Metasploit Framework and may be subject to 
# redistribution and commercial restrictions. Please see the Metasploit
# Framework web site for more information on licensing and terms of use.
# http://metasploit.com/projects/Framework/
##


require 'msf/core'
require 'msf/core/payload/windows/dllinject'


###
#
# Injects an arbitrary DLL in the exploited process.
#
###
module Metasploit3

	include Msf::Payload::Windows::DllInject

end