if game.CoreGui.Spawner.Name == "Spawner" then
    game.CoreGui.Spawner:Remove()
end

local Spawner = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local toplace = Instance.new("TextBox")
local madeby = Instance.new("TextLabel")
local SetP = Instance.new("TextButton")
local block = Instance.new("TextButton")
local lava = Instance.new("TextButton")
local pole = Instance.new("TextButton")
local skateboard = Instance.new("TextButton")
local flamethrower = Instance.new("TextButton")
local jetpack = Instance.new("TextButton")
local Snowball1 = Instance.new("TextButton")
local Snowball2 = Instance.new("TextButton")
local waterswitch = Instance.new("TextButton")
local Portal = Instance.new("TextButton")
local places = Instance.new("TextLabel")
local why = Instance.new("TextLabel")
--Properties:
Spawner.Name = "Spawner"
Spawner.Parent = game.CoreGui
Spawner.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = Spawner
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.Position = UDim2.new(0, 0, 0, 400)
Frame.Size = UDim2.new(0, 429, 0, 272)

toplace.Name = "toplace"
toplace.Parent = Frame
toplace.BackgroundColor3 = Color3.new(0.0509804, 0.423529, 0.54902)
toplace.Position = UDim2.new(0.747071147, 0, 0.817673743, 0)
toplace.Size = UDim2.new(0, 108, 0, 30)
toplace.ZIndex = 2
toplace.Font = Enum.Font.SourceSans
toplace.Text = "Portal To Place"
toplace.TextColor3 = Color3.new(1, 1, 1)
toplace.TextScaled = true
toplace.TextSize = 14
toplace.TextWrapped = true

madeby.Name = "made by"
madeby.Parent = Frame
madeby.BackgroundColor3 = Color3.new(1, 1, 1)
madeby.Position = UDim2.new(-0.000460324576, 0, 0.900735319, 0)
madeby.Size = UDim2.new(0, 320, 0, 27)
madeby.Font = Enum.Font.SourceSans
madeby.Text = "Made by rekitrelt"
madeby.TextColor3 = Color3.new(0, 0, 0)
madeby.TextSize = 14
madeby.TextWrapped = true

SetP.Name = "SetP"
SetP.Parent = Frame
SetP.BackgroundColor3 = Color3.new(1, 0.666667, 0)
SetP.BorderColor3 = Color3.new(1, 0.666667, 0)
SetP.Position = UDim2.new(0.747071266, 0, 0.931121171, 0)
SetP.Size = UDim2.new(0, 108, 0, 18)
SetP.Font = Enum.Font.SourceSans
SetP.Text = "Set"
SetP.TextColor3 = Color3.new(0, 0, 0)
SetP.TextSize = 14

block.Name = "block"
block.Parent = Frame
block.BackgroundColor3 = Color3.new(0.666667, 0, 1)
block.Size = UDim2.new(0, 155, 0, 35)
block.Font = Enum.Font.SourceSans
block.Text = "Block"
block.TextColor3 = Color3.new(0, 0, 0)
block.TextSize = 22

lava.Name = "lava"
lava.Parent = Frame
lava.BackgroundColor3 = Color3.new(1, 0.337255, 0.0784314)
lava.Position = UDim2.new(0, 0, 0.128676474, 0)
lava.Size = UDim2.new(0, 155, 0, 35)
lava.Font = Enum.Font.SourceSans
lava.Text = "Lava"
lava.TextColor3 = Color3.new(0, 0, 0)
lava.TextSize = 22

pole.Name = "pole"
pole.Parent = Frame
pole.BackgroundColor3 = Color3.new(1, 1, 0.227451)
pole.Position = UDim2.new(0, 0, 0.514705896, 0)
pole.Size = UDim2.new(0, 155, 0, 35)
pole.Font = Enum.Font.SourceSans
pole.Text = "Pole"
pole.TextColor3 = Color3.new(0, 0, 0)
pole.TextSize = 22

