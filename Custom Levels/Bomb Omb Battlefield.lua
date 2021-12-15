game:GetObjects("rbxassetid://8255610770")[1].Parent = game.ReplicatedFirst.maps
SpawnPos = Vector3.new(0, 0, 0)

fold = workspace.plam:WaitForChild(game.Players.LocalPlayer.Name)
prtl = game.ReplicatedFirst.TeleMap:Clone()
text = fold.map.Value
prtl.Parent = workspace
prtl.Transparency = 0
prtl.Position = workspace.char.Position+Vector3.new(0,6.5,0)
prtl.to.Value = "custom"
prtl.where.Value = SpawnPos
