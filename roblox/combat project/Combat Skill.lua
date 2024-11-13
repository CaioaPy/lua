local player = game.Players.LocalPlayer
local UIS = game:GetService("UserInputService")
local animpath = game.ReplicatedStorage.Animations


local cooldown = false

UIS.InputBegan:Connect(function(input, IS)
	if IS == true then return end
	
	if input.KeyCode == Enum.KeyCode.E then
		if cooldown == false then
			cooldown = true
			game.ReplicatedStorage.CombatStun:FireServer()
			local animation = player.Character.Humanoid:LoadAnimation(animpath.skillE)
			animation:Play()
			animation:AdjustWeight(10)
			print("E pressed")
			task.wait(0.45)
			cooldown = false
		end
	end
	local x = 2
	if input.KeyCode == Enum.KeyCode.R then
		if cooldown == false then
			cooldown = true
			game.ReplicatedStorage.CombatStun:FireServer()
			local animation = player.Character.Humanoid:LoadAnimation(animpath.SkillR)
			animation:Play()
			animation:AdjustWeight(10)
			print("E pressed")
			task.wait(0.45)
			cooldown = false
		end
	end
end)
