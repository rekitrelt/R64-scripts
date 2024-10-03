### This is just where I upload my Robot 64 Scripts

Game: https://www.roblox.com/games/1111083356/Robot-64

# My github is back! :D
I added infinite yield modded to have a plugin auto-load for Robot 64 with many commands for scripts

if you have any suggestions feel free to @ me on discord or make an issue on this repo

### autoexec to fix mobile ui and bugs:
```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/rekitrelt/R64-scripts/main/R64%20mobile%20fix.lua"))()
```
### autoexec to turn codex (recommended) into just the execute clipboard button:
```lua
loadstring(game:HttpGet("https://github.com/rekitrelt/R64-scripts/blob/main/fix%20codex.lua"))()
```

# the main script; inf yield:
```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/rekitrelt/R64-scripts/main/R64%20inf%20yield%20Public.lua"))()
```

## or an inf yield plugin that works around not having getsenv:
https://github.com/rekitrelt/R64-scripts/blob/main/r64nosenv.iy

### heres most the commands the inf yield script adds:
these commands have many aliases
```
remember you can bind any of the following to keys:

rfly {toggle beebo flight}
r64noclip {toggle beebo noclip}
r64cursortp {teleports beebo to cursor}
r64changedirection {changes beebos direction as a double jump would}
saveposr64 {saves position and map}
loadposr64 {loads (tps) beebo to position and map}
roback {teleports you to where you last died}
anchorbeeb {toggle anchors beebo}
unanchorbeeb {toggle unanchors beebo}
rtp {robot teleport; teleport beebo}
fastmode {toggle beebo go zoom}
pound {toggle force beebo to pound}
swim {toggle air swim}
savegame {save robot 64}
clothing {gives all clothing}
hats [min] [max] [true/false] {sets a number range of ids to true or false}
skins [min] [max] [true/false] {sets a number range of ids to true or false}
dots [min] [max] [true/false] {sets a number range of ids to true or false}
ics [min] [max] [true/false] {sets a number range of ids to true or false and also makes the ic count in the top check the amount}
```
