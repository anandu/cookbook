maintainer       "SYM"
maintainer_email "anandu@gmail.com"
license          "All rights reserved"
description      "Installs/Configures ntp"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.0.1"
recipe "ntpcb::ntp", "My first recipe, Installs/Configures ntp"
recipe "ntpcb::cront", "Installs/Configures cRon"
recipe "ntpcb::motds", "Welcomes the user"

attribute "cront/tempdir",
  :display_name => "Temp dir location",
  :description => "The location of swap file.  Defaults to '/swapfile'.",
  :type => "string",
  :default => "/tmp",
  :recipes => [ "ntpcb::cront"]
