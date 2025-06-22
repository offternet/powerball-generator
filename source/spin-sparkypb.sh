#!/bin/bash

fkey=$(($RANDOM * $$))

export iconsDir="/home/yadbash/sparkypb/icons"

yad2 --on-top  --undecorated --width=100 --height=80  --center --no-buttons --html --disable-search --user-style=URI --uri="/home/yadbash/sparkypb/source/gif.html" & 

sleep 2

killall yad2
