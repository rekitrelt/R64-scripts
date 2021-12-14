local vis = workspace:WaitForChild("vis")
local vis2 = Instance.new("Model", workspace.char)
vis2.Name = "vis2"
--create the important stuff
local head = Instance.new("Part", vis2)
local torso = Instance.new("Part", vis2)
local rfoot = Instance.new("Part", vis2)
local lfoot = Instance.new("Part", vis2)

local rarm = Instance.new("Part", vis2)
local larm = Instance.new("Part", vis2)

head.Anchored = true
torso.Anchored = true
rfoot.Anchored = true
lfoot.Anchored = true
rarm.Anchored = true
larm.Anchored = true

head.CanCollide = false
torso.CanCollide = false
rfoot.CanCollide = false
lfoot.CanCollide = false
rarm.CanCollide = false
larm.CanCollide = false

head.Name = "Head"
torso.Name = "Torso"
rfoot.Name = "Right Leg"
lfoot.Name = "Left Leg"
rarm.Name = "Right Arm"
larm.Name = "Left Arm"
--make the visuals

head.Size = Vector3.new(2, 1, 1)
torso.Size = Vector3.new(2, 2, 1)
rfoot.Size = Vector3.new(1, 2, 1)
lfoot.Size = Vector3.new(1, 2, 1)
larm.Size = Vector3.new(1, 2, 1)
rarm.Size = Vector3.new(1, 2, 1)

local headmesh = Instance.new("SpecialMesh", head)
headmesh.MeshType = Enum.MeshType.Head
headmesh.Scale = Vector3.new(1.25,1.25,1.25)

local rface = Instance.new("Decal", head)
rface.Name = "head"
rface.Texture = "rbxasset://textures/face.png"
--
local humanoid = Instance.new("Humanoid", vis2)
humanoid.MaxHealth = 0
humanoid.BreakJointsOnDeath = false
humanoid.RequiresNeck = false

local userid = game.Players.LocalPlayer.userId
local description = game:GetService("Players"):GetHumanoidDescriptionFromUserId(userid)
humanoid:ApplyDescription(description)

humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None

--humanoid:Destroy()

local RunService = game:GetService("RunService")


RunService.Stepped:Connect(function()
	for i, v in pairs(vis2:GetDescendants()) do
		if v:IsA("BasePart") then
			v.CanCollide = false
		end
	end
end)

RunService.RenderStepped:Connect(function()

	if vis:FindFirstChild("trs") then
		for i, v in pairs(workspace.vis:GetChildren()) do
			if v.ClassName == "MeshPart" then
				v.Transparency = 1
				vis.head.Beam.Enabled = false
				vis.head.face.Transparency = 1
				if vis.trs:FindFirstChild("hat") then
					vis.trs.hat.Transparency = 1
				end

				if vis.trs:FindFirstChild("pack") then
					vis.trs.pack.CFrame += Vector3.new(6000,6000,6000) 
					vis.trs.bt1.CFrame += Vector3.new(6000,6000,6000) 
					vis.trs.bt2.CFrame += Vector3.new(6000,6000,6000) 
					vis.trs.bt3.CFrame += Vector3.new(6000,6000,6000) 
					vis.trs.bt4.CFrame += Vector3.new(6000,6000,6000) 
				end

			end
		end

		head.CFrame = vis.head.CFrame + Vector3.new(0,0.8)
		torso.CFrame = vis.torso.CFrame + Vector3.new(0,1)

		larm.CFrame = vis.armB.CFrame + Vector3.new(0,0.7)
		rarm.CFrame = vis.armA.CFrame + Vector3.new(0,0.7)

		lfoot.CFrame = vis.legB.CFrame + Vector3.new(0,0.4)
		rfoot.CFrame = vis.legA.CFrame + Vector3.new(0,0.4)
	else
		vis = workspace:WaitForChild("vis")
	end
	
end)
