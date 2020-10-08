#!/bin/bash
clear
echo ""
echo --------------------------------------
echo OpenCore Saber Updater
echo --------------------------------------
Echo "$(dirname "$BASH_SOURCE")"
cd "$(dirname "$BASH_SOURCE")"
echo ""
echo --------------------------------------
if [ $# -eq 0 ]
then
echo Uploading OpenCore.1.9.17_20200930.hex
echo --------------------------------------
echo ""
./tycmd upload OpenCore.1.9.17_20200930.hex

else
echo Uploading $1
echo --------------------------------------
echo ""
./tycmd upload $1

fi

read -n 1 -r -s -p $'Press enter to continue...\n'
osascript -e 'tell application "Terminal" to quit'
exit
