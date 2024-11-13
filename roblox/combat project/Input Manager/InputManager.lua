local localPlayer = game:GetService("Players").LocalPlayer
local mouse = localPlayer:GetMouse()

local m1script = script:WaitForChild("M1")
local m1BF = m1script:WaitForChild("Function")

mouse.Button1Down:Connect(function()
	m1BF:Invoke()
end)
