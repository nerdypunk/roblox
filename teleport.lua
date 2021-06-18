local TeleportService = game:GetService("TeleportService")
local Place = 963432

script.Parent.Touched:connect(function(hit)
local player = game.Players:GetPlayerFromCharacter(hit.Parent)
if player then
TeleportService:Teleport(Place, player)
end
end
