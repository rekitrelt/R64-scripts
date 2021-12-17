local healthgui = Instance.new("ScreenGui")
healthgui.Name = "healthgui"
healthgui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local dragframe = Instance.new("Frame")
dragframe.Name = "dragframe"
dragframe.Parent = healthgui
dragframe.BackgroundTransparency = 1
dragframe.Size = UDim2.new(1, 0, 1, 0)

local number = Instance.new("ImageLabel")
number.Name = "number"
number.Size = UDim2.new(0.0732064, 0, 0.1303781, 0)
number.BackgroundTransparency = 1
number.Position = UDim2.new(0.7357247, 0, 0.6753585, 0)
number.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
number.ResampleMode = Enum.ResamplerMode.Pixelated
number.ImageRectSize = Vector2.new(21, 20)
number.Image = "rbxassetid://8262464941"
dragframe.Parent = healthgui
number.Parent = dragframe

local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint.Parent = number

healthgui.Parent = game.CoreGui

dragframe.Selectable = true
dragframe.Active = true
dragframe.Draggable = true

local img = number

--

local onei = Vector2.new(0, 0)
local twoi = Vector2.new(21, 0)
local threei = Vector2.new(42, 0)
local fouri = Vector2.new(63, 0)

senv = getsenv(game.Players.LocalPlayer.PlayerScripts.CharacterScript)

while true do
		if senv.health == 4 then
			img.ImageTransparency = 0
			img.ImageRectOffset = fouri
		elseif senv.health == 3 then
			img.ImageTransparency = 0
			img.ImageRectOffset = threei
		elseif senv.health == 2 then
			img.ImageTransparency = 0
			img.ImageRectOffset = twoi
		elseif senv.health == 1 then
			img.ImageTransparency = 0
			img.ImageRectOffset = onei
		elseif senv.health == 0 then
			img.ImageTransparency = 1
		else
			img.ImageTransparency = 1
		end
	task.wait()
end
