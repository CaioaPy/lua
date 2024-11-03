-- creating a Part in Workspace
Instance.new("Part", game.Workspace)

-- eg
-- creates a new part that can be accessed through the variable but is in workspace
local NewPart = Instance.new("Part", game.Workspace)

-- eg2
-- creates part and store it in the variable
local NewPart = Instance.new("Part")
-- change the properties
NewPart.Name = "TestPart"
NewPart.Size = Vector3.new(1,1,1)
NewPart.Material = Enum.Material.Neon
NewPart.Position = Vector3.new(0,10,0)
-- assign the part parent
NewPart.Parent = workspace
