local healthgui = Instance.new("ScreenGui")
healthgui.Name = "healthgui"
healthgui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local number = Instance.new("ImageLabel")
number.Name = "number"
number.Size = UDim2.new(0.0732064, 0, 0.1303781, 0)
number.BackgroundTransparency = 1
number.Position = UDim2.new(0.7357247, 0, 0.6753585, 0)
number.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
number.ResampleMode = Enum.ResamplerMode.Pixelated
number.ImageRectSize = Vector2.new(21, 20)
number.Image = "rbxassetid://8262464941"
number.Parent = healthgui

local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint.Parent = number

healthgui.Parent = game:GetService('Players').LocalPlayer:WaitForChild('PlayerGui').UI

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