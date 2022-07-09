
local bb=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
	bb:CaptureController()

    
	bb:ClickButton2(Vector2.new())
end)

local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/jxrivmthbrehwntywr/Zephyr/main/lib")()

local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name


local win = lib:Window(GameName ,Color3.fromRGB(44, 120, 224), Enum.KeyCode.RightControl)


local info = win:Tab("Information")

info:Label("Anti Afk is built into this script")
info:Label("Press RightCtrl To Toggle UI")

local main = win:Tab("Main")

main:Label("Farming")


main:Toggle("Auto Lift",false, function(state)
    getgenv().autolift = state
end)

main:Toggle("Auto Sell",false, function(state)
    getgenv().autosell = state
end)


game:GetService("RunService").RenderStepped:Connect(function()
        if getgenv().autolift then    

            local lift = {
                [1] = {
                    [1] = "GainMuscle"
                }
            }

            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(lift))

        end
        if getgenv().autosell then 
            local sell = {
                [1] = {
                    [1] = "SellMuscle"
                }
            }

            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(sell))
        end

end)





--local tab = win:Tab("Tab")


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
end)
