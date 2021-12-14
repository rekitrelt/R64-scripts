local ScriptHub = Instance.new("ScreenGui")
local Opener = Instance.new("TextButton")
local Frame = Instance.new("ImageLabel")
local z = Instance.new("TextButton")
local Closer = Instance.new("TextButton")
local madeby = Instance.new("TextLabel")
local longittook = Instance.new("TextLabel")
local z_2 = Instance.new("TextButton")
local x = Instance.new("TextButton")
local up = Instance.new("TextButton")
local down = Instance.new("TextButton")
local move = Instance.new("TextButton")
local setwaypoint = Instance.new("TextButton")
local loadwaypoint = Instance.new("TextButton")
local x_2 = Instance.new("TextButton")
local sunbit = Instance.new("TextButton")
local spawn = Instance.new("TextButton")

--Properties:

ScriptHub.Name = "Script Hub"
ScriptHub.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScriptHub.ResetOnSpawn = false

sunbit.Name = "sunbit"
sunbit.Parent = Frame
sunbit.BackgroundColor3 = Color3.new(0, 0, 0)
sunbit.BorderSizePixel = 0
sunbit.Position = UDim2.new(0.687887783, 0, 0.827722845, 0)
sunbit.Size = UDim2.new(0, 72, 0, 28)
sunbit.ZIndex = 2
sunbit.Style = Enum.ButtonStyle.RobloxButton
sunbit.Font = Enum.Font.SourceSans
sunbit.Text = "no sunbit"
sunbit.TextColor3 = Color3.new(1, 1, 1)
sunbit.TextScaled = true
sunbit.TextSize = 14
sunbit.TextWrapped = true

spawn.Name = "spawner"
spawn.Parent = Frame
spawn.BackgroundColor3 = Color3.new(0, 0, 0)
spawn.BorderSizePixel = 0
spawn.Position = UDim2.new(0.687887783, 0, 0.667722845, 0)
spawn.Size = UDim2.new(0, 72, 0, 28)
spawn.ZIndex = 2
spawn.Style = Enum.ButtonStyle.RobloxButton
spawn.Font = Enum.Font.SourceSans
spawn.Text = "spawner"
spawn.TextColor3 = Color3.new(1, 1, 1)
spawn.TextScaled = true
spawn.TextSize = 14
spawn.TextWrapped = true

spawn.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://paste.ee/r/vpHfF/0"))()
end)

Opener.Name = "Opener"
Opener.Parent = ScriptHub
Opener.BackgroundColor3 = Color3.new(0.964706, 0, 0.0509804)
Opener.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Opener.BorderSizePixel = 0
Opener.Position = UDim2.new(0, 0, 0.50436306, 0)
Opener.Size = UDim2.new(0, 45, 0, 27)
Opener.ZIndex = 2
Opener.Font = Enum.Font.SourceSans
Opener.Text = "Open"
Opener.TextColor3 = Color3.new(1, 1, 1)
Opener.TextScaled = true
Opener.TextSize = 14
Opener.TextWrapped = true

Frame.Name = "Frame"
Frame.Parent = ScriptHub
Frame.BackgroundColor3 = Color3.new(0.235294, 0.231373, 0.235294)
Frame.Position = UDim2.new(0.216459796, 0, -0.00286936364, 0)
Frame.Size = UDim2.new(0, 238, 0, 149)
Frame.ImageColor3 = Color3.new(0.282353, 1, 0.376471)
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(12, 12, 12, 12)

z.Name = "z+"
z.Parent = Frame
z.BackgroundColor3 = Color3.new(0, 0, 0)
z.BorderSizePixel = 0
z.Position = UDim2.new(0.202341557, 0, 0.517722785, 0)
z.Size = UDim2.new(0, 33, 0, 28)
z.ZIndex = 2
z.Style = Enum.ButtonStyle.RobloxButton
z.Font = Enum.Font.SourceSans
z.Text = "Z+"
z.TextColor3 = Color3.new(1, 1, 1)
z.TextScaled = true
z.TextSize = 14
z.TextWrapped = true

Closer.Name = "Closer"
Closer.Parent = Frame
Closer.BackgroundColor3 = Color3.new(0, 0, 0)
Closer.BorderSizePixel = 0
Closer.Position = UDim2.new(0.996310887, 0, 0.903658032, 0)
Closer.Size = UDim2.new(0, 15, 0, 14)
Closer.ZIndex = 2
Closer.Style = Enum.ButtonStyle.RobloxButton
Closer.Font = Enum.Font.SourceSans
Closer.Text = "X"
Closer.TextColor3 = Color3.new(1, 1, 1)
Closer.TextScaled = true
Closer.TextSize = 14
Closer.TextWrapped = true

