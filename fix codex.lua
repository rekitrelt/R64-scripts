local buttons = game.CoreGui:WaitForChild("Codex"):WaitForChild("gui"):WaitForChild("tabs"):WaitForChild("editor"):WaitForChild("buttons")
for i, v in pairs(buttons:GetChildren()) do
	if v.Name ~= "executeClipboard" then
		v:Destroy()
	end
end
game.CoreGui.Codex.gui.tabs.editor.tabButtons.Visible = false
game.CoreGui.Codex.gui.tabs.editor.contentContainer.Visible = false
for i, v in pairs(game.CoreGui.Codex.gui.tabs:GetChildren()) do
	if v.Name ~= "editor" then
		v:Destroy()
	else
		v.Position = UDim2.new(0,0,1,0)
	end
end
game.CoreGui.Codex.gui.navbar:Destroy()
game.CoreGui.Codex.gui.fade:Destroy()
print("codex fixed :D")