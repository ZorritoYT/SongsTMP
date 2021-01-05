if %1=="" exit
set locate=%1
@echo off & color a
title SongDB
mode 120,30
set 1=laresaka-supermerk2.mp3
set 1x=https://github.com/ZorritoYT/SongsTMP/raw/main/laresaka-supermerk2.mp3
cd "%locate%"
cls
echo.
echo Escribe el numero de la cancion a descargar
echo.
echo Tambien puedes escribir "return" para salir
echo.
echo 1) laresaka-supermerk2
echo.
set/p input="SongsDB/> "
if "%input%"==1 
