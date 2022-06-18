@echo off
del /s /q "content\character.lua"
title GoodRooms Wardrobe
color 2
cd content
title GoodRooms Wardrobe 

cls
title Username
set /p Username="Username: "
echo.
title Head Color
set /p Head="Head Color: "
echo.
title Torso Color
set /p Torso="Torso Color: "
echo.
title Arm Color
set /p RArm="Right Arm color: "
set /p LArm="Left Arm Colorcolor: "
echo.
title Leg Color
set /p RLeg="Right Leg color: "
set /p LLeg="Left Leg color: "
echo.
title T shirt
echo.
echo If you set the input blank, you wont get a t shirt
echo.
set /p TShirt="Drop a T-Shirt from your Local Computer: "
echo.
title Pants
echo.
echo Drop a Pant from your Computer
echo.
set /p Pants="Drop a Pant: "
echo.
title Shirt
echo.
echo Drop a Shirt from your Computer
echo.
set /p Shirt="Drop a Shirt: "
echo.

echo local hasLoaded = false >>character.lua
echo function character() >>character.lua
echo local player = game.Workspace:FindFirstChild("%Username%") >>character.lua
echo if player~=nil and hasLoaded == false then >>character.lua
echo wait(1) >>character.lua
echo player.Head.BrickColor = BrickColor.new("%Head%") >>character.lua
echo player.Torso.BrickColor = BrickColor.new("%Torso%") >>character.lua
echo player["Right Leg"].BrickColor = BrickColor.new("%RLeg%") >>character.lua
echo player["Right Arm"].BrickColor = BrickColor.new("%RArm%") >>character.lua
echo player["Left Leg"].BrickColor = BrickColor.new("%LLeg%") >>character.lua
echo player["Left Arm"].BrickColor = BrickColor.new("%LArm%") >>character.lua
echo local Shirt = Instance.new("Shirt", player) >>character.lua
echo Shirt.ShirtTemplate = "rbxasset://shirt//%Shirt%.png" >>character.lua
echo local Pants = Instance.new("Pants", player) >>character.lua
echo Pants.PantsTemplate = "rbxasset://pantss//%Pants%.png" >>character.lua
echo local TShirt = Instance.new("Decal") >>character.lua
echo TShirt.Parent = player.Torso >>character.lua
echo TShirt.Texture = "rbxasset://Tshirts//%TShirt%.png" >>character.lua
echo
echo
echo player.Humanoid.Died:connect(function() >>character.lua
echo    if hasLoaded == true then >>character.lua
echo        wait(5) >>character.lua
echo        hasLoaded = false >>character.lua
echo    end >>character.lua
echo end) >>character.lua
echo hasLoaded = true >>character.lua
echo end >>character.lua
echo end >>character.lua
echo workspace.ChildAdded:connect(character) >>character.lua
