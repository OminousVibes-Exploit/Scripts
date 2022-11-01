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
'Mobile',5)local q={'mouse1click','simulated'}local r=function(r,s,...)l:Notify(
s:format(...),r or 5)end local s=function(s,t)return math.deg(math.acos(s:Dot(t)
))end local t do t={}t.__index=t function t.new(u,...)local v=setmetatable({},t)
return v:constructor(u,...)or v end function t.constructor(u,v,...)u.instance=v
u.destructed=false u._destroyListener=u.instance.Destroying:Connect(function()u:
destroy()end)task.defer(function()if not u.destructed then u:onInit()end if not
u.destructed then u:onStart()end end)end function t.onInit(u)end function t.
onStart(u)end function t.destroy(u)if u.destructed then return error(
'Component already destroyed!',1)end u.destructed=true u._destroyListener:
Disconnect()end end local u do local v=t u=setmetatable({},{__index=v})u.__index
=u u.attached={}local w=Vector3.new(1,0,1)function u.new(x,...)local y=
setmetatable({},u)return y:constructor(x,...)or y end function u.constructor(x,y
)v.constructor(x,y)x.hitbox=y:WaitForChild('Touch',1)x.power=y:WaitForChild(
'Power',1)x.target=y:WaitForChild('Tracking',1)x.deflect=y:WaitForChild('WasHit'
,1)x.velocity=y:WaitForChild('Main',1):WaitForChild('BodyVelocity',1)x.
lastDeflect=0 x.active=not x.deflect.Value x._connections={}end function u.
onInit(x)end function u.onStart(x)u.attached[x.instance]=x x:onLocked(x.deflect.
Value)x._connections[1]=x.target.Changed:Connect(function(y)x:onLocked(y)end)x.
_connections[2]=x.deflect.Changed:Connect(function(y)x.active=not y end)end
function u.onLocked(x,y)if y==o.Character then if Toggles.DEFLECT_ALERT.Value
then r(1,'[Auto-Deflect]: Ball is tracking you!')end end end function u.onTick(x
,y)local z=x.target.Value if z==o.Character and x.active then local A=8+(Options
.DEFLECT_LATENCY.Value/50)+(x.power.Value/20)local B=x.hitbox.Position local C=x
.hitbox.AssemblyLinearVelocity if C.Magnitude>=4 then local D=z.HumanoidRootPart
.Position-B local E=s((C*w).Unit,(D*w).Unit)local F=D.Magnitude if F<=A and(F<=5
or E<=25)then x:onDeflect()end end end end function u.onDeflect(x)local y=not
Toggles.DEFLECT_KEYBIND.Value or Options.DEFLECT_KEYBIND:GetState()local z=
Toggles.DEFLECT_ENABLED.Value and y if z then local A=os.clock()if A-x.
lastDeflect>0.1 then if Options.DEFLECT_INPUT.Value==q[1]then mouse1click()else
firesignal(p.MouseButton1Down)end x.lastDeflect=A if Toggles.DEFLECT_ALERT.Value
then r(1,'[Auto-Deflect]: Deflected ball!')end end end end function u.destroy(x)
v.destroy(x)u.attached[x.instance]=nil for y,z in ipairs(x._connections)do z:
Disconnect()end end end l:SetWatermark'Linoria Community (OminousVibes)'l:Notify
'Loading UI...'do local v=l:CreateWindow(f..' ('..g..')')do local w=v:AddTab
'Gameplay'do local x=w:AddLeftTabbox'Auto-Deflect'local y=x:AddTab'Deflect'y:
AddToggle('DEFLECT_ENABLED',{Text='Auto-Deflect',Default=false})y:AddToggle(
'DEFLECT_KEYBIND',{Text='Use Keybind',Default=false}):AddKeyPicker(
'DEFLECT_KEYBIND',{Text='Auto-Deflect',Default='G',Mode='Toggle'})local z=x:
AddTab'Advanced Settings'z:AddToggle('DEFLECT_ALERT',{Text='Deflect Alerts',
Default=false})z:AddSlider('DEFLECT_LATENCY',{Text='Network Latency',Min=10,Max=
1000,Default=0,Rounding=0,Suffix='ms'})z:AddDropdown('DEFLECT_INPUT',{Text=
'Input Type',Values=q,Default=1,Multi=false})end end do local w=v:AddTab
'Visuals'end do local w=v:AddTab'Credits'local x=w:AddLeftGroupbox'Credits'x:
AddLabel'OminousVibes - Creator'x:AddLabel'Inori @v3rm - UI Library'x:
AddDivider()x:AddLabel'Contributors:'x:AddLabel'> IAmAGoodScammer @v3rm'x:
AddLabel'> brickmane @v3rm'x:AddLabel'> yuuiz#1336 @Discord'x:AddDivider()x:
AddLabel'Donators:'x:AddLabel'> reversing#2937 @Discord'local y=w:
AddRightGroupbox'Socials'y:AddButton('Discord Server',function()setclipboard
'https://discord.gg/8PATx7UKXZ'end)end do local w=v:AddTab'Settings'n:
SetLibrary(l)m:SetLibrary(l)n:SetFolder(h)m:SetFolder(h..'/'..i)m:
IgnoreThemeSettings()m:SetIgnoreIndexes{'MenuKeybind'}m:BuildConfigSection(w)n:
ApplyToTab(w)local x=w:AddLeftGroupbox'Menu'x:AddButton('Unload',function()l:
Unload()end)x:AddLabel'Menu bind':AddKeyPicker('MenuKeybind',{Default='End',NoUI
=true,Text='Menu keybind'})x:AddToggle('Keybinds',{Text='Show Keybinds Menu',
Default=true}):OnChanged(function()l.KeybindFrame.Visible=Toggles.Keybinds.Value
end)x:AddToggle('Watermark',{Text='Show Watermark',Default=true}):OnChanged(
function()l:SetWatermarkVisibility(Toggles.Watermark.Value)end)end end l:Notify
'UI Built! [Right Ctrl or Right Shift]'m:LoadAutoloadConfig()local v=function(v)
for w,x in pairs(u.attached)do x:onTick(v)end end d.Heartbeat:Connect(v)local w=
function(w)if w.Name=='Ball'then u.new(w)end end e.ChildAdded:Connect(w)for x,y
in ipairs(e:GetChildren())do w(y)end do local z=game.PlaceId local A=game.
PlaceVersion local B=j[z]if not B then l:Notify
[[Unable to recognize Place ID; Please contact the creator of the script.]]l:
Notify'The place ID and Version has been copied to your clipboard.'setclipboard(
'['..tostring(z)..'] = '..tostring(A)..',')elseif A>B then l:Notify
[[Game has been updated! Please be careful when using this script.]]l:Notify
'The place ID and Version has been copied to your clipboard.'setclipboard('['..
tostring(z)..'] = '..tostring(A)..',')end end return l:Notify('['..f..
'] Loaded! ('..g..')')
