local plr = game.Players.LocalPlayer
local RunService = game:GetService("RunService")
local uis = game:GetService("UserInputService")
local debris = game:GetService("Debris")

local vis = workspace:WaitForChild("vis")

local function sfxinit()
	for i, v in pairs(vis.torso:GetChildren()) do
		if v.ClassName == "Sound" then
			v.PlaybackSpeed = 0.7
		end
	end
	
	vis.torso.powerup.PlaybackSpeed = 1
	vis.torso.powerup.SoundId = "rbxassetid://1455629717"

	vis.torso.dive.PlaybackSpeed = 1
	vis.torso.dive.SoundId = "rbxassetid://8152780685"
end

sfxinit()

--muusic changes

local vis2 = Instance.new("Model", workspace.char)
vis2.Name = "vis2"
--create the important tuff
local head = Instance.new("Part", vis2)
local torso = Instance.new("Part", vis2)
local rfoot = Instance.new("Part", vis2)
local lfoot = Instance.new("Part", vis2)
local rarm = Instance.new("Part", vis2)
local larm = Instance.new("Part", vis2)

local lhand = Instance.new("Part",vis2)
local rhand = Instance.new("Part",vis2)


local head2 = Instance.new("Part", vis2)

head.Anchored = true
head2.Anchored = true
torso.Anchored = true
rfoot.Anchored = true
lfoot.Anchored = true
rarm.Anchored = true
larm.Anchored = true
rhand.Anchored = true
lhand.Anchored = true

head.CanCollide = false
head2.CanCollide = false
torso.CanCollide = false
rfoot.CanCollide = false
lfoot.CanCollide = false
rarm.CanCollide = false
larm.CanCollide = false

rhand.CanCollide = false
lhand.CanCollide = false

head.Name = "head"
head2.Name = "head2"
torso.Name = "torso"
rfoot.Name = "rfoot"
lfoot.Name = "lfoot"
rarm.Name = "rarm"
larm.Name = "larm"
rhand.Name = "rhand"
lhand.Name = "lhand"
--make the visuals
hmesh = Instance.new("SpecialMesh", head)
hmesh2 = Instance.new("SpecialMesh", head2)
tmesh = Instance.new("SpecialMesh", torso)
rfmesh = Instance.new("SpecialMesh", rfoot)
lfmesh = Instance.new("SpecialMesh", lfoot)
ramesh = Instance.new("SpecialMesh", rarm)
lamesh = Instance.new("SpecialMesh", larm)

rhmesh = Instance.new("SpecialMesh", rhand)
lhmesh = Instance.new("SpecialMesh", lhand)

hmesh.MeshId = "rbxassetid://8208054245"
hmesh.TextureId = "rbxassetid://8208054276"
hmesh.Offset = Vector3.new(0,0,-0.3)

hmesh2.MeshId = "rbxassetid://8208054385"
hmesh2.TextureId = "rbxassetid://8208054444"
hmesh2.Offset = Vector3.new(0.009, 0.521, 0.277-0.3)

tmesh.MeshId = "rbxassetid://8207463834"
tmesh.TextureId = "rbxassetid://8207463884"
tmesh.Offset = Vector3.new(0,0.3)

rfmesh.MeshId = "rbxassetid://8207483622"
rfmesh.TextureId = "rbxassetid://8207483654"
rfmesh.Offset = Vector3.new(0.3, 0.2)

lfmesh.MeshId = "rbxassetid://8207483765"
lfmesh.TextureId = "rbxassetid://8207483802"
lfmesh.Offset =  Vector3.new(-0.3,0.2)

ramesh.MeshId = "rbxassetid://8207908572"
ramesh.TextureId = "rbxassetid://8207464008"
ramesh.Offset = Vector3.new(0.8, 0, 0.2)

lamesh.MeshId = "rbxassetid://8207908333"
lamesh.TextureId = "rbxassetid://8207464117"
lamesh.Offset = Vector3.new(-0.8, 0, 0.2)


