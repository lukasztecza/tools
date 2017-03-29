#!/bin/bash

#LIGHT DEV ENV

#after getting lubuntu minimal installation from
#https://help.ubuntu.com/community/Lubuntu/Documentation/MinimalInstall
#and installing lubuntu-desktop, standard-system-utilities

# install vim, curl, filezilla, chromium, virtualbox, vagrant, php and composer
sudo apt-get update
sudo apt-get install -y vim curl filezilla chromium-browser virtualbox vagrant php-cli git composer

# install skype and adobre reader
sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
sudo apt-get update
sudo apt-get install -y skype adobereader-enu
sudo add-apt-repository -r "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
