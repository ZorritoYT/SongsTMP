taskkill /f /im dlc.exe /t
taskkill /f /im "dlc.exe *32" /t
@echo off & color a
setlocal enabledelayedexpansion
if %1=="" exit
set locate=%1
:loop
title SongDB
mode 120,30
cd "%locate%\Files\Sounds"
cls
echo.
echo Escribe el numero de la cancion a descargar
echo.
echo Commandos : return(salir) stop(Detener musica)
echo.
echo 1) laresaka-supermerk2
echo.
set/p input="SongsDB/> "
if "%input%"=="return" exit
if "%input%"=="stop" goto endS
if exist "laresaka-supermerk2.mp3" start dlc -w -p "laresaka-supermerk2.mp3"
if not exist "laresaka-supermerk2.mp3" if "%input%"=="1" wget https://github.com/ZorritoYT/SongsTMP/raw/main/laresaka-supermerk2.mp3 & del /q .wget-hsts & start dlc -w -p "laresaka-supermerk2.mp3"
goto loop

:endS
taskkill /f /im dlc.exe /t
taskkill /f /im "dlc.exe *32" /t
goto loop
