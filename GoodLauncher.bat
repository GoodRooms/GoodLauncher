@echo off
color 0a
:menu
cls
title GoodLauncher
echo Welcome to GoodLauncher, GoodLauncher is a Alternative to GoodRooms Integrated Batch Launchers, 
echo You can run Whole batch launchers in one only
echo 1) Join a Server
echo 2) Host a Server
echo 3) Avatar Editor
echo 4) Help
echo 5) Play Solo
set /p selection="Select an Option:"
if %selection% == 1 start join.bat
if %selection% == 2 start host.bat
if %selection% == 3 start avatar_editor.bat
if %selection% == 4 goto help
if %selection% == 5 goto playsolo
:help
cls
title GoodLauncher Help Center
echo If you need Help, Email GoodRooms at
echo info@goodrooms.cf
echo Type 1 to return to Homepage
set /p return="Return to Homepage:"
if %return% == 1 goto menu
:playsolo
cls
title GoodLauncher Play Solo
echo you can play Solo by Running this piece of script
echo First you need to put the place you will run in Play Solo Mode
set /p place="Locate a Place from your Computer:"
echo Setting up...
echo local player = game.Players:CreateLocalPlayer(0) >>PlaySolo.lua
echo player:LoadCharacter() >>PlaySolo.lua
start GoodRoomsApp.exe %script% /content/PlaySolo.lua