skateboard.Name = "skateboard"
skateboard.Parent = Frame
skateboard.BackgroundColor3 = Color3.new(0.262745, 0.262745, 0.262745)
skateboard.Position = UDim2.new(0, 0, 0.386029422, 0)
skateboard.Size = UDim2.new(0, 155, 0, 35)
skateboard.Font = Enum.Font.SourceSans
skateboard.Text = "Skateboard"
skateboard.TextColor3 = Color3.new(0, 0, 0)
skateboard.TextSize = 22

flamethrower.Name = "flamethrower"
flamethrower.Parent = Frame
flamethrower.BackgroundColor3 = Color3.new(1, 0.564706, 0.129412)
flamethrower.Position = UDim2.new(0, 0, 0.257352948, 0)
flamethrower.Size = UDim2.new(0, 155, 0, 35)
flamethrower.Font = Enum.Font.SourceSans
flamethrower.Text = "Flamethrower"
flamethrower.TextColor3 = Color3.new(0, 0, 0)
flamethrower.TextSize = 22

jetpack.Name = "jetpack"
jetpack.Parent = Frame
jetpack.BackgroundColor3 = Color3.new(1, 0.564706, 0.129412)
jetpack.Position = UDim2.new(0, 320, 0, 0)
jetpack.Size = UDim2.new(0, 110, 0, 35)
jetpack.Font = Enum.Font.SourceSans
jetpack.Text = "jetpack"
jetpack.TextColor3 = Color3.new(0, 0, 0)
jetpack.TextSize = 22

Snowball1.Name = "Snowball1"
Snowball1.Parent = Frame
Snowball1.BackgroundColor3 = Color3.new(0.686275, 0.686275, 0.686275)
Snowball1.Position = UDim2.new(0, 0, 0.64338237, 0)
Snowball1.Size = UDim2.new(0, 155, 0, 35)
Snowball1.Font = Enum.Font.SourceSans
Snowball1.Text = "Snowball 1"
Snowball1.TextColor3 = Color3.new(0, 0, 0)
Snowball1.TextSize = 22

Snowball2.Name = "Snowball2"
Snowball2.Parent = Frame
Snowball2.BackgroundColor3 = Color3.new(0.470588, 0.470588, 0.470588)
Snowball2.Position = UDim2.new(0, 0, 0.772058845, 0)
Snowball2.Size = UDim2.new(0, 155, 0, 35)
Snowball2.Font = Enum.Font.SourceSans
Snowball2.Text = "Snowball 2"
Snowball2.TextColor3 = Color3.new(0, 0, 0)
Snowball2.TextSize = 22

waterswitch.Name = "waterswitch"
waterswitch.Parent = Frame
waterswitch.BackgroundColor3 = Color3.new(0.243137, 0.647059, 1)
waterswitch.Position = UDim2.new(0.361305356, 0, 0, 0)
waterswitch.Size = UDim2.new(0, 164, 0, 35)
waterswitch.Font = Enum.Font.SourceSans
waterswitch.Text = "Water Switch"
waterswitch.TextColor3 = Color3.new(0, 0, 0)
waterswitch.TextSize = 22

Portal.Name = "Portal"
Portal.Parent = Frame
Portal.BackgroundColor3 = Color3.new(0.411765, 0, 0.615686)
Portal.Position = UDim2.new(0.745460451, 0, 0.64338237, 0)
Portal.Size = UDim2.new(0, 108, 0, 35)
Portal.Font = Enum.Font.SourceSans
Portal.Text = "Portal"
Portal.TextColor3 = Color3.new(0, 0, 0)
Portal.TextSize = 22

places.Name = "places"
places.Parent = Frame
places.BackgroundColor3 = Color3.new(0, 0, 0)
places.BorderSizePixel = 0
places.Position = UDim2.new(0.360124767, 0, 0.128676474, 0)
places.Size = UDim2.new(0, 164, 0, 210)
places.Font = Enum.Font.SourceSans
places.Text = "Portal places: Boss buzz candy credits eggy grest hall hecklands hecklord hub kebab knoddy knoddy2 MAKE neo obby1-12 slide snozone temp testmap tiny turtle turtle2 turtle3 tutorial FNcandy FNfinal FNhecklands FNknoddy FNneo FNtiny FNturtle"
places.TextColor3 = Color3.new(1, 1, 1)
places.TextSize = 18
places.TextWrapped = true

