module Msf
  module Ui
    module Gtk2

      TITLE = 'Metasploit Framework'
      DESCRIPTION = 'A cross-platform GUI interface for the Metasploit Framework.'
      COPYRIGHT = 'Copyright (C) 2006-2008 Metasploit LLC'
      AUTHORS = [
        'Fabrice MOURRON <fab@metasploit.com>',
        'H D Moore <hdm@metasploit.com>',
      ]
      DOCUMENTERS = [
        'Nobody :-)'
      ]
      ARTISTS = [
        'Fabrice MOURRON <fab@metasploit.com>',
		"H D Moore <hdm@metasploit.com>",
		"BRUTE <brute@bruteprop.com>",		
		"Anonymous",
      ]
      LIST = 'framework-subscribe@metasploit.com'
      BUGREPORT_URL = 'http://metasploit.com/dev/trac/report/9'
      WEBSITE_URL = 'http://metasploit3.com'
      VERSION = "v#{Msf::Framework::Version}"

      #
      # The log source used by the gtk2 service.
      #
      LogSource = "msfgui"

    end
  end
end

require 'msf/ui/gtk2/driver'