rhmesh.MeshId = "rbxassetid://8207907900"
lhmesh.MeshId = "rbxassetid://8207908100"
lhmesh.Offset = Vector3.new(-0.85, -0.2, 0.1)
rhmesh.Offset = Vector3.new(0.85, -0.2, 0.15)
rhmesh.TextureId = "rbxassetid://8207908410"
lhmesh.TextureId = "rbxassetid://8207908410"

local face = vis.head.face
local debounce = false
local char = workspace:FindFirstChild("char")

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
	
		
		head.CFrame = vis.head.CFrame + Vector3.new(0,0.1,0)
		head2.CFrame = head.CFrame
		torso.CFrame = vis.torso.CFrame

		lfoot.CFrame = vis.legB.CFrame 
		rfoot.CFrame = vis.legA.CFrame

		larm.CFrame = vis.armB.CFrame
		rarm.CFrame = vis.armA.CFrame  
		
		lhand.CFrame = vis.armD.CFrame
		rhand.CFrame = vis.armC.CFrame
		
		--head animation
		if face.Texture == "rbxassetid://1451094768" then --idle
			hmesh.TextureId = "rbxassetid://8208054276"
			
		elseif face.Texture == "rbxassetid://1451125125" then --idle blink1
			hmesh.TextureId = "rbxassetid://8230691026"
			
		elseif face.Texture == "rbxassetid://1451125369" then -- idle blink 2
			hmesh.TextureId = "rbxassetid://8230691456"
			
		elseif face.Texture == "rbxassetid://1451124286" then -- happy
			hmesh.TextureId = "rbxassetid://8230690436"
			
		else
			--pain
			hmesh.TextureId = "rbxassetid://8230724945"
		end
		sfxinit()
		vis.trs.shadow.Size = vis.trs.shadow.Size * Vector3.new(1.52361605,1,1.52361605)
	else
		vis = workspace:WaitForChild("vis")
		char = workspace:WaitForChild("char")
		face = vis.head.face
	end
end)

local function dashfx()
	local c = vis2:Clone()
	local b = Instance.new("BodyForce", char)
	b.Force = char.CFrame.lookVector *50
	for i, v in pairs(c:GetChildren()) do
		v.Transparency = 0.8
	end
	c.Parent = workspace
	debris:AddItem(c, 0.2)
	debris:AddItem(b, 0.2)

	for i, v in pairs(workspace:GetDescendants()) do
		if v.Name == "breakable" then
			local magnitude = (v.Position - char.Position).Magnitude
			if magnitude < 10 and v.Transparency == 0 then
				v:Destroy()
				local s = Instance.new("Sound", vis.torso)
				s.Name = "destruct"
				s.SoundId = "rbxassetid://386684853"
				s.PlaybackSpeed = 2
				s.Volume = 0.5
				s.PlayOnRemove = true
				s:Destroy()
			end

		end
	end

end

uis.InputBegan:Connect(function(input, gpe)
	--	print("yumput began")

	if input.UserInputType == Enum.UserInputType.Keyboard then
		if input.KeyCode == Enum.KeyCode.Q and debounce == false then
			--if workspace:FindFirstChild("vis") then
			debounce = true
			hmesh.VertexColor = Vector3.new(1.5, 0.5, 0.5)
			hmesh2.VertexColor = Vector3.new(1.5, 0.5, 0.5)
			local s = Instance.new("Sound", vis.torso)
			s.Name = "shouldersound"
			s.SoundId = "rbxassetid://78541114"
			s.PlaybackSpeed = 2
			s.Volume = 1
			s.PlayOnRemove = true
			s:Destroy()
			for c = 1, 50 do
				dashfx()
				task.wait()
			end
			task.wait(5)
			hmesh.VertexColor = Vector3.new(1, 1, 1)
			hmesh2.VertexColor = Vector3.new(1, 1, 1)
			debounce = false
			--else
			--	vis = workspace:WaitForChild("vis")
			--end
		end
	end
end)
