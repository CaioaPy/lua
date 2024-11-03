local UserInputService = game:GetService("UserInputService")

function KillAll()
	for _, player in pairs(game.Players:GetChildren()) do
		local player = player.character
		player:waitForChild("Humanoid").Health = 0
	end	
end

UserInputService.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.L then
		wait(5)
		KillAll()
	end
end)
