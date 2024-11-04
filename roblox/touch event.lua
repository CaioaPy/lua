local touchPart = game.Workspace.MyPart

touchPart.Touched:Connect(function(part)
	print(part.Name)
end)
