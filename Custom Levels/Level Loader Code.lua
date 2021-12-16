Link = "https://raw.githubusercontent.com/rekitrelt/R64-scripts/main/Custom%20Levels/Test.lua"
LevelCode = game:HttpGet(Link)

plr = game.Players.LocalPlayer
hum = game.stinky.char
local Part = game.stinky.char
Force = Instance.new("VectorForce", game.stinky.char)
Force.Attachment0 = game.stinky.char.Center
Force.Force = Vector3.new(0, 500, 0)
wait(0.5)
Force:Destroy()

plrName = plr.Name
fold = workspace.plam:WaitForChild(plrName)
curmap = fold.map.Value
portal = workspace[curmap].TeleMap
portal.Parent = workspace[curmap]
portal.Position = game.stinky.char.Position+Vector3.new(0,3,0)
portal.Transparency = 0
portal.to.Value = "MAKE"
portal.where.Value = Vector3.new(0,10,0)
playerguii = game.Players.LocalPlayer.PlayerGui
wait(5)
playerguii.UI.pause.bg3.export.Visible = true
playerguii.UI.pause.bg.pause.Visible = false
playerguii.UI.pause.bg3.pause.Visible = false
playerguii.UI.pause.bg3.quit.Visible = false
playerguii.UI.pause.bg3.Visible = true
playerguii.UI.pause.Visible = true

playerguii.UI.pause.bg3.export.TextBox.Text = LevelCode
