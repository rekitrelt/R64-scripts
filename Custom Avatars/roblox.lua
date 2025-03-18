--// updated for accessory fix
local vis = workspace:WaitForChild("vis")
local vis2 = game:GetObjects("rbxassetid://129005867704496")[1]
vis2.Parent = workspace.char
vis2.Name = "vis2"
--create the important stuff
local head = vis2.Head
local torso = vis2.Torso
local rfoot = vis2["Right Leg"]
local lfoot = vis2["Left Leg"]

local rarm = vis2["Right Arm"]
local larm = vis2["Left Arm"]

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
--make the visuals

vis2.Humanoid:Destroy()
local humanoid = Instance.new("Humanoid", vis2)
humanoid.MaxHealth = 0
humanoid.BreakJointsOnDeath = false
humanoid.RequiresNeck = false

--// https://devforum.roblox.com/t/humanoidaddaccessory-does-not-work-with-fe-from-a-localscript/33657/4
function weldAttachments(attach1, attach2)
    local weld = Instance.new("Weld")
    weld.Part0 = attach1.Parent
    weld.Part1 = attach2.Parent
    weld.C0 = attach1.CFrame
    weld.C1 = attach2.CFrame
    weld.Parent = attach1.Parent
    return weld
end
 
local function buildWeld(weldName, parent, part0, part1, c0, c1)
    local weld = Instance.new("Weld")
    weld.Name = weldName
    weld.Part0 = part0
    weld.Part1 = part1
    weld.C0 = c0
    weld.C1 = c1
    weld.Parent = parent
    return weld
end
 
local function findFirstMatchingAttachment(model, name)
    for _, child in pairs(model:GetChildren()) do
        if child:IsA("Attachment") and child.Name == name then
            return child
        elseif not child:IsA("Accoutrement") and not child:IsA("Tool") then -- Don't look in hats or tools in the character
            local foundAttachment = findFirstMatchingAttachment(child, name)
            if foundAttachment then
                return foundAttachment
            end
        end
    end
end
 
function Accessory(character, accoutrement)  
    accoutrement.Parent = character
    local handle = accoutrement:FindFirstChild("Handle")
    if handle then
        local accoutrementAttachment = handle:FindFirstChildOfClass("Attachment")
        if accoutrementAttachment then
            local characterAttachment = findFirstMatchingAttachment(character, accoutrementAttachment.Name)
            if characterAttachment then
                weldAttachments(characterAttachment, accoutrementAttachment)
            end
        else
            local head = character:FindFirstChild("Head")
            if head then
                local attachmentCFrame = CFrame.new(0, 0.5, 0)
                local hatCFrame = accoutrement.AttachmentPoint
                buildWeld("HeadWeld", head, head, handle, attachmentCFrame, hatCFrame)
            end
        end
    end
end

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

	if workspace:FindFirstChild("vis") and workspace.vis:FindFirstChild("trs") then
		vis = workspace.vis
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
	end
	
end)
