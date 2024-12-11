@echo off
title CoffeeTool

:menu
cls
echo ================================
echo CoffeeTool
echo ================================
echo 0. Quit
echo 1. MAJ CoffeeTool
echo 2. Install/Uninstall/Update Spicetify (Spotify va se close).
echo 3. Troll
echo ================================
set /p choix="Choisissez une option : "

if "%choix%"=="0" exit
if "%choix%"=="0" goto maj
if "%choix%"=="2" goto spicetify
if "%choix%"=="3" goto troll

echo Option invalide.
pause
goto menu

:maj
start tier\maj\exe-maj.bat
goto menu

:spicetify
taskkill /IM spotify.exe /F
start tier\spicetify\choix-spicetify.bat
goto menu

:troll
start tier\troll\exe-troll.bat
goto menu