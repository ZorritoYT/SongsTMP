if %1=="" exit
set locate=%1
@echo off & color a
title SongDB
mode 120,30
cd "%locate%\Files\Sounds"
cls
echo.
echo Escribe el numero de la cancion a descargar
echo.
echo Tambien puedes escribir "return" para salir
echo.
echo 1) laresaka-supermerk2
echo.
set/p input="SongsDB/> "
if "%input%"==return exit
if exist "laresaka-supermerk2.mp3" start dlc -w -p "laresaka-supermerk2.mp3"
if not exist "laresaka-supermerk2.mp3" if "%input%"==1 "%locate%\wget" https://github.com/ZorritoYT/SongsTMP/raw/main/laresaka-supermerk2.mp3
exit
