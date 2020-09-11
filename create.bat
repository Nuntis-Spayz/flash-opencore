REM -------------------------------------------------
REM Create Flash-OpenCore.exe
REM ------------------------------------ v.2020-09-11
REM sabers.amazer.uk -------- (C)MMXX AMAZER-PROJECTS

REM VERSION NUMBER
REM -------------------------------------
set FWVERSION=1.9.16-20200903

set FWCOPYRIGHT=(C)MMXX %date%
SET FWDESCRIPTION=Open-Core Flasher (OpenCore.1.9.16_20200903_beta_uploader)
set FWCOMPANY=GPL 3.0
set FWWEBSITE=http://sabers.amazer.uk -- v.%FWVERSION% -- %date% (%time%)

del /F /Q Installer.7z
del /F /Q Flash-OpenCore.%FWVERSION%.exe
sleep 2

7zr a -r -y -t7z -mx=9 Installer.7z .\files\*.*
sleep 2

copy /b 7zS.sfx + config.txt + Installer.7z Flash-OpenCore.exe
sleep 2

verpatch.exe Flash-OpenCore.exe "%FWVERSION%" /pv "%FWVERSION%" /s ProductName "Open-Core Saber Flasher" /s CompanyName "%FWCOMPANY%"  /s LegalCopyright "%FWCOPYRIGHT%" /s FileDescription "%FWDESCRIPTION%" /sc "%FWWEBSITE%" /va
sleep 2

ren Flash-OpenCore.exe Flash-OpenCore.%FWVERSION%.exe

exit
