script.Parent.Touched:Connect(function(hit)
	local character = hit.Parent
	local humanoid = character:FindFirstChild("Humanoid")
	
	if humanoid ~= nil and game.Players:GetPlayerFromCharacter(character) then
		humanoid.MaxHealth = math.huge
		humanoid.Health = math.huge
		game.StarterGui.SafeZone.Enabled = true
	end
end)

script.Parent.TouchEnded:Connect(function(left)
	local character = left.Parent
	local humanoid = character:FindFirstChild("Humanoid")
	
	if humanoid ~= nil and game.Players:GetPlayerFromCharacter(character) then
		humanoid.MaxHealth = 100
		humanoid.Health = 100
		game.StarterGui.SafeZone.Enabled = false
	end
end)
