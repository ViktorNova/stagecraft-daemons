#!/usr/bin/bash

# Path is the directory that contains all the scripts you want to run on boot
DAEMONS_PATH="/home/n0va/Dev/stagecraft-daemons/daemons"

# Run every script in the folder
for script in $DAEMONS_PATH/*
  do
    #export script=$script
    script=$script ./diy-daemon.sh &
  done
