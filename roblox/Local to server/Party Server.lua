local part = game.Workspace.PartyPart

local function RandomColor(part)
	local r = math.random(0, 255)
	local g = math.random(0, 255)
	local b = math.random(0, 255)
	part.Color = Color3.fromRGB(r, g, b)
end

local function loopfunc(quantity)
	for i = 1, quantity do
		RandomColor(part)
		task.wait(1)
	end
end

game.ReplicatedStorage.PartyTrigger.OnServerEvent:Connect(function(player, number)
	print(player)
	loopfunc(number)
end)

