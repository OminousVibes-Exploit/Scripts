local a=game:GetService"ContentProvider"
local b=game:GetService"CoreGui"
local c=game:GetService"Lighting"
local d=game:GetService"Players"
local e=game:GetService"ProximityPromptService"
local f=game:GetService"Workspace"







local g="Intruder"
local h="v1.0"
local i="TerminalVibes"
local j="intruder"

local k={
[12545349775]=12,
[8939045894]=57,
}

local l={
["room"]="Error Room",
["outside"]="Backyard",
["street"]="Street",
["frontDoor"]="Front Door",
["livingRoom"]="Living Room",
["stairs"]="Basement Stairs",
["basement"]="Basement",
["hallway"]="Hallway",
}







do
local m=game.PlaceId
if not k[m]then
warn"Place not supported"
return setclipboard("["..m.."] = "..game.PlaceVersion..",")
end
end
do
local m=j..h
if getgenv()[m]then
return
end
getgenv()[m]=true
end
do
local m
m=hookfunction(a.PreloadAsync,function(n,o,p)
if table.find(o,b)then
local q=function(q,r)
if q:match"^rbxasset://"or q:match"^rbxthumb://"then
return p(q,r)
end
end
warn"Anticheat Check Detected"
return m(n,o,q)
end
return m(n,o,p)
end)
end







local m="https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/"

local n=loadstring(game:HttpGet(m.."Library.lua"))()
local o=loadstring(game:HttpGet(m.."addons/SaveManager.lua"))()
local p=loadstring(game:HttpGet(m.."addons/ThemeManager.lua"))()





























local q
do
local r,s=type,typeof
q=setmetatable({},{
__tostring=function()
return"Bin"
end,
})
q.__index=q
function q.new(...)
local t=setmetatable({},q)
return t:constructor(...)or t
end
function q.constructor(t)end
function q.add(t,u,v)
local w={
item=u,
method=v,
}
if t.head==nil then
t.head=w
end
if t.tail then
t.tail.next=w
end
t.tail=w
return u
end
function q.destroy(t)
while t.head do
local u=t.head.item
local v=t.head.method
if v then
u[v](u)
elseif r(u)=="function"then
u()
elseif s(u)=="RBXScriptConnection"then
u:Disconnect()
elseif r(u)=="thread"then
task.cancel(u)
elseif u.destroy~=nil then
u:destroy()
elseif u.Destroy~=nil then
u:Destroy()
end
t.head=t.head.next
end
end
function q.isEmpty(t)
return t.head==nil
end
end



local r
do
r={}
r.__index=r
function r.__tostring(s)
return"BaseComponent - "..s.instance:GetFullName()
end


local s,t,u=setmetatable,assert,task.defer


function r.new(v,...)
local w=s({},r)
w=w:constructor(v,...)or w
w:run()
return w
end


function r.constructor(v,w,...)
v.instance=w
v.running=false
v.destructed=false
v._maid=q.new()
v._maid:add(w.Destroying:Connect(function()
if not v.destructed then
v:destroy()
end
end))
end


function r.onStart(v)end


function r.run(v)
t(not v.running,"["..v:__tostring().."] is already running")
u(function()
v.running=true
if not v.destructed then
v:onStart()
end
end)
end

function r.destroy(v)
t(not v.destructed,"["..v:__tostring().."] is already destroyed")
v.running=false
v.destructed=true
v._maid:destroy()
end
end
























local s=d.LocalPlayer
local t=s.PlayerGui

local u=f:WaitForChild("Values",25)





local v local w=function(







w, x)
if w then
local y={
message=x.message or"",
duration=x.duration or 5,
}
n:Notify(y.message,y.duration)
end end










do
local x=r
v=setmetatable({},{__index=x})
v.__index=v

function v.__tostring(y)
return"MapComponent - "..y.instance:GetFullName()
end
v.attached={}


function v.new(y,...)
local z=setmetatable({},v)
z=z:constructor(y,...)or z
z:run()
return z
end


function v.constructor(y,z)
x.constructor(y,z)
y.phone=z:WaitForChild("Phone",10)
end


function v.onStart(y)
x.onStart(y)
v.attached[y.instance]=y

y._maid:add(y.phone.Speaker.isBroken.Changed:Connect(function(z)
w(z and Toggles["alerts.phone.broken"].Value,{
message="Phone is ringing!",
duration=5,
})
end))
end


function v.destroy(y)
v.attached[y.instance]=nil
x.destroy(y)
end
end







n:SetWatermark"Linoria Community (OminousVibes)"
n:Notify"Loading UI..."

do
local x=n:CreateWindow(g.." ("..h..")")

do
local y=x:AddTab"Gameplay"

do
local z=y:AddLeftGroupbox"Alerts"

z:AddToggle("alerts.intruder.entered",{
Text="Intruder Entered",
Default=false,
Tooltip="Alerts you when the intruder enters your room!",
})

