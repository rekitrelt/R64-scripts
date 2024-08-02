wait()
local donebefore = false
function resetcharscript()
    if game.workspace:WaitForChild("vis") and game.Players.LocalPlayer.PlayerScripts:WaitForChild("CharacterScript") then
        local lp = game.Players.LocalPlayer
        getgenv().char = getsenv(lp.PlayerScripts:WaitForChild("CharacterScript"))
        getgenv().char.trulyconsole = true
        if game.PlaceId == 6935553532 then
            local oldjump; oldjump = hookfunction(getgenv().char.jump, function()
                task.wait()
                oldjump()
            end)
            local olddive; olddive = hookfunction(getgenv().char.dive, function()
                task.wait()
                olddive()
            end)
            local oldtoattack; oldtoattack = hookfunction(getgenv().char.toattack, function(...)
                task.wait()
                oldtoattack(...)
            end)
        end
        local function onInputBegan(input, onui)
            if input.UserInputType == Enum.UserInputType.MouseButton1 and not onui then
                getgenv().char.toattack()
            elseif input.KeyCode == Enum.KeyCode.K and donebefore == false then
                donebefore = true
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
            end
        end
        game:GetService("UserInputService").InputBegan:Connect(onInputBegan)
        getgenv().char.UI:WaitForChild("mobile").Position = UDim2.new(0, 0, 1, 0)
    end
end
game.Players.LocalPlayer.PlayerScripts.DescendantRemoving:Connect(function(objectWhichWasRemoved)
    if objectWhichWasRemoved.Name == "CharacterScript" then
        resetcharscript()
    end
end)
resetcharscript()