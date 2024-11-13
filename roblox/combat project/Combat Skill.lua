local player = game.Players.LocalPlayer
local UIS = game:GetService("UserInputService")
local animpath = game.ReplicatedStorage.Animations


local cooldownE = false

UIS.InputBegan:Connect(function(input, IS)
	if IS == true then return end
	
	if input.KeyCode == Enum.KeyCode.E then
		if cooldownE == false then
			cooldownE = true
			game.ReplicatedStorage.CombatStun:FireServer("E")
			local animation = player.Character.Humanoid:LoadAnimation(animpath.skillE)
			animation:Play()
			animation:AdjustWeight(10)
			print("E pressed")
			task.wait(0.45)
			cooldownE = false
		end
	end
local cooldownR = false
	if input.KeyCode == Enum.KeyCode.R then
		if cooldownR == false then
			cooldownR = true
			game.ReplicatedStorage.CombatStun:FireServer("R")
			local animation = player.Character.Humanoid:LoadAnimation(animpath.SkillR)
			animation:Play()
			animation:AdjustWeight(10)
			print("E pressed")
			task.wait(0.45)
			cooldownR = false
		end
	end
end)
