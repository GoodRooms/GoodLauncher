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
set /p selection="Select an Option:"
if %selection% == 1 start join.bat
if %selection% == 2 start host.bat
if %selection% == 3 start avatar_editor.bat
