@echo off
title CoffeeTool

:menu
cls
echo ================================
echo CoffeeTool
echo ================================
echo 0. Quit
echo 1. Install/Uninstall/Update Spicetify (Spotify va se close).
echo 2. Troll
echo ================================
set /p choix="Choisissez une option : "

if "%choix%"=="0" exit
if "%choix%"=="1" goto spicetify
if "%choix%"=="2" goto troll

echo Option invalide.
pause
goto menu

:spicetify
taskkill /IM spotify.exe /F
start tier\spicetify\choix-spicetify.bat
goto menu

:troll
start tier\troll\exe-troll.bat
goto menu