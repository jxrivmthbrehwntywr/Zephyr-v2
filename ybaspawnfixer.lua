--XD yeah just because mhm maybe

loadstring(game:HttpGet("https://raw.githubusercontent.com/Tobias020108Back/YBA-AUT/main/YBA-GUI-Rewrite.lua"))() 
local gui = game:GetService("CoreGui")["YBA Sucks Ass"]

game:GetService("RunService").RenderStepped:Connect(function(step)
        if game:GetService("CoreGui")["YBA Sucks Ass"] then
            gui:Destroy()
        end
end)
