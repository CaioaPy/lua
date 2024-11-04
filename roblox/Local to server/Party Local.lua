-- send number to PartyServer
local UserInputService = game:GetService("UserInputService")

UserInputService.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.P then
		game.ReplicatedStorage.PartyTrigger:FireServer(5)
	end
end)
