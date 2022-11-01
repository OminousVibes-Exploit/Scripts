local a=game:GetService'ContentProvider'local b=game:GetService'CoreGui'local c=
game:GetService'Players'local d=game:GetService'RunService'local e=game:
GetService'Workspace'local f='DEFLECT'local g='v1.0'local h='OminousVibes'local
i='deflect'local j={[10889408214]=421}do if getgenv()[f]then return end getgenv(
)[f]=true end do local k k=hookfunction(a.PreloadAsync,function(l,m,n)if table.
find(m,b)then local o=function(o,p)if o:match'^rbxasset://'or o:match
'^rbxthumb://'then return n(o,p)end end warn'Anticheat Check Detected'return k(l
,m,o)end return k(l,m,n)end)end local k=
[[https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/]]local l=
loadstring(game:HttpGet(k..'Library.lua'))()local m=loadstring(game:HttpGet(k..
'addons/SaveManager.lua'))()local n=loadstring(game:HttpGet(k..
'addons/ThemeManager.lua'))()local o=c.LocalPlayer local p=o:WaitForChild(
'PlayerGui',5):WaitForChild('MainGui',5):WaitForChild('Frame',5):WaitForChild(
'Mobile',5)local q=function(q,r,...)l:Notify(r:format(...),q or 5)end local r=
function(r,s)return math.deg(math.acos(r:Dot(s)))end local s do s={}s.__index=s
function s.new(t,...)local u=setmetatable({},s)return u:constructor(t,...)or u
end function s.constructor(t,u,...)t.instance=u t.destructed=false t.
_destroyListener=t.instance.Destroying:Connect(function()t:destroy()end)task.
defer(function()if not t.destructed then t:onInit()end if not t.destructed then
t:onStart()end end)end function s.onInit(t)end function s.onStart(t)end function
s.destroy(t)if t.destructed then return error('Component already destroyed!',1)
end t.destructed=true t._destroyListener:Disconnect()end end local t do local u=
s t=setmetatable({},{__index=u})t.__index=t t.attached={}local v=Vector3.new(1,0
,1)function t.new(w,...)local x=setmetatable({},t)return x:constructor(w,...)or
x end function t.constructor(w,x)u.constructor(w,x)w.hitbox=x:WaitForChild(
'Touch',1)w.power=x:WaitForChild('Power',1)w.target=x:WaitForChild('Tracking',1)
w.deflect=x:WaitForChild('WasHit',1)w.velocity=x:WaitForChild('Main',1):
WaitForChild('BodyVelocity',1)w.lastDeflect=0 w.active=not w.deflect.Value w.
_connections={}end function t.onInit(w)end function t.onStart(w)t.attached[w.
instance]=w w:onLocked(w.deflect.Value)w._connections[1]=w.target.Changed:
Connect(function(x)w:onLocked(x)end)w._connections[2]=w.deflect.Changed:Connect(
function(x)w.active=not x end)end function t.onLocked(w,x)if x==o.Character then
if Toggles.DEFLECT_ALERT.Value then q(1,'[Auto-Deflect]: Ball is tracking you!')
end end end function t.onTick(w,x)local y=w.target.Value if y==o.Character and w
.active then local z=8+(Options.DEFLECT_LATENCY.Value/50)+(w.power.Value/20)
local A=w.hitbox.Position local B=w.hitbox.AssemblyLinearVelocity if B.Magnitude
>=4 then local C=y.HumanoidRootPart.Position-A local D=r((B*v).Unit,(C*v).Unit)
local E=C.Magnitude if E<=z and(E<=5 or D<=25)then w:onDeflect()end end end end
function t.onDeflect(w)local x=Toggles.DEFLECT_ENABLED.Value and Options.
DEFLECT_KEYBIND:GetState()if x then local y=os.clock()if y-w.lastDeflect>0.1
then firesignal(p.MouseButton1Down)w.lastDeflect=y if Toggles.DEFLECT_ALERT.
Value then q(1,'[Auto-Deflect]: Deflected ball!')end end end end function t.
destroy(w)u.destroy(w)t.attached[w.instance]=nil for x,y in ipairs(w.
_connections)do y:Disconnect()end end end l:SetWatermark
'Linoria Community (OminousVibes)'l:Notify'Loading UI...'do local u=l:
CreateWindow(f..' ('..g..')')do local v=u:AddTab'Gameplay'do local w=v:
AddLeftTabbox'Auto-Deflect'local x=w:AddTab'Deflect'x:AddToggle(
'DEFLECT_ENABLED',{Text='Auto-Deflect',Default=false}):AddKeyPicker(
'DEFLECT_KEYBIND',{Text='Auto-Deflect',Default='G',Mode='Toggle'})local y=w:
AddTab'Advanced Settings'y:AddToggle('DEFLECT_ALERT',{Text='Deflect Alerts',
Default=false})y:AddSlider('DEFLECT_LATENCY',{Text='Network Latency',Min=10,Max=
1000,Default=0,Rounding=0,Suffix='ms'})end end do local v=u:AddTab'Visuals'end
do local v=u:AddTab'Credits'local w=v:AddLeftGroupbox'Credits'w:AddLabel
'OminousVibes - Creator'w:AddLabel'Inori @v3rm - UI Library'w:AddDivider()w:
AddLabel'Contributors:'w:AddLabel'> IAmAGoodScammer @v3rm'w:AddLabel
'> brickmane @v3rm'w:AddLabel'> yuuiz#1336 @Discord'w:AddDivider()w:AddLabel
'Donators:'w:AddLabel'> reversing#2937 @Discord'local x=v:AddRightGroupbox
'Socials'x:AddButton('Discord Server',function()setclipboard
'https://discord.gg/8PATx7UKXZ'end)end do local v=u:AddTab'Settings'n:
SetLibrary(l)m:SetLibrary(l)n:SetFolder(h)m:SetFolder(h..'/'..i)m:
IgnoreThemeSettings()m:SetIgnoreIndexes{'MenuKeybind'}m:BuildConfigSection(v)n:
ApplyToTab(v)local w=v:AddLeftGroupbox'Menu'w:AddButton('Unload',function()l:
Unload()end)w:AddLabel'Menu bind':AddKeyPicker('MenuKeybind',{Default='End',NoUI
=true,Text='Menu keybind'})w:AddToggle('Keybinds',{Text='Show Keybinds Menu',
Default=true}):OnChanged(function()l.KeybindFrame.Visible=Toggles.Keybinds.Value
end)w:AddToggle('Watermark',{Text='Show Watermark',Default=true}):OnChanged(
function()l:SetWatermarkVisibility(Toggles.Watermark.Value)end)end end l:Notify
'UI Built! [Right Ctrl or Right Shift]'m:LoadAutoloadConfig()local u=function(u)
for v,w in pairs(t.attached)do w:onTick(u)end end d.Heartbeat:Connect(u)local v=
function(v)if v.Name=='Ball'then t.new(v)end end e.ChildAdded:Connect(v)for w,x
in ipairs(e:GetChildren())do v(x)end do local y=game.PlaceId local z=game.
PlaceVersion local A=j[y]if not A then l:Notify
[[Unable to recognize Place ID; Please contact the creator of the script.]]l:
Notify'The place ID and Version has been copied to your clipboard.'setclipboard(
'['..tostring(y)..'] = '..tostring(z)..',')elseif z>A then l:Notify
[[Game has been updated! Please be careful when using this script.]]l:Notify
'The place ID and Version has been copied to your clipboard.'setclipboard('['..
tostring(y)..'] = '..tostring(z)..',')end end return l:Notify('['..f..
'] Loaded! ('..g..')')
