@echo off
title !!! WARNUNG !!!
color 4C
mode con: cols=60 lines=10

:: Versteckt den Cursor
echo Set WshShell = WScript.CreateObject("WScript.Shell") > temp.vbs
echo WshShell.SendKeys^{NUMLOCK} >> temp.vbs
cscript //nologo temp.vbs
del temp.vbs

:: Endlos-Schleife
:loop
:: Fensterfarbe ändern für Flackereffekt
color 4C
timeout /t 1 /nobreak >nul
color 0C
timeout /t 1 /nobreak >nul

:: Nachricht anzeigen
msg * "Achtung! Dein PC ist mit einem Virus infiziert! 😱"

:: Piepton abspielen
echo ^(Console.Beep(1000,500)^) > sound.vbs
wscript sound.vbs
del sound.vbs

:: Maus bewegen für Grusel-Effekt
echo Set objMouse = CreateObject("WScript.Shell") > move.vbs
echo Do >> move.vbs
echo objMouse.SendKeys "{LEFT}" >> move.vbs
echo objMouse.SendKeys "{RIGHT}" >> move.vbs
echo Loop >> move.vbs
start move.vbs

goto loop
