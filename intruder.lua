local a=game:GetService"ContentProvider"
local b=game:GetService"CoreGui"
local c=game:GetService"Players"
local d=game:GetService"ProximityPromptService"
local e=game:GetService"Workspace"







local f="Intruder"
local g="v1.0"
local h="TerminalVibes"
local i="intruder"

local j={
[12545349775]=11,
[8939045894]=56,
}







do
local k=i..g
if getgenv()[k]then
return
end
getgenv()[k]=true
end
do
local k
k=hookfunction(a.PreloadAsync,function(l,m,n)
if table.find(m,b)then
local o=function(o,p)
if o:match"^rbxasset://"or o:match"^rbxthumb://"then
return n(o,p)
end
end
warn"Anticheat Check Detected"
return k(l,m,o)
end
return k(l,m,n)
end)
end







local k="https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/"

local l=loadstring(game:HttpGet(k.."Library.lua"))()
local m=loadstring(game:HttpGet(k.."addons/SaveManager.lua"))()
local n=loadstring(game:HttpGet(k.."addons/ThemeManager.lua"))()





























local o
do
local p,q=type,typeof
o=setmetatable({},{
__tostring=function()
return"Bin"
end,
})
o.__index=o
function o.new(...)
local r=setmetatable({},o)
return r:constructor(...)or r
end
function o.constructor(r)end
function o.add(r,s,t)
local u={
item=s,
method=t,
}
if r.head==nil then
r.head=u
end
if r.tail then
r.tail.next=u
end
r.tail=u
return s
end
function o.destroy(r)
while r.head do
local s=r.head.item
local t=r.head.method
if t then
s[t](s)
elseif p(s)=="function"then
s()
elseif q(s)=="RBXScriptConnection"then
s:Disconnect()
elseif p(s)=="thread"then
task.cancel(s)
elseif s.destroy~=nil then
s:destroy()
elseif s.Destroy~=nil then
s:Destroy()
end
r.head=r.head.next
end
end
function o.isEmpty(r)
return r.head==nil
end
end



local p
do
p={}
p.__index=p
function p.__tostring(q)
return"BaseComponent - "..q.instance:GetFullName()
end


local q,r,s=setmetatable,assert,task.defer


function p.new(t,...)
local u=q({},p)
u=u:constructor(t,...)or u
u:run()
return u
end


function p.constructor(t,u,...)
t.instance=u
t.running=false
t.destructed=false
t._maid=o.new()
t._maid:add(u.Destroying:Connect(function()
if not t.destructed then
t:destroy()
end
end))
end


function p.onStart(t)end


function p.run(t)
r(not t.running,"["..t:__tostring().."] is already running")
s(function()
t.running=true
if not t.destructed then
t:onStart()
end
end)
end

function p.destroy(t)
r(not t.destructed,"["..t:__tostring().."] is already destroyed")
t.running=false
t.destructed=true
t._maid:destroy()
end
end























local q=c.LocalPlayer

local r=e:WaitForChild("Map",25)
local s=e:WaitForChild("Values",25)





local t local u=function(







u, v)
if u then
local w={
message=v.message or"",
duration=v.duration or 5,
}
l:Notify(w.message,w.duration)
end end










do
local v=p
t=setmetatable({},{__index=v})
t.__index=t

function t.__tostring(w)
return"Component - "..w.instance:GetFullName()
end
t.attached={}


function t.new(w,...)
local x=setmetatable({},t)
x=x:constructor(w,...)or x
x:run()
return x
end


function t.constructor(w,x)
v.constructor(w,x)
end


function t.onStart(w)
t.attached[w.instance]=w
v.onStart(w)
end


function t.destroy(w)
t.attached[w.instance]=nil
v.destroy(w)
end
end







l:SetWatermark"Linoria Community (OminousVibes)"
l:Notify"Loading UI..."

do
local v=l:CreateWindow(f.." ("..g..")")

do
local w=v:AddTab"Gameplay"

