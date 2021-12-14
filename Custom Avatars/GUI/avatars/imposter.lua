local vis = workspace:WaitForChild("vis")
local vis2 = Instance.new("Model", workspace.char)
vis2.Name = "vis2"
--create the important stuff
local head = Instance.new("Part", vis2)
local torso = Instance.new("Part", vis2)
local torso2 = Instance.new("Part", vis2)
local torso3 = Instance.new("Part", vis2)
local rfoot = Instance.new("Part", vis2)
local lfoot = Instance.new("Part", vis2)
local rarm = Instance.new("Part", vis2)
local larm = Instance.new("Part", vis2)

head.Anchored = true
torso.Anchored = true
torso2.Anchored = true
torso3.Anchored = true
rfoot.Anchored = true
lfoot.Anchored = true
rarm.Anchored = true
larm.Anchored = true

head.CanCollide = false
torso.CanCollide = false
torso2.CanCollide = false
torso3.CanCollide = false
rfoot.CanCollide = false
lfoot.CanCollide = false
rarm.CanCollide = false
larm.CanCollide = false

head.Name = "head"
torso.Name = "torso"
torso2.Name = "torso2"
torso3.Name = "torso3"
rfoot.Name = "rfoot"
lfoot.Name = "lfoot"
rarm.Name = "rarm"
larm.Name = "larm"

head.Transparency = 1
larm.Transparency = 1
rarm.Transparency = 1
torso3.Transparency = 0.7

--make the visuals
tmesh = Instance.new("SpecialMesh", torso)
t2mesh = Instance.new("SpecialMesh", torso2)
t3mesh = Instance.new("SpecialMesh", torso3)
rfmesh = Instance.new("SpecialMesh", rfoot)
lfmesh = Instance.new("SpecialMesh", lfoot)

rhmesh = Instance.new("SpecialMesh", rhand)
lhmesh = Instance.new("SpecialMesh", lhand)

tmesh.MeshId = "rbxassetid://5802030631"
tmesh.TextureId = "rbxassetid://5801999498"
tmesh.Offset = Vector3.new(0,1.5,0)
t2mesh.MeshId = "rbxassetid://5802033319"
t2mesh.TextureId = "rbxassetid://5802064714"
t2mesh.Offset = Vector3.new(0, 1.3, 1.5)
t3mesh.MeshId = "rbxassetid://5802033319"
t3mesh.TextureId = "rbxassetid://8243369581"
t3mesh.Offset = Vector3.new(0, 1.3, 1.5)

rfmesh.MeshId = "rbxassetid://5801983607"
rfmesh.TextureId = "rbxassetid://5801999498"
rfmesh.Offset = Vector3.new(0.35, 0.45, 0.4)

lfmesh.MeshId = "rbxassetid://5801984137"
lfmesh.TextureId = "rbxassetid://5801999498"
lfmesh.Offset =  Vector3.new(-0.35, 0.45, 0.4)

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
        torso2.CFrame = vis.torso.CFrame - Vector3.new(0,0.9)
        torso3.CFrame = vis.torso.CFrame - Vector3.new(0,0.9)
        

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
game.stinky.vis2.torso2.Size = Vector3.new(0.05,0.05,0.05)
game.stinky.vis2.torso3.Size = Vector3.new(0.05,0.05,0.05)
game.stinky.vis2.rfoot.Size = Vector3.new(0.05,0.05,0.05)
game.stinky.vis2.lfoot.Size = Vector3.new(0.05,0.05,0.05)
game.stinky.vis2.rarm.Size = Vector3.new(0.05,0.05,0.05)
game.stinky.vis2.larm.Size = Vector3.new(0.05,0.05,0.05)
game.stinky.vis2.rhand.Size = Vector3.new(0.05,0.05,0.05)
game.stinky.vis2.lhand.Size = Vector3.new(0.05,0.05,0.05)
