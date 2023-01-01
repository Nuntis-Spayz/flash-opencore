REM -------------------------------------------------
REM Create Flash-OpenCore.exe
REM ------------------------------------ v.2020-10-08
REM lamadiluce.it ------- (C)MMXXII Polaris Open Core

REM VERSION NUMBER
REM -------------------------------------
set FWVERSION=2.2.7_20220916

set FWCOPYRIGHT=(C)MMXXIII %date%
SET FWDESCRIPTION=Open-Core Flasher (OpenCore.%FWVERSION%.hex) -- %date% (%time%)
set FWCOMPANY=GPL 3.0
set FWWEBSITE=http://lamadiluce.it

del /F /Q Installer.7z
del /F /Q Flash-OpenCore.%FWVERSION%.exe
sleep 2

7zr a -r -y -t7z -mx=9 Installer.7z .\files\*.hex .\files\*.exe .\files\*.cmd 
sleep 2

copy /b 7zS.sfx + config.txt + Installer.7z Flash-OpenCore.exe
sleep 2

verpatch.exe Flash-OpenCore.exe "%FWVERSION%" /pv "%FWVERSION%" /s ProductName "Open-Core Saber Flasher" /s CompanyName "%FWCOMPANY%"  /s LegalCopyright "%FWCOPYRIGHT%" /s FileDescription "%FWDESCRIPTION%" /sc "%FWWEBSITE%" /va
sleep 2

ren Flash-OpenCore.exe Flash-OpenCore.%FWVERSION%.exe

del /F /Q Installer.7z
 
exit