do
local x=w:AddLeftGroupbox"Alerts"

x:AddToggle("alerts.intruder.entered",{
Text="Intruder Entered",
Default=false,
Tooltip="Alerts you when the intruder enters your room!",
})

x:AddToggle("alerts.intruder.position",{
Text="Intruder Moved",
Default=false,
Tooltip="Alerts you when the intruder moves to another room!",
})

x:AddToggle("alerts.phone.broken",{
Text="Phone Ringing",
Default=false,
Tooltip="Alerts you when the phone is ringing!",
})
end
end

do
local w=v:AddTab"Blatant"

do
local x=w:AddLeftGroupbox"Proximity Prompt"
x:AddToggle("blatant.prompt.instant",{
Text="Instant Interact",
Default=false,
Tooltip="Instantly triggers the prompt when interacted!",
})
end
end

do
local w=v:AddTab"Credits"

local x=w:AddLeftGroupbox"Credits"
x:AddLabel"OminousVibes - Creator"
x:AddLabel"Inori @v3rm - UI Library"
x:AddDivider()
x:AddLabel"Contributors:"
x:AddLabel"> IAmAGoodScammer @v3rm"
x:AddLabel"> brickmane @v3rm"
x:AddLabel"> yuuiz#1336 @Discord"
x:AddDivider()
x:AddLabel"Donators:"
x:AddLabel"> reversing#2937 @Discord"

local y=w:AddRightGroupbox"Socials"
y:AddButton("Discord Server",function()
setclipboard"https://discord.gg/8PATx7UKXZ"
end)
end

do
local w=v:AddTab"Settings"

n:SetLibrary(l)
m:SetLibrary(l)

n:SetFolder(h)
m:SetFolder(h.."/"..i)

m:IgnoreThemeSettings()
m:SetIgnoreIndexes{"MenuKeybind"}

m:BuildConfigSection(w)
n:ApplyToTab(w)

local x=w:AddLeftGroupbox"Menu"
x:AddButton("Unload",function()
l:Unload()
end)
x:AddLabel"Menu bind":AddKeyPicker("MenuKeybind",{Default="End",NoUI=true,Text="Menu keybind"})

x:AddToggle("Keybinds",{Text="Show Keybinds Menu",Default=true}):OnChanged(function()
l.KeybindFrame.Visible=Toggles.Keybinds.Value
end)
x:AddToggle("Watermark",{Text="Show Watermark",Default=true}):OnChanged(function()
l:SetWatermarkVisibility(Toggles.Watermark.Value)
end)
end
end

l:Notify"UI Built! [Right Ctrl or Right Shift]"
m:LoadAutoloadConfig()









d.PromptButtonHoldBegan:Connect(function(v,w)
local x=Toggles["blatant.prompt.instant"].Value
if x then
fireproximityprompt(v)
end
end)


s.intruderPos.Changed:Connect(function(v)
u(Toggles["alerts.intruder.position"].Value,{
message="Intruder moved to "..v,
duration=5,
})
end)
s.isInRoom.Changed:Connect(function(v)
u(Toggles["alerts.intruder.entered"].Value,{
message=v and"Intruder entered your room!"or"Intruder left your room!",
duration=5,
})
end)
r.Phone.Speaker.isBroken.Changed:Connect(function(v)
u(v and Toggles["alerts.phone.broken"].Value,{
message="Phone is ringing!",
duration=5,
})
end)








do
local v=game.PlaceId
local w=game.PlaceVersion
local x=j[v]
if not x then
l:Notify"Unable to recognize Place ID; Please contact the creator of the script."
l:Notify"The place ID and Version has been copied to your clipboard."
setclipboard("["..tostring(v).."] = "..tostring(w)..",")
elseif w>x then
l:Notify"Game has been updated! Please be careful when using this script."
l:Notify"The place ID and Version has been copied to your clipboard."
setclipboard("["..tostring(v).."] = "..tostring(w)..",")
end
end

return l:Notify("["..f.."] Loaded! ("..g..")")
