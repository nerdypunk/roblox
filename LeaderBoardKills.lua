local function addBoard(player)
	local board = Instance.new("Folder", player)
	board.Name = "leaderstats"

	local kills = Instance.new("IntValue", board)
	kills.Name = "Kills" 
	
end

local function onCharAdded(char)
	local hum = char:WaitForChild("Humanoid")
	hum.Died:Connect(function() 
		local tag = hum:FindFirstChild("creator")
		if tag then
			local ePlayer = tag.Value
			local kills = ePlayer.leaderstats.Kills
			kills.Value = kills.Value + 1
		end
	end)
end

local function onPlayerAdded(player)
	addBoard(player)
	player.CharacterAdded:Connect(onCharAdded)
end

game.Players.PlayerAdded:Connect(onPlayerAdded)
