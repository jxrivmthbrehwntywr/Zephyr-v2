if getgenv().zephyrhubv2executed then return end
--[WUUWRWR]--v.1.2



local bb=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
	bb:CaptureController()

    
	bb:ClickButton2(Vector2.new())
end)


loadstring(game:HttpGet("https://raw.githubusercontent.com/jxrivmthbrehwntywr/Zephyr-v2/main/ybaspawnfixer.lua"))() 
getgenv().zephyrhubv2executed = true



local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/jxrivmthbrehwntywr/Zephyr/main/lib")()

local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

getgenv().zephyrhubversion = "v1.2"

local win = lib:Window(GameName,Color3.fromRGB(44, 120, 224), Enum.KeyCode.RightControl)


local info = win:Tab("Information")



info:Label("🌌 HUB Version 🌌: 1.2 RELEASE!")
info:Label("Update LOG:")
info:Label("#1 Fixed Autofarm breaking after dying")
info:Label("#2 Added Infinite Jump")
info:Label("#3 Removed Test Tab")
info:Label("------------------------------")
info:Label("Anti Afk is built into this script")
info:Label("Press RightCtrl To Toggle UI")

local main = win:Tab("Main")

main:Label("Main")

zerocooldownstate = false
main:Toggle("Zero Cooldowns",false, function(state)
    zerocooldownstate = state
end)

game:GetService("RunService").RenderStepped:Connect(function()
    getgenv().nocd = zerocooldownstate
 
while getgenv().nocd do wait()
    pcall( function()
    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.HUD.Cooldowns.Frame:GetChildren()) do
        if v:IsA("ImageButton") then
            local name = v.Name
local args = {
    [1] = "ResetCD",
    [2] = name
}
game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer(unpack(args))
end
end
end)
end
end)


main:Toggle("Item Farm",false, function(value)
    getgenv().itemfarmvalue = value
end)


local itemFarm = coroutine.wrap(function()
	while wait() do	
		if getgenv().itemfarmvalue then
			local playerRoot = game.Players.LocalPlayer.Character.HumanoidRootPart
				
			for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
				if v.Name =="MeshPart" and v.Parent and v.Parent.Name == "Model" and getgenv().itemfarmvalue then	
					repeat 
						local mesh = v 
						local model = v.Parent
						local clickdetector = v.Parent.ClickDetector

						playerRoot.CFrame = mesh.CFrame
						wait(0.25)
						fireclickdetector(clickdetector)
						wait(0.25)
					until not game:GetService("Workspace")["Item_Spawns"].Items:FindFirstChild(v)
				
			end
		end
	end
end)--bals





itemFarm()

main:Label("Stand Farming")

main:Button("Use Roka", function()
  

local eatrokaarguments = {
    [1] = "EndDialogue",
    [2] = {
        ["NPC"] = "Rokakaka",
        ["Option"] = "Option1",
        ["Dialogue"] = "Dialogue2"
    }
}

game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer(unpack(eatrokaarguments))

end)

main:Button("Use Arrow + Worthieness", function()



local noideaargs = {
    [1] = "LearnSkill",
    [2] = {
        ["Skill"] = "Worthiness II",
        ["SkillTreeType"] = "Character"
    }
}




local worthinessargs = {
    [1] = "ReturnSkillInfoInTree",
    [2] = {
        ["Type"] = "Character",
        ["Skills"] = {
            [1] = "Agility II",
            [2] = "Agility I",
            [3] = "Vitality I",
            [4] = "Vitality II",
            [5] = "Agility III",
            [6] = "Vitality III",
            [7] = "Vitality IV",
            [8] = "Vitality V",
            [9] = "Agility IV",
            [10] = "Agility V",
            [11] = "Worthiness I",
            [12] = "Worthiness II",
            [13] = "Worthiness III",
            [14] = "Health Regen I",
            [15] = "Health Regen II",
            [16] = "Health Regen V",
            [17] = "Sturdiness I",
            [18] = "Sturdiness II",
            [19] = "Sturdiness III",
            [20] = "Health Regen IV",
            [21] = "Health Regen III",
            [22] = "Vitality VI",
            [23] = "Vitality VII",
            [24] = "Vitality VIII",
            [25] = "Vitality IX",
            [26] = "Vitality X",
            [27] = "Worthiness IV",
            [28] = "Worthiness V",
            [29] = "Health Regen VI"
        }
    }
}

local argsusearrow = {
    [1] = "EndDialogue",
    [2] = {
        ["NPC"] = "Mysterious Arrow",
        ["Option"] = "Option1",
        ["Dialogue"] = "Dialogue2"
    }
}



game:GetService("Players").LocalPlayer.Character.RemoteFunction:InvokeServer(unpack(noideaargs))
game:GetService("Players").LocalPlayer.Character.RemoteFunction:InvokeServer(unpack(worthinessargs))
game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer(unpack(argsusearrow))
end)


local playertab = win:Tab("Player")

playertab:Slider("WalkSpeed",0,200,60, function(t)
    getgenv().playerwalkspeedslider = t
end)

playertab:Toggle("WalkSpeed",false, function(t)
     getgenv().playerwalkspeedtoggle = t
end)

playertab:Slider("JumpPower",0,200,70, function(t)
    getgenv().playerjumpheightslider = t
end)

playertab:Toggle("JumpPower",false, function(t)
     getgenv().playerjumpheighttoggle = t
end)
	
playertab:Toggle("Inf Jump", false, function(t)
     getgenv().infjumptoggle = t	
end)
	
game:GetService("UserInputService").JumpRequest:connect(function()
	if etgenv().infjumptoggle then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)

game:GetService("RunService").RenderStepped:Connect(function()
    if getgenv().playerwalkspeedtoggle then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = getgenv().playerwalkspeedslider
    else
        if getgenv().playerjumpheighttoggle then
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = getgenv().playerjumpheightslider
        end
    end
end)

local Misctab = win:Tab("Misc")

Misctab:Toggle("Auto Arcade",false, function(t)
    getgenv().autoarcadevalue = t
end)

spawn(function()
    while task.wait() do
        if getgenv().autoarcadevalue then
    local autoarcadearguments = {
        [1] = "EndDialogue",
        [2] = {
            ["NPC"] = "Item Machine",
            ["Option"] = "Option1",
            ["Dialogue"] = "Dialogue1"
        }
    }

        game:GetService("Players").LocalPlayer.Character.RemoteEvent:FireServer(unpack(autoarcadearguments))

        end
    end
end)



--[[local tab = win:Tab("Tab")


tab:Button("Button", function()
lib:Notification("Notification", "Hello!", "Hi!")
end)

tab:Toggle("Toggle",false, function(t)
print(t)
end)

tab:Slider("Slider",0,100,30, function(t)
print(t)
end)

tab:Dropdown("Dropdown",{"Option 1","Option 2","Option 3","Option 4","Option 5"}, function(t)
print(t)
end)

tab:Colorpicker("Colorpicker",Color3.fromRGB(255,0,0), function(t)
print(t)
end)

tab:Textbox("Textbox",true, function(t)
print(t)
end)

tab:Bind("Bind",Enum.KeyCode.RightShift, function()
print("Pressed!")
end)

tab:Label("Label")

--local changeclr = win:Tab("Change UI Color")

changeclr:Colorpicker("Change UI Color",Color3.fromRGB(44, 120, 224), function(t)
lib:ChangePresetColor(Color3.fromRGB(t.R * 255, t.G * 255, t.B * 255))
end)]]--







  
