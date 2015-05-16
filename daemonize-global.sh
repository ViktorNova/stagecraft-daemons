#!/bin/bash

# Path is the directory that contains all the scripts you want to run on boot
PATH="~/SYSTEM/GLOBAL/DAEMONS"

# Run every script in the folder
for SCRIPT in /path/to/scripts/dir/*
  do
	  if [ -f $SCRIPT -a -x $SCRIPT ]
		then
			$SCRIPT
		fi
	done