z:AddToggle("alerts.intruder.position",{
Text="Intruder Moved",
Default=false,
Tooltip="Alerts you when the intruder moves to another room!",
})

z:AddToggle("alerts.phone.broken",{
Text="Phone Ringing",
Default=false,
Tooltip="Alerts you when the phone is ringing!",
})
end
end

do
local y=x:AddTab"Blatant"

do
local z=y:AddLeftGroupbox"Proximity Prompt"
z:AddToggle("blatant.prompt.instant",{
Text="Instant Interact",
Default=false,
Tooltip="Instantly triggers the prompt when interacted!",
})
end
end

do
local y=x:AddTab"Visuals"

do
local z=y:AddLeftGroupbox"World Render"
z:AddToggle("visuals.lighting.darkvision",{
Text="Dark Vision",
Default=false,
Tooltip="Improves vision in the dark!",
})
end
end

do
local y=x:AddTab"Credits"

local z=y:AddLeftGroupbox"Credits"
z:AddLabel"OminousVibes - Creator"
z:AddLabel"Inori @v3rm - UI Library"
z:AddDivider()
z:AddLabel"Contributors:"
z:AddLabel"> IAmAGoodScammer @v3rm"
z:AddLabel"> brickmane @v3rm"
z:AddLabel"> yuuiz#1336 @Discord"
z:AddDivider()
z:AddLabel"Donators:"
z:AddLabel"> reversing#2937 @Discord"

local A=y:AddRightGroupbox"Socials"
A:AddButton("Discord Server",function()
setclipboard"https://discord.gg/8PATx7UKXZ"
end)
end

do
local y=x:AddTab"Settings"

p:SetLibrary(n)
o:SetLibrary(n)

p:SetFolder(i)
o:SetFolder(i.."/"..j)

o:IgnoreThemeSettings()
o:SetIgnoreIndexes{"MenuKeybind"}

o:BuildConfigSection(y)
p:ApplyToTab(y)

local z=y:AddLeftGroupbox"Menu"
z:AddButton("Unload",function()
n:Unload()
end)
z:AddLabel"Menu bind":AddKeyPicker("MenuKeybind",{Default="End",NoUI=true,Text="Menu keybind"})

z:AddToggle("Keybinds",{Text="Show Keybinds Menu",Default=true}):OnChanged(function()
n.KeybindFrame.Visible=Toggles.Keybinds.Value
end)
z:AddToggle("Watermark",{Text="Show Watermark",Default=true}):OnChanged(function()
n:SetWatermarkVisibility(Toggles.Watermark.Value)
end)
end
end

n:Notify"UI Built! [Right Ctrl or Right Shift]"
o:LoadAutoloadConfig()









e.PromptButtonHoldBegan:Connect(function(x,y)
local z=Toggles["blatant.prompt.instant"].Value
if z then
fireproximityprompt(x)
end
end)


u.intruderPos.Changed:Connect(function(x)
if Toggles["alerts.intruder.position"].Value then
local y=l[x]or x.." (Unknown)"
w(true,{
message="Intruder moved to "..y,
duration=10,
})
end
end)
u.isInRoom.Changed:Connect(function(x)
w(Toggles["alerts.intruder.entered"].Value,{
message=x and"Intruder entered your room!"or"Intruder left your room!",
duration=5,
})
end)

local x=t.Rooms
local y=x.Vent
local z=y.Close
z:GetPropertyChangedSignal"Visible":Connect(function()
local A=z.Visible
if A then
w(Toggles["alerts.intruder.position"].Value,{
message="Intruder is in vents (Turn off lights)!",
duration=10,
})
else
w(Toggles["alerts.intruder.position"].Value,{
message="Intruder may be entering!",
duration=5,
})
end
end)


local A=q.new()
Toggles["visuals.lighting.darkvision"]:OnChanged(function()
local B=Toggles["visuals.lighting.darkvision"].Value
if B then
A=q.new()


local C=20
local D=25


local E=c.FogEnd
local F=false


c.FogEnd=E+D

local G=A:add(Instance.new"ColorCorrectionEffect")
G.Enabled=E<C and true or false
G.TintColor=Color3.fromRGB(150,255,150)
G.Parent=c


A:add(c:GetPropertyChangedSignal"FogEnd":Connect(function()
if not F then
local H=c.FogEnd
E=H
G.Enabled=E<C and true or false

F=true
c.FogEnd=E+D
F=false
end
end))
A:add(function()
F=true
c.FogEnd=E
F=false
end)
else
A:destroy()
end
end)







local B=f:WaitForChild("Map",25)
if B then
v.new(B)
end

do
local C=game.PlaceId
local D=game.PlaceVersion
local E=k[C]
if D>E then
n:Notify"Game has been updated! Please be careful when using this script."
n:Notify"The place ID and Version has been copied to your clipboard."
setclipboard("["..tostring(C).."] = "..tostring(D)..",")
end
end

return n:Notify("["..g.."] Loaded! ("..h..")")
