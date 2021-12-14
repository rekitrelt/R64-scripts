plr = game.Players.LocalPlayer
hum = game.stinky.char
mouse = plr:GetMouse()

local Part = game.stinky.char
Force = Instance.new("VectorForce", game.stinky.char)
Force.Attachment0 = game.stinky.char.Center
Force.Force = Vector3.new(0, 0, 0)

mouse.KeyDown:connect(function(key)
    if key == "c" then
        if mouse.Target then
               hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)
        end
    end

    if key == "v" then
Force.Force = Vector3.new(0, 0, -1100)
    end
    if key == "b" then
Force.Force = Vector3.new(0, 450, 0)
    end
end)
mouse.KeyUp:connect(function(key)
    if key == "v" then
Force.Force = Vector3.new(0, 0, 0)
    end
    if key == "b" then
Force.Force = Vector3.new(0, 0, 0)
    end
end)


local savedpos

function round(x, n)
    n = math.pow(10, n or 0)
    x = x * n
    if x >= 0 then x = math.floor(x + 0.5) else x = math.ceil(x - 0.5) end
    return x / n
end

local displayX = plr.PlayerGui.UI.UI.timer:Clone()
displayX.Parent = plr.PlayerGui.UI.UI
displayX.Name = "coordsX"
displayX.Position = UDim2.new(0.4,0,1,0)
displayX.Size = UDim2.new(1,0,0.1,0)

local displayY = displayX:Clone()
displayY.Parent = plr.PlayerGui.UI.UI
displayY.Name = "coordsY"
displayY.Position = UDim2.new(0.4,0,1.1,0)

local displayZ = displayX:Clone()
displayZ.Parent = plr.PlayerGui.UI.UI
displayZ.Name = "coordsZ"
displayZ.Position = UDim2.new(0.4,0,1.2,0)

mouse.KeyDown:connect(function(key)
    if key == "z" then

        savedpos = hum.Position

    end
    if key == "x" then

        hum.Position = savedpos

    end
end)

while wait() do

    displayX.Text = round(hum.Position.X,3)
    displayY.Text = round(hum.Position.Y,3)
    displayZ.Text = round(hum.Position.Z,3)

end