local UserInputService = game:GetService("UserInputService")

local workspacevar = game.workspace

local part = workspacevar:WaitForChild("MyPart")

local function RandomColor(part)
		part.BrickColor = BrickColor.Random()
end

local function RandomOpacity(part)
	local random = Random.new()
	local finalNumber = random:NextNumber(0, 1)
	part.Transparency = finalNumber
end

UserInputService.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.R then
		RandomColor(part)
	end
	if input.KeyCode == Enum.KeyCode.T then
		RandomOpacity(part)
	end
end)
