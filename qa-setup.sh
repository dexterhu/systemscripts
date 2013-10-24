#!/bin/bash
sudo apt-get -y install software-properties-common
wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sudo apt-get update
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get -y install jenkins curl python maven subversion git xvfb htop maven
sudo apt-get -y install oracle-java7-installer

