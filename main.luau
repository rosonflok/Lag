local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hrp = char:WaitForChild("HumanoidRootPart")

local lagAmount = 5 -- Lower = more teleporting lag
local speedBoost = 30 -- How far to teleport

RunService.Heartbeat:Connect(function()
	wait(1 / lagAmount) -- simulate delay between movements
	-- Random jittery position (simulate teleport/fps lag)
	local direction = hrp.CFrame.LookVector
	hrp.CFrame = hrp.CFrame + (direction * speedBoost * math.random())
end)
