#!/bin/bash
version=2.0.0_20201217_beta

clear
echo "--------------------------------------------"
echo " OpenCore Saber Updater - v.$version"
echo "--------------------------------------------"
echo "$(dirname "$BASH_SOURCE")"
cd "$(dirname "$BASH_SOURCE")"
echo "--------------------------------------------"
echo ""
echo "..."
./tycmd list
echo ""
echo The above list is all the compatible devices
echo connected to your Computer.
echo An Anima-Evo saber should be listed as a Teensy 3.1
echo board.
echo ""
echo "If there is more than one, (Teensy 3.1 or 3.2) remove the "
echo "non-saber devices before continuing. (Answer 'No' and re-run)"
echo ""
echo Flashing the saber firmware is done entirely at 
echo your own risk.
echo ""
echo Are You Sure you want to flash the firmware? [Y/N]

read command
case $command in
  Y|y) 
if [ $# -eq 0 ]
then
echo "Uploading OpenCore.$version.hex"
echo "--------------------------------------------"
echo ""
./tycmd upload OpenCore.$version.hex

else
echo Uploading $1
echo "--------------------------------------------"
echo ""
./tycmd upload $1

fi
     ;;
  *) echo "Update Cancelled"
esac

echo ""
echo "-------------------------------"
echo "Press  cmd-W  to close Terminal"
echo "-------------------------------"
echo ""    
exit 0
