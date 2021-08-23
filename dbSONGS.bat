taskkill /f /im dlc.exe /t
taskkill /f /im "dlc.exe *32" /t
@echo off & color e
setlocal enabledelayedexpansion
if %1=="" exit
set locate=%1
set reproducing=666
start /b ..\cmdbkg background\Black.bmp 33
:loop
title SongDB
mode 120,30
color e
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
if not exist "DeadToMe.mp3" "%locate%\batbox" /c 0x4 /d " 4) Dead To Me (feat. Lox Chatterbox) [Requiere download]"
if exist "DeadToMe.mp3" "%locate%\batbox" /c 0xa /d " 4) Dead To Me (feat. Lox Chatterbox)"
echo.
if not exist "SunFlower.mp3" "%locate%\batbox" /c 0x4 /d " 5) Post Malone, Swae Lee - Sunflower [Requiere download]"
if exist "SunFlower.mp3" "%locate%\batbox" /c 0xa /d " 5) Post Malone, Swae Lee - Sunflower"
echo.
if not exist "Ghost.mp3" "%locate%\batbox" /c 0x4 /d " 6) Krewella - Ghost [Requiere download]"
if exist "Ghost.mp3" "%locate%\batbox" /c 0xa /d " 6) Krewella - Ghost"
echo.
if not exist "XD.mp3" "%locate%\batbox" /c 0x4 /d " 7) XD [Requiere download]"
if exist "XD.mp3" "%locate%\batbox" /c 0xa /d " 7) XD"
echo.
if not exist "LinkinPark-InTheEnd.mp3" "%locate%\batbox" /c 0x4 /d " 8) Linkin Park - In The End [Requiere download]"
if exist "LinkinPark-InTheEnd.mp3" "%locate%\batbox" /c 0xa /d " 8) Linkin Park - In The End"
echo.
if not exist "MamichulaTrueno.mp3" "%locate%\batbox" /c 0x4 /d " 9) Trueno & Nicki Nicole - Mamichula [Requiere download]"
if exist "MamichulaTrueno.mp3" "%locate%\batbox" /c 0xa /d " 9) Trueno & Nicki Nicole - Mamichula"
echo.
if not exist "SenpaiSana.mp3" "%locate%\batbox" /c 0x4 /d " a) Senpai. - Sana [Requiere download]"
if exist "SenpaiSana.mp3" "%locate%\batbox" /c 0xa /d " a) Senpai. - Sana"
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

if exist "DeadToMe.mp3" if exist "DeadToMe.bmp" if "%input%"=="4" start dlc -w -p "DeadToMe.mp3" & start /b ../cmdbkg DeadToMe.bmp 33
if not exist "DeadToMe.bmp" if "%input%"=="4" wget https://github.com/ZorritoYT/SongsTMP/raw/main/DeadToMe.bmp & del /q .wget-hsts
if not exist "DeadToMe.mp3" if "%input%"=="4" wget https://github.com/ZorritoYT/SongsTMP/raw/main/DeadToMe.mp3 & del /q .wget-hsts

if exist "SunFlower.mp3" if "%input%"=="5" start dlc -w -p "SunFlower.mp3" & start /b ../cmdbkg SunFlower.bmp 33
if not exist "SunFlower.bmp" if "%input%"=="5" wget https://github.com/ZorritoYT/SongsTMP/raw/main/SunFlower.bmp & del /q .wget-hsts
if not exist "SunFlower.mp3" if "%input%"=="5" wget https://github.com/ZorritoYT/SongsTMP/raw/main/SunFlower.mp3 & del /q .wget-hsts

if exist "Ghost.mp3" if "%input%"=="6" start dlc -w -p "Ghost.mp3" & start /b ../cmdbkg Ghost.bmp 33
if not exist "Ghost.bmp" if "%input%"=="6" wget https://github.com/ZorritoYT/SongsTMP/raw/main/Ghost.bmp & del /q .wget-hsts
if not exist "Ghost.mp3" if "%input%"=="6" wget https://github.com/ZorritoYT/SongsTMP/raw/main/Ghost.mp3 & del /q .wget-hsts

if exist "XD.mp3" if "%input%"=="7" start dlc -w -p "XD.mp3" & start /b ../cmdbkg xd.bmp 33
if not exist "xd.bmp" if "%input%"=="7" wget https://github.com/ZorritoYT/SongsTMP/raw/main/xd.bmp & del /q .wget-hsts
if not exist "XD.mp3" if "%input%"=="7" wget https://github.com/ZorritoYT/SongsTMP/raw/main/XD.mp3 & del /q .wget-hsts

if exist "LinkinPark-InTheEnd.mp3" if "%input%"=="8" start dlc -w -p "LinkinPark-InTheEnd.mp3" & start /b ../cmdbkg LinkinPark-InTheEnd.bmp 33
if not exist "LinkinPark-InTheEnd.bmp" if "%input%"=="8" wget "https://github.com/ZorritoYT/SongsTMP/raw/main/LinkinPark-InTheEnd.bmp" & del /q .wget-hsts
if not exist "LinkinPark-InTheEnd.mp3" if "%input%"=="8" wget "https://github.com/ZorritoYT/SongsTMP/raw/main/LinkinPark-InTheEnd.mp3" & del /q .wget-hsts

if exist "MamichulaTrueno.mp3" if "%input%"=="9" start dlc -w -p "MamichulaTrueno.mp3" & start /b ../cmdbkg MamichulaTrueno.bmp 33
if not exist "MamichulaTrueno.bmp" if "%input%"=="9" wget https://github.com/ZorritoYT/SongsTMP/raw/main/MamichulaTrueno.bmp & del /q .wget-hsts
if not exist "MamichulaTrueno.mp3" if "%input%"=="9" wget https://github.com/ZorritoYT/SongsTMP/raw/main/MamichulaTrueno.mp3 & del /q .wget-hsts

if exist "SenpaiSana.mp3" if "%input%"=="a" start dlc -w -p "SenpaiSana.mp3" & start /b ../cmdbkg SenpaiSana.bmp 33
if not exist "SenpaiSana.bmp" if "%input%"=="a" wget https://github.com/ZorritoYT/SongsTMP/raw/main/SenpaiSana.bmp & del /q .wget-hsts
if not exist "SenpaiSana.mp3" if "%input%"=="a" wget https://github.com/ZorritoYT/SongsTMP/raw/main/SenpaiSana.mp3 & del /q .wget-hsts
goto loop

:endS
taskkill /f /im dlc.exe /t
taskkill /f /im "dlc.exe *32" /t
goto loop
