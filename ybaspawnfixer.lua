--XD yeah just because mhm maybe

loadstring(game:HttpGet("https://raw.githubusercontent.com/Tobias020108Back/YBA-AUT/main/YBA-GUI-Rewrite.lua"))() 
local gui = game:GetService("CoreGui")["YBA Sucks Ass"]

game:GetService("RunService").RenderStepped:Connect(function(step)
        if not game:GetService("CoreGui")["YBA Sucks Ass"] then return end
        if game:GetService("CoreGui")["YBA Sucks Ass"] then
            game:GetService("CoreGui")["YBA Sucks Ass"].Main.Visible = false
        end
end)