madeby.Name = "made by"
madeby.Parent = Frame
madeby.BackgroundColor3 = Color3.new(0.231373, 0.231373, 0.231373)
madeby.Position = UDim2.new(0.00420168089, 0, 0.705642223, 0)
madeby.Size = UDim2.new(0, 160, 0, 21)
madeby.Font = Enum.Font.SourceSans
madeby.Text = "Made by rekitrelt (gui and code)"
madeby.TextColor3 = Color3.new(0.796079, 0.776471, 0.784314)
madeby.TextSize = 14
madeby.TextWrapped = true

longittook.Name = "longittook"
longittook.Parent = Frame
longittook.BackgroundColor3 = Color3.new(0.231373, 0.231373, 0.231373)
longittook.Position = UDim2.new(0.00420168089, 0, 0.846581757, 0)
longittook.Size = UDim2.new(0, 108, 0, 22)
longittook.Font = Enum.Font.SourceSans
longittook.Text = "Made this in 5 hours"
longittook.TextColor3 = Color3.new(0.796079, 0.776471, 0.784314)
longittook.TextSize = 14
longittook.TextWrapped = true

z_2.Name = "z-"
z_2.Parent = Frame
z_2.BackgroundColor3 = Color3.new(0, 0, 0)
z_2.BorderSizePixel = 0
z_2.Position = UDim2.new(0.202341557, 0, 0.000944256783, 0)
z_2.Size = UDim2.new(0, 33, 0, 28)
z_2.ZIndex = 2
z_2.Style = Enum.ButtonStyle.RobloxButton
z_2.Font = Enum.Font.SourceSans
z_2.Text = "Z-"
z_2.TextColor3 = Color3.new(1, 1, 1)
z_2.TextScaled = true
z_2.TextSize = 14
z_2.TextWrapped = true

x.Name = "x+"
x.Parent = Frame
x.BackgroundColor3 = Color3.new(0, 0, 0)
x.BorderSizePixel = 0
x.Position = UDim2.new(0.429232329, 0, 0.262689233, 0)
x.Size = UDim2.new(0, 33, 0, 28)
x.ZIndex = 2
x.Style = Enum.ButtonStyle.RobloxButton
x.Font = Enum.Font.SourceSans
x.Text = "X+"
x.TextColor3 = Color3.new(1, 1, 1)
x.TextScaled = true
x.TextSize = 14
x.TextWrapped = true

up.Name = "up"
up.Parent = Frame
up.BackgroundColor3 = Color3.new(0, 0, 0)
up.BorderSizePixel = 0
up.Position = UDim2.new(0.135114655, 0, 0.182152331, 0)
up.Size = UDim2.new(0, 70, 0, 25)
up.ZIndex = 2
up.Style = Enum.ButtonStyle.RobloxButton
up.Font = Enum.Font.SourceSans
up.Text = "up/Y+"
up.TextColor3 = Color3.new(1, 1, 1)
up.TextScaled = true
up.TextSize = 14
up.TextWrapped = true

down.Name = "down"
down.Parent = Frame
down.BackgroundColor3 = Color3.new(0, 0, 0)
down.BorderSizePixel = 0
down.Position = UDim2.new(0.135114655, 0, 0.349937558, 0)
down.Size = UDim2.new(0, 70, 0, 25)
down.ZIndex = 2
down.Style = Enum.ButtonStyle.RobloxButton
down.Font = Enum.Font.SourceSans
down.Text = "down/Y-"
down.TextColor3 = Color3.new(1, 1, 1)
down.TextScaled = true
down.TextSize = 14
down.TextWrapped = true

move.Name = "move"
move.Parent = Frame
move.BackgroundColor3 = Color3.new(0, 0, 0)
move.BorderSizePixel = 0
move.Position = UDim2.new(0.567887783, 0, 0.000944259169, 0)
move.Size = UDim2.new(0, 102, 0, 39)
move.ZIndex = 2
move.Style = Enum.ButtonStyle.RobloxButton
move.Font = Enum.Font.SourceSans
move.Text = "movement script"
move.TextColor3 = Color3.new(1, 1, 1)
move.TextScaled = true
move.TextSize = 14
move.TextWrapped = true

