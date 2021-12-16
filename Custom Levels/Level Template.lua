game:GetObjects("rbxassetid://ID")[1].Parent = game.ReplicatedFirst.maps
SpawnPos = Vector3.new(0, 900, 0)

fold = workspace.plam:WaitForChild(game.Players.LocalPlayer.Name)
prtl = game.ReplicatedFirst.TeleMap:Clone()
text = fold.map.Value
prtl.Parent = workspace[text]
prtl.Transparency = 0
prtl.Position = workspace.char.Position+Vector3.new(0,6.5,0)
prtl.to.Value = "custom"
prtl.where.Value = SpawnPos
