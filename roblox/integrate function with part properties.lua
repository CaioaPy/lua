local UserInputService = game:GetService("UserInputService")

part = workspace.MyPart

local function RandomColor(part)
		part.BrickColor = BrickColor.Random()
end

local function RandomOpacity(part)
		part.Transparency.Random()
end

if Enum.KeyCode.T then
	RandomOpacity(part)
end

if Enum.KeyCode.R then
	RandomColor(part)
end

UserInputService.InputBegan:Connect(RandomColor)

UserInputService.InputBegan:Connect(RandomOpacity)
