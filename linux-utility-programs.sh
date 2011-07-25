#!/bin/bash
#===============================================================================
#
#          FILE:  linux-utility-programs.sh
# 
#         USAGE:  ./linux-utility-programs.sh 
# 
#   DESCRIPTION:  a list of small yet necessary utility programs to installed on ubuntu
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Dexter H. Hu (), hyhu@cs.hku.hk
#       COMPANY:  HKU CS
#       VERSION:  1.0
#       CREATED:  03/09/2011 08:21:40 PM HKT
#      REVISION:  ---
#===============================================================================

# boost c++
#sudo apt-get install libboost
# install from GUI please

# build deb ubuntu package
sudo apt-get install --yes build-essential devscripts ubuntu-dev-tools debhelper dh_make diff patch cdbs quilt gnupg fakeroot lintian pbuilder

# matlab R gnuplot python matplotlib
sudo apt-get install r-base
sudo apt-get install r-base-dev
sudo apt-get build-dep r-cran-*
sudo apt-get install python-rpy2
sudo add-apt-repository ppa:scitools/ppa
sudo apt-get install gnuplot gnuplot-x11 python-gnuplot python-scitools python-pip python-matplotlib* python-scipy python-scientific python-gnuplot python-vtk python-pyx python-pmw blt libdx4-dev dx grace ecryptfs-utils rar

sudo add-apt-repository ppa:fkrull/deadsnakes
sudo apt-get update
sudo apt-get install python2.5


# erlang, ocaml
sudo apt-get install erlang-base

# Chinese language support

# financial softwares:
#cruisecontrol jcyclone glazedlists Marketcetera Platform quantlib jTDS Hibernate QuickFIX/J Engine +


# development
sudo apt-get install --yes subversion git maven2 ant cvs glipper
sudo apt-get install --yes bzr-builddeb ubuntu-dev-tools fakeroot build-essential gnupg pbuilder debhelper 
sudo apt-get install meld 
sudo apt-get install valgrind doxygen graphviz
sudo apt-get install vim vim-full vim-scripts vim-doc vim-latexsuite
sudo apt-get install exuberant-ctags cscope gdb cgdb kdbg ddd
sudo apt-get install vim-python vim-scripts vim-addon-manager terminator

# Java
sudo add-apt-repository ppa:sun-java-community-team/sun-java6
sudo apt-get update
sudo apt-get install --yes sun-java6-jdk sun-java6-jre sun-java6-plugin
update-java-alternatives -s java-6-sun


# large memory support PAE
#


# research writing, academic papers
sudo apt-get install --yes mendeleydesktop kile gnuplot dia ctags python-matplotlib mencoder
sudo apt-get install --yes acroread

# system monitoring, profiling, small utilities, performance
sudo apt-get install --yes --no-install-recommends sysprof-module-source
htop atop nmon sysstat mon bwm-ng
sudo apt-get install wireshark strace 
sudo apt-get install --yes curl iotop x86info auditd dstat hdparm traceroute tcptraceroute ipython iptraf lynx-cur arp-scan nautilus-open-terminal nmap pdsh fping npt rcconf bum startupmanager axel autocutsel meld realpath xclip
sudo apt-get install sysv-rc-conf rcconf
sudo apt-get install prelink preload system-config-kickstart

# ubuntu gnome 
sudo apt-get install ubuntutweak

# entertainment multimedia
sudo apt-get install youtube-dl

# email 
#sudo apt-get install postfix mailutils
#sudo apt-get install courier-pop
#sudo apt-get install courier-imap

# Internet & Privacy & Security
# use google chrome please, not chromium
sudo apt-get install --yes privoxy tor vidalia ntop iftop tcptrack vnstat pktstat iperf conntrack conntrackd echoping
sudo apt-get install openssh-server openssh-client knockd
# apache httpd

# s
sudo add-apt-repository ppa:abogani/ppa
sudo apt-get install linux-rt

sudo apt-get install beep sysstat netperf util-linux bonnie


sudo add-apt-repository ppa:tldm217/tahutek.net
sudo apt-get update
sudo apt-get install apt-fast

# linux source code, c library source code
sudo apt-get source libc6 linux-source
sudo apt-get install linux-kernel-devel fakeroot kernel-wedge build-essential makedumpfile schedutils

sudo apt-get install fakeroot build-essential
sudo apt-get install crash kexec-tools makedumpfile kernel-wedge
sudo apt-get build-dep linux
sudo apt-get install git-core libncurses5 libncurses5-dev
sudo apt-get install libelf-dev libdw-dev asciidoc binutils-dev

sudo apt-get install ubuntu-restricted-extras
sudo apt-get install compizconfig-settings-manager
sudo apt-get install cheese

sudo apt-get install apache2 php5 mysql-server libapache2-mod-auth-mysql php5-mysql
sudo apt-get install vsftpd
