##
# $Id: wifun.rb 5949 2008-11-18 20:00:31Z hdm $
##

##
# This file is part of the Metasploit Framework and may be subject to 
# redistribution and commercial restrictions. Please see the Metasploit
# Framework web site for more information on licensing and terms of use.
# http://metasploit.com/projects/Framework/
##


require 'msf/core'


class Metasploit3 < Msf::Auxiliary

	include Msf::Exploit::Lorcon
	include Msf::Auxiliary::Dos

	def initialize(info = {})
		super(update_info(info,	
			'Name'           => 'Wireless Test Module',
			'Description'    => %q{
				This module is a test of the wireless packet injection system.
			Please see external/ruby-lorcon/README for more information.
			},
			
			'Author'         => [ 'hdm' ],
			'License'        => MSF_LICENSE,
			'Version'        => '$Revision: 5949 $'
		))			
	end

	def run
		open_wifi
		wifi.write("X" * 1000)
	end

end
