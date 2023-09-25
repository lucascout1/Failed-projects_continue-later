-- Services
local players = game:GetService("Players")
local RS = game:GetService("RunService")
local RPS = game:GetService("ReplicatedStorage")

-- Player
local player1 = players.LocalPlayer

-- Object Variables
local Platform = script.Parent.Movement
local Rotor = script.Parent.Rotor

-- misc
local rot = 0
local vert = 0
local mouse = false

-- Objects
local seat = script.Parent.SeatCommander

-- Event
local eventFLD = RPS.Events
local event = eventFLD.PositionSharer

	seat.ChildAdded:connect(function(object)
		if object:IsA("Weld") and object.Name == "SeatWeld" then

			local player = game.Players:GetPlayerFromCharacter(object.Part1.Parent)
			local gui = script.MouseGetter:clone()
			gui.Parent = player.PlayerGui

			wait()
			mouse = true
			
			seat.ChildRemoved:connect(function(object)
				gui:Destroy()
				mouse = false
				
			end)
		end
end)

RS.Stepped:Connect(function()
	




	

	event.OnServerEvent:Connect(function(player, mousePOSx, mousePOSy, mousePOSz)
		
		if seat.Occupant then
		
		if mouse == false then 
	
		end
			
		if mouse == true then
	
		if vert <= 60 then
					Rotor.Weld.C0 = Rotor.Weld.C0 * CFrame.Angles(0, 0, math.atan(math.rad(mousePOSy) ))

				
		elseif vert >= 60 then
			end
		end
	end
	end)
		end)
					
					


