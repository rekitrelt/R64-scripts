local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Imposter = Instance.new("TextButton")
local Roblox = Instance.new("TextButton")
local Wario = Instance.new("TextButton")
local Knoddy = Instance.new("TextButton")
--Properties:
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.Position = UDim2.new(-0.000744581223, 0, 0, 0)
Frame.Size = UDim2.new(0, 100, 0, 100)

Imposter.Name = "Imposter"
Imposter.Parent = Frame
Imposter.BackgroundColor3 = Color3.new(1, 1, 1)
Imposter.Position = UDim2.new(1.14440915e-07, 0, 0, 0)
Imposter.Size = UDim2.new(0, 99, 0, 25)
Imposter.Font = Enum.Font.SourceSans
Imposter.Text = "Imposter"
Imposter.TextColor3 = Color3.new(0, 0, 0)
Imposter.TextSize = 14

Roblox.Name = "Roblox"
Roblox.Parent = Frame
Roblox.BackgroundColor3 = Color3.new(1, 1, 1)
Roblox.Position = UDim2.new(1.14440915e-07, 0, 0.25, 0)
Roblox.Size = UDim2.new(0, 99, 0, 25)
Roblox.Font = Enum.Font.SourceSans
Roblox.Text = "Roblox"
Roblox.TextColor3 = Color3.new(0, 0, 0)
Roblox.TextSize = 14

Wario.Name = "Wario"
Wario.Parent = Frame
Wario.BackgroundColor3 = Color3.new(1, 1, 1)
Wario.Position = UDim2.new(1.13621354e-07, 0, 0.5, 0)
Wario.Size = UDim2.new(0, 99, 0, 25)
Wario.Font = Enum.Font.SourceSans
Wario.Text = "Wario"
Wario.TextColor3 = Color3.new(0, 0, 0)
Wario.TextSize = 14

Knoddy.Name = "Knoddy"
Knoddy.Parent = Frame
Knoddy.BackgroundColor3 = Color3.new(1, 1, 1)
Knoddy.Position = UDim2.new(1.13621354e-07, 0, 0.75, 0)
Knoddy.Size = UDim2.new(0, 99, 0, 25)
Knoddy.Font = Enum.Font.SourceSans
Knoddy.Text = "Knoddy"
Knoddy.TextColor3 = Color3.new(0, 0, 0)
Knoddy.TextSize = 14
-- Scripts:


local plr = game.Players.LocalPlayer;
mouse = plr:GetMouse ();

function onPress(key)
if  key:lower () == "k" then
if Frame.BackgroundTransparency == 1 then
        Frame.BackgroundTransparency = 0
        Imposter.BackgroundTransparency = 0
        Roblox.BackgroundTransparency = 0
        Wario.BackgroundTransparency = 0
        Knoddy.BackgroundTransparency = 0
        
        Imposter.Text = "Imposter"
        Roblox.Text = "Roblox"
        Wario.Text = "Wario"
        Knoddy.Text = "Knoddy"
    elseif Frame.BackgroundTransparency == 0 then
        Frame.BackgroundTransparency = 1
        Imposter.BackgroundTransparency = 1
        Roblox.BackgroundTransparency = 1
        Wario.BackgroundTransparency = 1
        Knoddy.BackgroundTransparency = 1
        
        Imposter.Text = ""
        Roblox.Text = ""
        Wario.Text = ""
        Knoddy.Text = ""
    end
end
end

mouse.KeyDown:connect(onPress)

Imposter.MouseButton1Click:Connect(function()
    if workspace.char:FindFirstChild("vis2") then
	    if workspace.char:FindFirstChild("vis2") then 	    workspace.char.vis2:Remove() 	end
	end
	wait(1)
	loadstring(game:HttpGet("https://raw.githubusercontent.com/rekitrelt/R64-Character-GUI/main/imposter.lua", true))()
end)
Roblox.MouseButton1Click:Connect(function()
	if workspace.char:FindFirstChild("vis2") then
	    workspace.char.vis2:Remove() 	end
	wait(1)
	loadstring(game:HttpGet("https://raw.githubusercontent.com/rekitrelt/R64-Character-GUI/main/roblox.lua", true))()
end)
Wario.MouseButton1Click:Connect(function()
	if workspace.char:FindFirstChild("vis2") then 	    workspace.char.vis2:Remove() 	end
	wait(1)
	loadstring(game:HttpGet("https://raw.githubusercontent.com/rekitrelt/R64-Character-GUI/main/wario.lua", true))()
end)
Knoddy.MouseButton1Click:Connect(function()
	if workspace.char:FindFirstChild("vis2") then 	    workspace.char.vis2:Remove() 	end
	wait(1)
	loadstring(game:HttpGet("https://raw.githubusercontent.com/rekitrelt/R64-Character-GUI/main/knoddy.lua", true))()
end)
