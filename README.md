# flash-opencore-builder

## Builds a Self-Extracting Formware Flasher (Windows or Mac OS)

This archive builds a self-extracting firmware flasher for Open Core 
Sabers (using teensy technology), see https://github.com/LamaDiLuce/polaris-opencore 
for the firmware which this software is primarily designed to work with.

### Windows
  1) Place the .hex file in the files folder
  2) edit the upload.cmd in the files folder to reference the named .hex file
  3) edit the config.txt file to reference the named hex file or version number
  4) edit the create.bat file to reference the correct version number
  5) run the create.bat file to build a self-extracting installer

###MAC OS
  1) Place the .hex file in the files folder
  2) edit the upload-macos.command in the files folder to reference the named .hex file
  3) edit build-mac-flasher.command to reference the named hex file or version number
  4) run the build-mac-flasher.command to builf the Mac OS DMG redistributable
     if the command file does not run you will need to set the executable permission chmod +x *.command in terminal
