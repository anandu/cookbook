maintainer       "SYM"
maintainer_email "anandu@gmail.com"
license          "All rights reserved"
description      "Installs/Configures ntp"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.0.1"
recipe "ntpcb::ntp", "My first recipe, Installs/Configures ntp"
recipe "ntpcb::cront", "Installs/Configures cRon"
recipe "ntpcb::motds", "Welcomes the user"
