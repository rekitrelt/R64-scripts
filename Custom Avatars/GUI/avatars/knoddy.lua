
local vis = workspace:WaitForChild("vis")
local vis2 = Instance.new("Model", workspace.char)
vis2.Name = "vis2"
--create the important tuff
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

head.Name = "head"
torso.Name = "torso"
rfoot.Name = "rfoot"
lfoot.Name = "lfoot"
rarm.Name = "rarm"
larm.Name = "larm"
--make the visuals

head.Size = Vector3.new(3.206, 2.708, 3)
torso.Size = Vector3.new(1.857, 1.535, 1.287)
rfoot.Size = Vector3.new(0.57, 0.459, 1.031)
lfoot.Size = Vector3.new(0.57, 0.458, 1.036)
rarm.Size = Vector3.new(0.57, 0.459, 1.031)
larm.Size = Vector3.new(0.57, 0.458, 1.036)

hmesh = Instance.new("SpecialMesh", head)
tmesh = Instance.new("SpecialMesh", torso)
rfmesh = Instance.new("SpecialMesh", rfoot)
lfmesh = Instance.new("SpecialMesh", lfoot)
ramesh = Instance.new("SpecialMesh", rarm)
lamesh = Instance.new("SpecialMesh", larm)


hmesh.MeshId = "rbxassetid://8186040039"
hmesh.TextureId = "rbxassetid://8186040078"

tmesh.MeshId = "rbxassetid://8186039903"
tmesh.TextureId = "rbxassetid://8186039944"

rfmesh.MeshId = "rbxassetid://8186040683"
rfmesh.TextureId = "rbxassetid://8186040730"

lfmesh.MeshId = "rbxassetid://8186040683"
lfmesh.TextureId = "rbxassetid://8186040563"

ramesh.MeshId = "rbxassetid://8193588042"
ramesh.TextureId = "rbxassetid://8186072036"

lamesh.MeshId = "rbxassetid://8193588042"
lamesh.TextureId = "rbxassetid://8186071907"

local RunService = game:GetService("RunService")

RunService.RenderStepped:Connect(function()
	if vis:FindFirstChild("trs") then
		for i, v in pairs(vis:GetChildren()) do
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
		head.CFrame = vis.head.CFrame - Vector3.new(0,0.9)
		torso.CFrame = vis.torso.CFrame - Vector3.new(0,0.9)

		lfoot.CFrame = vis.legB.CFrame - Vector3.new(0,0.5)
		rfoot.CFrame = vis.legA.CFrame - Vector3.new(0,0.5)

		larm.CFrame = vis.armB.CFrame  - Vector3.new(0,1.2) 
		rarm.CFrame = vis.armA.CFrame  - Vector3.new(0,1.2) 
	else
		vis = workspace:WaitForChild("vis")
	end
end)

game.stinky.vis2.head.Size = Vector3.new(0.05,0.05,0.05)
game.stinky.vis2.torso.Size = Vector3.new(0.05,0.05,0.05)
game.stinky.vis2.rfoot.Size = Vector3.new(0.05,0.05,0.05)
game.stinky.vis2.lfoot.Size = Vector3.new(0.05,0.05,0.05)
game.stinky.vis2.rarm.Size = Vector3.new(0.05,0.05,0.05)
game.stinky.vis2.larm.Size = Vector3.new(0.05,0.05,0.05)
game.stinky.vis2.rhand.Size = Vector3.new(0.05,0.05,0.05)
game.stinky.vis2.lhand.Size = Vector3.new(0.05,0.05,0.05)
