local part = script.Parent
local canTouch = true

local function onEat(otherPart)
	local hum = otherPart.Parent:FindFirstChild("Humanoid")
	if hum and canTouch then
		canTouch = false
		hum.JumpPower = 100
		part.Transparency = 1
		wait(10)
		canTouch = true
		hum.JumpPower = 50
		part.Transparency = 0
	end
end

part.Touched:Connect(onEat)