setwaypoint.Name = "setwaypoint"
setwaypoint.Parent = Frame
setwaypoint.BackgroundColor3 = Color3.new(0, 0, 0)
setwaypoint.BorderSizePixel = 0
setwaypoint.Position = UDim2.new(0.567887783, 0, 0.517722845, 0)
setwaypoint.Size = UDim2.new(0, 102, 0, 28)
setwaypoint.ZIndex = 2
setwaypoint.Style = Enum.ButtonStyle.RobloxButton
setwaypoint.Font = Enum.Font.SourceSans
setwaypoint.Text = "set waypoint"
setwaypoint.TextColor3 = Color3.new(1, 1, 1)
setwaypoint.TextScaled = true
setwaypoint.TextSize = 14
setwaypoint.TextWrapped = true

loadwaypoint.Name = "loadwaypoint"
loadwaypoint.Parent = Frame
loadwaypoint.BackgroundColor3 = Color3.new(0, 0, 0)
loadwaypoint.BorderSizePixel = 0
loadwaypoint.Position = UDim2.new(0.567887783, 0, 0.343226194, 0)
loadwaypoint.Size = UDim2.new(0, 102, 0, 28)
loadwaypoint.ZIndex = 2
loadwaypoint.Style = Enum.ButtonStyle.RobloxButton
loadwaypoint.Font = Enum.Font.SourceSans
loadwaypoint.Text = "load waypoint"
loadwaypoint.TextColor3 = Color3.new(1, 1, 1)
loadwaypoint.TextScaled = true
loadwaypoint.TextSize = 14
loadwaypoint.TextWrapped = true

x_2.Name = "x-"
x_2.Parent = Frame
x_2.BackgroundColor3 = Color3.new(0, 0, 0)
x_2.BorderSizePixel = 0
x_2.Position = UDim2.new(-0.00354078412, 0, 0.262689233, 0)
x_2.Size = UDim2.new(0, 33, 0, 28)
x_2.ZIndex = 2
x_2.Style = Enum.ButtonStyle.RobloxButton
x_2.Font = Enum.Font.SourceSans
x_2.Text = "X-"
x_2.TextColor3 = Color3.new(1, 1, 1)
x_2.TextScaled = true
x_2.TextSize = 14
x_2.TextWrapped = true








Opener.MouseButton1Click:Connect(function()
	Frame.Visible = true
end)
Closer.MouseButton1Click:Connect(function()
	Frame.Visible = false
end)







move.MouseButton1Click:Connect(function()
plr = game.Players.LocalPlayer
hum = game.stinky.char
mouse = plr:GetMouse()

Forcer = Instance.new("VectorForce", game.stinky.char)
Forcer.Attachment0 = game.stinky.char.Center
Forcer.Force = Vector3.new(0, 0, 0)

mouse.KeyDown:connect(function(key)
    if key == "c" then
        if mouse.Target then
               hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)
        end
    end

    if key == "v" then
Forcer.Force = Vector3.new(0, 0, -1100)
    end
    if key == "b" then
Forcer.Force = Vector3.new(0, 450, 0)
    end
end)
mouse.KeyUp:connect(function(key)
    if key == "v" then
Forcer.Force = Vector3.new(0, 0, 0)
    end
    if key == "b" then
Forcer.Force = Vector3.new(0, 0, 0)
    end
end)
end)







x_2.MouseButton1Click:Connect(function()
workspace.char.Position = workspace.char.Position+Vector3.new(-11,0,0)
end)
x.MouseButton1Click:Connect(function()
workspace.char.Position = workspace.char.Position+Vector3.new(11,0,0)
end)
z.MouseButton1Click:Connect(function()
workspace.char.Position = workspace.char.Position+Vector3.new(0,0,11)
end)
z_2.MouseButton1Click:Connect(function()
workspace.char.Position = workspace.char.Position+Vector3.new(0,0,-11)
end)
up.MouseButton1Click:Connect(function()
workspace.char.Position = workspace.char.Position+Vector3.new(0,15,0)
end)
down.MouseButton1Click:Connect(function()
workspace.char.Position = workspace.char.Position+Vector3.new(0,-15,0)
end)







plr = game.Players.LocalPlayer
hum = game.stinky.char
mouse = plr:GetMouse()

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

setwaypoint.MouseButton1Click:Connect(function()
	savedpos = hum.Position
end)
loadwaypoint.MouseButton1Click:Connect(function()
	hum.Position = savedpos
end)

while wait() do

    displayX.Text = round(hum.Position.X,3)
    displayY.Text = round(hum.Position.Y,3)
    displayZ.Text = round(hum.Position.Z,3)

end



sunbit.MouseButton1Click:Connect(function()
	while true do
		wait()
		local c = workspace.Boss.push:GetChildren()
		for i = 1,#c do
			if c[i].Name == "sunbit" then
				c[i]:Destroy()
			end
		end
	end
end)