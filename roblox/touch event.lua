local touchPart = game.Workspace.MyPart
local partIsTouched = false

touchPart.Touched:Connect(function(part)
	if partIsTouched == false then
		partIsTouched = true
		print(part.Name)
		-- cooldown mechanic
		task.wait(3)
		partIsTouched = false
	end
end)
