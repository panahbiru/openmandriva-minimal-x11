#!/bin/bash
#
###########################################################
#	OpenMandriva Lx Minimal X11 
#	(c) 2015 Luthfi Emka <panahbiru[at]gmail[dot]com>
#	License: GPL
#
##########################################################

LOGFILE='/var/log/omdv-minimal-x11.log'
ARCH=$(uname -i)

echo "Remove repository"
urpmi.removemedia -a > $LOGFILE

echo "Add personal Repo"
urpmi.addmedia personal http://repo.unnes.ac.id/repo2/openmandriva

echo "Install X11, xterm, omv-minsysreqs"
urpmi --no-verify-rpm task-x11 xterm omv-minsysreqs draklive-install-no-kdm

echo "Add distrib media"
urpmi.addmedia --distrib http://kambing.ui.ac.id/unitylinux/openmandriva2014.0/repository/$ARCH

echo "Launch draklive install"
startx | /usr/sbin/draklive-install

echo "Reboot"
reboot