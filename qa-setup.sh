#!/bin/bash
sudo locale-gen en_US.UTF-8
locale -a
sudo apt-get -y install software-properties-common
wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get -y install jenkins curl python maven subversion git xvfb htop maven
sudo apt-get -y install oracle-java7-installer
sudo update-java-alternatives -s java-7-oracle

# Ubuntu change dash to bash
sudo dpkg-reconfigure dash

# Ubuntu Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -p /tmp
sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb
sudo apt-get -f install
