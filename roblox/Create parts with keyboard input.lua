local UserInputService = game:GetService("UserInputService")

local player = game.Players.LocalPlayer

local partname = player.Name .. "Part"

function CreatePart()
	local NewPart = Instance.new("Part")
	NewPart.Name = partname
	NewPart.Size = Vector3.new(10,10,10)
	NewPart.Material = Enum.Material.Brick
	NewPart.CanCollide = false
	NewPart.Anchored = true
	NewPart.Position = Vector3.new(0,10,0)
	NewPart.Parent = workspace
end

UserInputService.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.C then
		if not workspace:FindFirstChild(partname) then
			CreatePart()
		end
	end
end)
