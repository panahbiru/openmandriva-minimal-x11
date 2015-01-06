#!/bin/bash
#	OpenMandriva Lx Minimal X11 
#
##########################################################

LOGFILE='/var/log/omdv-minimal-x11.log'
ARCH=$(uname -i)

echo "Remove repository"
urpmi.removemedia -a > $LOGFILE

echo "Add personal Repo"
urpmi.addmedia personal http://repo.unnes.ac.id/repo2/openmandriva > $LOGFILE

echo "Install X11, xterm, omv-minsysreqs"
urpmi task-x11 xterm omv-minsysreqs > $LOGFILE

echo "Launch draklive install"
/usr/sbin/draklive-install && startx > $LOGFILE

echo "Add distrib media"
urpmi.addmedia --distrib http://kambing.ui.ac.id/unitylinux/openmandriva2014.0/repository/$ARCH > $LOGFILE

echo "Reboot"
reboot