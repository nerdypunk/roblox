local function addBoard(player)
	local board = Instance.new("Folder", player)
	board.Name = "tablero"
	
	local kills = Instance.new("IntValue", board)
	kills.Name = "Muertes"
end

local function onCharacterRemoving(char)
	local player = game.Players:GetPlayerFromCharacter(char)
	local deaths = player.leaderstats.Deaths
	deaths.Value = deaths.Value + 1
end

local function onPlayerAdded(player)
	addBoard(player)
	player.CharacterRemoving:Connect(onCharacterRemoving)	
end

game.Players.PlayerAdded:Connect(onPlayerAdded)
