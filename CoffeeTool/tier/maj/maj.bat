@echo off
setlocal

set USERNAME=pausecoffee
set REPO=CoffeeTool
set API_URL=https://api.github.com/repos/%USERNAME%/%REPO%/releases/latest

for /f "tokens=*" %%i in ('curl -s %API_URL% ^| findstr /C:"tag_name"') do set VERSION=%%i

set VERSION=%VERSION:~12,-1%

echo La dernière version de %REPO% est : %VERSION%

endlocal
pause