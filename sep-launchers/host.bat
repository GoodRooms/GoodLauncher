@echo off
title GoodRooms "Host" Service
color 2
echo.
echo Drop The Map You will use for Server
echo.
set /p Map=
echo Put the Port you will use in the server
set /p Port=

cd content
cls


ping localhost -n 1 >NUL
echo dofile('rbxasset://host.lua') >server.lua
ping localhost -n 1 >NUL
ping localhost -n 1 >NUL


echo Port = %Port% >host.lua
echo Server =  game:GetService("NetworkServer") >>host.lua
echo HostService = game:GetService("RunService")Server:Start(Port,20) >>host.lua
echo game:GetService("RunService"):Run() >>host.lua
echo print("Rowritten server started!") >>host.lua
echo function onJoined(NewPlayer) >>host.lua
echo print("New player found: "..NewPlayer.Name.."") >>host.lua
echo NewPlayer:LoadCharacter(true) >>host.lua
echo while wait() do >>host.lua
echo if NewPlayer.Character.Humanoid.Health == 0 then >>host.lua
echo wait(5) >>host.lua
echo NewPlayer:LoadCharacter(true)>>host.lua
echo elseif NewPlayer.Character.Parent  == nil then >>host.lua
echo wait(5) >>host.lua
echo NewPlayer:LoadCharacter(true) >>host.lua
echo end >>host.lua
echo end >>host.lua
echo end >>host.lua
echo game.Players.PlayerAdded:connect(onJoined) >>host.lua
cd ..
start GoodRoomsApp.exe %map% -script  "wait(); dofile('rbxasset://server.lua') dofile('rbxasset://FixAssetLinks.lua')"
exit