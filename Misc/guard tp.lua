local Player = game:GetService("Players").LocalPlayer

for i,v in pairs (game.workspace.knoddy:GetChildren()) do
if v.Name == "guard" then

v.col.Position = game.workspace.char.Position + Vector3.new(10, 0, 0)

end
end