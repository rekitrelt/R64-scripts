--Bossfight no sunbits (hurty projectiles)

while true do
	wait()
	local c = workspace.Boss.push:GetChildren()
	for i = 1,#c do
		if c[i].Name == "sunbit" then
	            c[i]:Destroy()
	        end
	end
end
