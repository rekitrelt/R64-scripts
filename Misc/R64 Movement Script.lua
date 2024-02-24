--[[
C = teleport to cursor
V = fly in direction of camera (or change direction relative to that with wasd)
B = fly upwards
E = dive in the direction you are moving/holding/facing
N = hold anchor
Z/X = save/load position

- <3 rekitrelt

--]]

charscrpt = getsenv(game.Players.LocalPlayer.PlayerScripts.CharacterScript)
plr = game.Players.LocalPlayer
char = game.stinky.char
mouse = plr:GetMouse()
vdown = false
bdown = false
local function checkdir()
	cameraclone = game.Workspace.Camera:Clone()
	direc = cameraclone.CFrame.LookVector
	lookvec = cameraclone.CFrame.LookVector
	leftvec = -cameraclone.CFrame.RightVector
	backvec = cameraclone.CFrame.ZVector
	rightvec = cameraclone.CFrame.RightVector
	if wdown and not sdown then
	    add1 = lookvec
	elseif sdown and not wdown then
	    add1 = backvec
	end
	if adown and not ddown then
	    add2 = leftvec
	elseif ddown and not adown then
	    add2 = rightvec
	end
	if add1 and add2 then
	    direc = add1:Lerp(add2, .5)
	elseif add1 or add2 then
	    direc = add1 or add2
	end
	directioncfr = Vector3.new(direc.X, 0, direc.Z)
	add1 = nil
	add2 = nil
end
mouse.KeyDown:connect(function(key)
    if key == "c" then
        if mouse.Target then
            char.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)
	    if charscrpt and charscrpt.point then
		charscrpt.point = CFrame.new(Vector3.new(), game.Workspace.Camera.CFrame.lookVector)
	    end
        end
    end

    if key == "v" then
	vdown = true
    end
    if key == "b" then
	bdown = true
    end
    if key == "e" then
	char.Anchored = false
	if charscrpt and charscrpt.point then
            dontset = false
    	    checkdir()
    	    dir = CFrame.new(Vector3.new(), directioncfr)
    	    if not dontset then
    	    	charscrpt.point = dir
    	    end
    	end
    end
    if key == "w" then
	wdown = true
    end
    if key == "a" then
	adown = true
    end
    if key == "s" then
	sdown = true
    end
    if key == "d" then
	ddown = true
    end
    if key == "n" then
	ndown = true
    end
    if key == "z" then
        savedpos = char.Position
    end
    if key == "x" then
        char.Position = savedpos
    end
end)
mouse.KeyUp:connect(function(key)
    if key == "v" then
	vdown = false
    end
    if key == "b" then
	bdown = false
    end
    if key == "w" then
	wdown = false
    end
    if key == "a" then
	adown = false
    end
    if key == "s" then
	sdown = false
    end
    if key == "d" then
	ddown = false
    end
    if key == "n" then
	ndown = false
    end
end)


local savedpos

function round(x, n)
    n = math.pow(10, n or 0)
    x = x * n
    if x >= 0 then x = math.floor(x + 0.5) else x = math.ceil(x - 0.5) end
    return x / n
end

while wait() do
    if vdown then
	checkdir()
	char.Velocity = direc * 50
    end
    if bdown then
	char.Velocity = char.CFrame.upVector * 50
    end
    if ndown then
	char.Anchored = true
    elseif char.Anchored then
	char.Anchored = false
    end
end
