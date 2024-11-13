local bindableFunction = script:WaitForChild("Function")

local replicatedStorage = game:GetService("ReplicatedStorage")
local animPath = replicatedStorage:WaitForChild("Animations") 

local localPlayer = game:WaitForChild("Players").LocalPlayer
local character = localPlayer.Character or localPlayer.CharacterAppearanceLoaded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local animator = humanoid:WaitForChild("Animator")

local m1sUsed = 0
local currentM1 = 0

local m1cd = false

local comboCd = 2

local comboReset = 0.5
print("aa")

bindableFunction.OnInvoke = function()
	if not m1cd then
		m1cd = true
		m1sUsed += 1
		currentM1 += 1
		game.ReplicatedStorage.CombatStun:FireServer("M1(".. currentM1..")")
		for _, playingTrack in animator:GetPlayingAnimationTracks() do
			playingTrack:Stop(0)
		end
		
		local currentM1Anim = animPath:FindFirstChild("m1(".. currentM1 ..")")
		local m1Track = animator:LoadAnimation(currentM1Anim)
		
		m1Track:AdjustWeight(10)
		m1Track:Play()
		
		task.wait(m1Track.Length - 0.1)
		
		task.spawn(function()
			local oldM1s = m1sUsed
			task.wait(comboReset)
			
			if oldM1s == m1sUsed then
				currentM1 = 0
			end
			
		end)
		
		if currentM1 == 4 then
			task.wait(comboCd)
			currentM1 = 0
			
		end
		
		m1cd = false
	end
	
end
