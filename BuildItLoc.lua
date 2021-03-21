local uis = game:GetService("UserInputService")
local wall = Enum.KeyCode.Z
local camera = workspace.CurrentCamera
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local rs = game:GetService("ReplicatedStorage")
local re = rs:WaitForChild("BuildRe")

local function buildIt(input)
	if input.KeyCode == wall then
		local iPos = camera.CFrame.Position
		local dPos = iPos + (mouse.UnitRay.Direction * 25)
		re:FireServer("Wall", iPos, dPos)
	end
end
uis.InputEnded:Connect(buildIt)