why.Name = "why"
why.Parent = Frame
why.BackgroundColor3 = Color3.new(0, 0, 0)
why.BorderSizePixel = 0
why.Position = UDim2.new(0, 325, 0, 35)
why.Size = UDim2.new(0, 90, 0, 120)
why.Font = Enum.Font.SourceSans
why.Text = "why did I spend 5 hours making this"
why.TextColor3 = Color3.new(1, 1, 1)
why.TextSize = 18
why.TextWrapped = true
-- Scripts:

local plr = game.Players.LocalPlayer;
mouse = plr:GetMouse ();

function onPress(key)
if  key:lower () == "k" then
if Spawner.Enabled == false then
        Spawner.Enabled = true
    elseif Spawner.Enabled == true then
        Spawner.Enabled = false
    end
end
end

mouse.KeyDown:connect(onPress)

fold = workspace.plam:WaitForChild(game.Players.LocalPlayer.Name)

prtl = game.ReplicatedFirst.TeleMap:Clone()

Snowball1.MouseButton1Click:Connect(function()
	--snowball 1
	local sb1 = game.ReplicatedFirst.maps.hub.picks.snowman1:Clone()
	text = fold.map.Value
	sb1.Parent = workspace[text].picks
	sb1.Position = workspace.char.Position
end)
Snowball2.MouseButton1Click:Connect(function()
	--snowball 2
	local sb2 = game.ReplicatedFirst.maps.hub.picks.snowman2:Clone()
	text = fold.map.Value
	sb2.Parent = workspace[text].picks
	sb2.Position = workspace.char.Position
end)
block.MouseButton1Click:Connect(function()
	--block
	local bl1 = game.ReplicatedFirst.maps.MAKE.place.P2:Clone()
	text = fold.map.Value
	bl1.Size = Vector3.new(4, 4, 4)
	bl1.Parent = workspace[text]
	bl1.Position = workspace.char.Position
end)
lava.MouseButton1Click:Connect(function()
	--block
	local lv1 = game.ReplicatedFirst.maps.obby2.lava:Clone()
	text = fold.map.Value
	lv1.Size = Vector3.new(4, 4, 4)
	lv1.Parent = workspace[text]
	lv1.Position = workspace.char.Position+Vector3.new(0,6.5,0)
end)
Portal.MouseButton1Click:Connect(function()
	text = fold.map.Value
	prtl.Parent = workspace
	prtl.Transparency = 0
	prtl.Position = workspace.char.Position+Vector3.new(0,6.5,0)
end)
SetP.MouseButton1Click:Connect(function()
    text = toplace.Text
	prtl.to.Value = text
	prtl.where.Value = Vector3.new(0,900,0)
end)
flamethrower.MouseButton1Click:Connect(function()
	local ft1 = game.ReplicatedFirst.maps.hub.flamethrower:Clone()
	text = fold.map.Value
	ft1.Parent = workspace[text]
	ft1.Position = workspace.char.Position+Vector3.new(0,6.5,0)
end)
skateboard.MouseButton1Click:Connect(function()
	local sb1 = game.ReplicatedFirst.maps.hub.skateboard:Clone()
	text = fold.map.Value
	sb1.Parent = workspace[text]
	sb1.Position = workspace.char.Position+Vector3.new(0,6.5,0)
end)
jetpack.MouseButton1Click:Connect(function()
	local jp1 = game.ReplicatedFirst.maps.hub.jetpack:Clone()
	text = fold.map.Value
	jp1.Parent = workspace[text]
	jp1.Position = workspace.char.Position+Vector3.new(0,6.5,0)
end)
pole.MouseButton1Click:Connect(function()
	pl1 = game.ReplicatedFirst.maps.obby3.pole:Clone()
	text = fold.map.Value
	pl1.Parent = workspace[text]
	pl1.Position = workspace.char.Position+Vector3.new(0,15,0)
end)
waterswitch.MouseButton1Click:Connect(function()
	ws1 = game.ReplicatedFirst.maps.testmap.switch:Clone()
	text = fold.map.Value
	ws1.Parent = workspace[text]
	ws1.top.Position = workspace.char.Position+Vector3.new(0,6,0)
end)

