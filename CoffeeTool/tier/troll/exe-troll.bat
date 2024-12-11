@echo off
echo ================================
echo CoffeeTool
echo ================================
set /p choix=Voulez-vous vraiment ouvrir troll (O/N)? 

if /i "%choix%"=="O" (
    echo Troll en cours...
    call "tier\troll\troll.bat"
    exit /b
) else if /i "%choix%"=="N" (
    echo Vous pouvez fermer cette page.
    exit /b
) else (
    echo Choix invalide. Veuillez entrer O ou N.
    exit /b
)