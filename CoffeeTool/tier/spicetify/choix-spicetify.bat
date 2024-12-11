@echo off
:menu
echo ================================
echo CoffeeTool
echo ================================
echo 1. Install Spicetify
echo 2. Uninstall Spicetify
echo 3. Update Spicetify
echo 4. Quitter
set /p choix="Entrez votre choix : "

if "%choix%"=="1" (
    echo Install de Spicetify.
    taskkill /IM spotify.exe /F
    start tier\spicetify\spicetify-install-info.txt
    call "tier\spicetify\exe-install-spicetify.bat"
    exit /b
) else if "%choix%"=="2" (
    echo Uninstall de Spicetify.
    taskkill /IM spotify.exe /F
    call "tier\spicetify\exe-uninstall-spicetify.bat"
    exit /b
) else if "%choix%"=="3" (
    echo Update de Spicetify.
    taskkill /IM spotify.exe /F
    call "tier\spicetify\exe-update-spicetify.bat"
    exit /b
) else if "%choix%"=="4" (
    echo Au revoir.
    exit /b
) else (
    echo Choix invalide.
    goto menu
)

exit