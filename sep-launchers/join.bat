@echo off
title GoodRooms Servers
color 2
echo.
set /p server_ip="Server Adress: "
echo.
set /p server_port="Server Port: "
echo.
set /p username="Username pls: "

cls

echo game:GetService('NetworkClient'):PlayerConnect(0,'%server_ip%',%server_port%) >>content/join.lua
echo 	player.Name = "%username%"  >>content/join.lua

echo joining server %server_ip%, port %server_port% as %username%

start GoodRoomsApp.exe -build -script "wait(); dofile('rbxasset://play.lua')"
exit