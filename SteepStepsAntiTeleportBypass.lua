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

Anti teleport bypass for Steep Steps

i think you would need to execute after my anti cheat bypass, (didnt test so not sure)

ez ez ez ez ez ez

]]--

local CoreGui = game:GetService("StarterGui")
local Players = game.Players
local LocalPlayer = game.Players.LocalPlayer

CoreGui:SetCore("SendNotification", {Title = "Notification", Text = "Attempting to bypass Anti Teleport, please wait!", Duration = 3})

Root = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
Root.CFrame = CFrame.new(0, -500, 0)

LocalPlayer.Character.Humanoid.Died:Connect(function()
	warn("died, now waiting 3 seconds before teleporting")
	task.wait(4)
	LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(-738, 2499, -308)
	
	Root = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	Root.CFrame = CFrame.new(0, -500, 0)
		
	LocalPlayer.Character.Humanoid.Died:Connect(function()
		warn("died, now waiting 3 seconds before teleporting again LOL")
		task.wait(4)
		LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(-738, 2499, -308)
		CoreGui:SetCore("SendNotification", {Title = "Notification", Text = "Anti Teleport has been successfully bypassed! Feel free to teleport around now.", Duration = 5})
	end)
end)
