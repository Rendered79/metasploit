##
# $Id: generic.rb 5773 2008-10-19 21:03:39Z ramon $
##

##
# This file is part of the Metasploit Framework and may be subject to 
# redistribution and commercial restrictions. Please see the Metasploit
# Framework web site for more information on licensing and terms of use.
# http://metasploit.com/projects/Framework/
##


require 'msf/core'
require 'msf/core/handler/find_shell'
require 'msf/base/sessions/command_shell'


module Metasploit3

	include Msf::Payload::Single

	def initialize(info = {})
		super(merge_info(info,
			'Name'          => 'Unix Command, Generic command execution',
			'Version'       => '$Revision: 5773 $',
			'Description'   => 'Executes the supplied command',
			'Author'        => 'hdm',
			'License'       => MSF_LICENSE,
			'Platform'      => 'unix',
			'Arch'          => ARCH_CMD,
			'Handler'       => Msf::Handler::None,
			'Session'       => Msf::Sessions::CommandShell,
			'PayloadType'   => 'cmd',
			'Payload'       =>
				{
					'Offsets' => { },
					'Payload' => ''
				}
			))

		register_options(
			[
				OptString.new('CMD', [ true, "The command string to execute" ]),
			], self.class)
	end

	#
	# Constructs the payload
	#
	def generate
		return super + command_string
	end
	
	#
	# Returns the command string to use for execution
	#
	def command_string
		return datastore['CMD'] || ''
	end

end