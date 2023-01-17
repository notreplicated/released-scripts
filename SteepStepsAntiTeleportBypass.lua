--[[

╋╋╋╋╋╋┏┓╋╋╋╋╋╋╋╋┏┓╋╋╋╋╋╋╋┏┓╋╋╋╋╋┏┓
╋╋╋╋╋┏┛┗┓╋╋╋╋╋╋╋┃┃╋╋╋╋╋╋┏┛┗┓╋╋╋╋┃┃
┏━┓┏━┻┓┏╋━┳━━┳━━┫┃┏┳━━┳━┻┓┏╋━━┳━┛┃
┃┏┓┫┏┓┃┃┃┏┫┃━┫┏┓┃┃┣┫┏━┫┏┓┃┃┃┃━┫┏┓┃
┃┃┃┃┗┛┃┗┫┃┃┃━┫┗┛┃┗┫┃┗━┫┏┓┃┗┫┃━┫┗┛┃
┗┛┗┻━━┻━┻┛┗━━┫┏━┻━┻┻━━┻┛┗┻━┻━━┻━━┛
╋╋╋╋╋╋╋╋╋╋╋╋╋┃┃
╋╋╋╋╋╋╋╋╋╋╋╋╋┗┛

]]--

--[[ 

Anti Teleport Bypass for Steep Steps

!! DO NOT PUT IN AUTOEXE !!
!! EXECUTE THIS WHEN YOU ARE FULLY LOADED OUT OF THE BLACK BOX SPAWN AREA !!

If there is any issues with the script not doing anything, try changing the "CFrame.new(0, -499, 0)" at line 28 into "CFrame.new(0, -500, 0)", same with line 43.

]]--

repeat wait() until game:IsLoaded()

local CoreGui = game:GetService("StarterGui")
local Players = game:GetService("Players")

local LocalPlayer = Players.LocalPlayer

CoreGui:SetCore("SendNotification", {Title = "Notification", Text = "Attempting to bypass Anti Teleport, please wait!", Duration = 3})

Root = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
Root.CFrame = CFrame.new(0, -499, 0)

LocalPlayer.Character.Humanoid.Died:Connect(function()
    warn("died, now waiting 3 seconds before teleporting")
    task.wait(4)
    LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(-738, 2499, -308)
    
    Root = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    Root.CFrame = CFrame.new(0, -499, 0)
        
    LocalPlayer.Character.Humanoid.Died:Connect(function()
        warn("died, now waiting 3 seconds before teleporting again LOL")
        task.wait(4)
        LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(-738, 2499, -308)
        CoreGui:SetCore("SendNotification", {Title = "Notification", Text = "Anti Teleport has been successfully bypassed! Feel free to teleport around now.", Duration = 5})
    end)
end)
