-- Services
local players = game:GetService("Players")
local RS = game:GetService("RunService")
local RPS = game:GetService("ReplicatedStorage")

-- Player Variables
local player = players.LocalPlayer
local mouse = player:GetMouse()

-- Event Variables
local EVNfolder = RPS.Events
local Event = EVNfolder.PositionSharer

	
mouse.Move:Connect(function()
	
	local mousePOSx = mouse.Hit.Position.X
	local mousePOSy = mouse.UnitRay.Unit.Direction.Y
	local mousePOSz = mouse.UnitRay.Direction.Z
	
	Event:FireServer(player, mousePOSx, mousePOSy, mousePOSz)
	
	end)
	

	
