workspace.vis.dot.MeshId = "rbxassetid://1"
workspace.vis.armA.MeshId = "rbxassetid://1"
workspace.vis.armB.MeshId = "rbxassetid://1"
workspace.vis.trs.pack.MeshId = "rbxassetid://1"
workspace.vis.trs.hat.MeshId = "rbxassetid://1"

workspace.vis.armC.MeshId = "rbxassetid://124622428"
workspace.vis.armD.MeshId = "rbxassetid://124622373"
workspace.vis.legB.MeshId = "rbxassetid://124622397"
workspace.vis.legA.MeshId = "rbxassetid://124622475"

workspace.vis.head.face.Face = "Bottom"

armL = workspace.vis.armD
armR = workspace.vis.armC
legR = workspace.vis.legA
legL = workspace.vis.legB
torso = workspace.vis.torso
head = workspace.vis.head
head.BrickColor = BrickColor.new("White")
torso.BrickColor = BrickColor.new("White")
legL.BrickColor = BrickColor.new("White")
legR.BrickColor = BrickColor.new("White")
armR.BrickColor = BrickColor.new("White")
armL.BrickColor = BrickColor.new("White")
armL.Reflectance = "0"
armR.Reflectance = "0"
legR.Reflectance = "0"
legL.Reflectance = "0"
torso.Reflectance = "0"
head.Reflectance = "0"

plr = game.Players.LocalPlayer
hum = game.stinky.char
mouse = plr:GetMouse()

mouse.KeyDown:connect(function(key)
    if key == "c" then
        if mouse.Target then
               hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)
        end
    end
end)