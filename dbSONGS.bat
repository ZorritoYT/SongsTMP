taskkill /f /im dlc.exe /t
taskkill /f /im "dlc.exe *32" /t
@echo off & color a
setlocal enabledelayedexpansion
if %1=="" exit
set locate=%1
set reproducing=666
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
if not exist "laresaka-supermerk2.mp3" "%locate%\batbox" /c 0x4 /d " 1) laresaka-supermerk2 (Requiere download)"
if exist "laresaka-supermerk2.mp3" "%locate%\batbox" /c 0xa /d " 1) laresaka-supermerk2"
echo.
if not exist "MegalovaniaPianoCover.mp3" "%locate%\batbox" /c 0x4 /d " 2) Megalovania Undertale (Piano Cover) [Requiere download]"
if exist "MegalovaniaPianoCover.mp3" "%locate%\batbox" /c 0xa /d " 2) Megalovania Undertale (Piano Cover)"
echo.
if not exist "Laur-Sound-Chimera.mp3" "%locate%\batbox" /c 0x4 /d " 3) Laur - Sound Chimera [Requiere download]"
if exist "Laur-Sound-Chimera.mp3" "%locate%\batbox" /c 0xa /d " 3) Laur - Sound Chimera"
echo.
if not exist "DeadToMe.mp3" "%locate%\batbox" /c 0x4 /d " 4) Dead To Me (feat. Lox Chatterbox)"
if exist "DeadToMe.mp3" "%locate%\batbox" /c 0xa /d " 4) Dead To Me (feat. Lox Chatterbox)"
echo.
echo.
set/p input="SongsDB/> "
if "%input%"=="return" goto :eof
if "%input%"=="stop" goto endS
if exist "laresaka-supermerk2.mp3" if "%input%"=="1" start dlc -w -p "laresaka-supermerk2.mp3"
if not exist "laresaka-supermerk2.mp3" if "%input%"=="1" wget https://github.com/ZorritoYT/SongsTMP/raw/main/laresaka-supermerk2.mp3 & del /q .wget-hsts & start dlc -w -p "laresaka-supermerk2.mp3"

if exist "MegalovaniaPianoCover.mp3" if "%input%"=="2" start dlc -w -p "MegalovaniaPianoCover.mp3"
if not exist "MegalovaniaPianoCover.mp3" if "%input%"=="2" wget https://github.com/ZorritoYT/SongsTMP/raw/main/MegalovaniaPianoCover.mp3 & del /q .wget-hsts & start dlc -w -p "MegalovaniaPianoCover.mp3"

if exist "Laur-Sound-Chimera.mp3" if "%input%"=="3" start dlc -w -p "Laur-Sound-Chimera.mp3"
if not exist "Laur-Sound-Chimera.mp3" if "%input%"=="3" wget https://github.com/ZorritoYT/SongsTMP/raw/main/Laur-Sound-Chimera.mp3 & del /q .wget-hsts & start dlc -w -p "Laur-Sound-Chimera.mp3"

if exist "DeadToMe.mp3" if "%input%"=="4" start dlc -w -p "DeadToMe.mp3" & start /b cmdbkg "%locate%\Files\Sounds\DeadToMe.bmp" 1
if not exist "DeadToMe.mp3" if "%input%"=="4" wget https://github.com/ZorritoYT/SongsTMP/raw/main/DeadToMe.mp3 & wget https://github.com/ZorritoYT/SongsTMP/raw/main/DeadToMe.bmp & del /q .wget-hsts & start dlc -w -p "DeadToMe.mp3" & start /b cmdbkg "%locate%\Files\Sounds\DeadToMe.bmp" 1
goto loop

:endS
taskkill /f /im dlc.exe /t
taskkill /f /im "dlc.exe *32" /t
goto loop
