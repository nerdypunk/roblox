local part = script.Parent
local canTouch = true

local function onEat(otherPart)
	local hum = otherPart.Parent:FindFirstChild("Humanoid")
	if hum and canTouch then
		canTouch = false
		hum.WalkSpeed = 50
		hum.JumpPower = 300
		part.Transparency = 1
		wait(10)
		canTouch = true
		hum.WalkSpeed = 16
		hum.JumpPower = 50
		part.Transparency = 0
	end
end

part.Touched:Connect(onEat)
