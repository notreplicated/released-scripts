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

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()

local RootPart = Character:FindFirstChild("HumanoidRootPart")

local CFrameLocation = CFrame.new(0, 0, 0) -- Or: Players:FindFirstChild("plr username").Character.Head.CFrame

RootPart.Parent = nil
RootPart.CFrame = CFrameLocation
RootPart.Parent = Character
