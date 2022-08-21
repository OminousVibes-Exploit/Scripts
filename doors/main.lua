local a=game:GetService'Players'local b=game:GetService'ReplicatedStorage'local
c=game:GetService'RunService'local d=game:GetService'Workspace'local e=game:
GetService'ContentProvider'local f=game:GetService'CoreGui'do if getgenv().doors
then return end getgenv().doors=true end do local g g=hookfunction(e.
PreloadAsync,function(h,i,j)if table.find(i,f)then local k=function(k,l)if k:
match'^rbxasset://'or k:match'^rbxthumb://'then return j(k,l)end end warn
'Anticheat Check Detected'return g(h,i,k)end return g(h,i,j)end)end local g=
[[https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/]]local h=
loadstring(game:HttpGet(g..'Library.lua'))()local i=loadstring(game:HttpGet(g..
'addons/SaveManager.lua'))()local j=loadstring(game:HttpGet(g..
'addons/ThemeManager.lua'))()local k=syn and syn.protect_gui or function(k)end
local l=Drawing local m=a.LocalPlayer local n=b.GameData local o={['Beat']=true,
['Creak']=true,['Door']=true,['Doorknob']=true,['Ghost']=true,['Window Knock']=
true}local p=10 local q={}local r=function(r)if r then local s=r:FindFirstChild
'HumanoidRootPart'if s then local t=r:FindFirstChild'Humanoid'return t~=nil end
end return false end local s do s={}s.attached={}s.__index=s local t=d.
CurrentCamera d:GetPropertyChangedSignal'CurrentCamera':Connect(function()t=d.
CurrentCamera end)local u,v=Vector2.new,CFrame.new local w=t.
WorldToViewportPoint function s.new(x)local y=setmetatable({instance=x,
destructed=false},s)y.instance.AncestryChanged:Connect(function(z,A)if A==nil
then y:destroy()end end)return y:constructor(x)end function s.constructor(x,y)
local z=y local A=z:WaitForChild('FigureRagdoll',2.5)x.quad=l.new'Quad'x.root=A:
WaitForChild('Root',2.5)task.defer(x.onStart,x)return x end function s.onStart(x
)s.attached[x.instance]=x local y=x.quad y.Visible=false y.Transparency=0.75 y.
Color=Color3.new(1,0,0)y.Thickness=2 end function s.render(x)local y=x.quad
local z=x.root if Toggles.FIGURE_ESP.Value then local A=z.CFrame local B=z.Size
local C=w(t,(A*v(B.X*0.5,B.Y*0.5,0)).Position)local D=w(t,A*(v(-B.X*0.5,B.Y*0.5,
0)).Position)local E=w(t,A*(v(-B.X*0.5,-B.Y*0.5,0)).Position)local F=w(t,A*(v(B.
X*0.5,-B.Y*0.5,0)).Position)if math.min(C.Z,D.Z,E.Z,F.Z)>0 then y.PointA=u(D.X,D
.Y)y.PointB=u(C.X,C.Y)y.PointC=u(F.X,F.Y)y.PointD=u(E.X,E.Y)y.Visible=true else
y.Visible=false end else y.Visible=false end end function s.destroy(x)if x.
destructed then return else x.destructed=true end x.quad:Remove()s.attached[x.
instance]=nil end end local t do t={}t.attached={}t.__index=t local u=d.
CurrentCamera d:GetPropertyChangedSignal'CurrentCamera':Connect(function()u=d.
CurrentCamera end)local v,w=Vector2.new,CFrame.new local x=u.
WorldToViewportPoint function t.new(y)local z=setmetatable({instance=y,
destructed=false},t)z.instance.AncestryChanged:Connect(function(A,B)if B==nil
then z:destroy()end end)return z:constructor(y)end function t.constructor(y,z)y.
quad=l.new'Quad'y.root=(z.PrimaryPart or z:WaitForChild('RushNew',5))task.defer(
y.onStart,y)return y end function t.onStart(y)t.attached[y.instance]=y local z=y
.quad z.Visible=false z.Transparency=0.75 z.Color=Color3.new(1,0,0)z.Thickness=2
end function t.render(y)local z=y.quad local A=y.root if Toggles.RUSH_ESP.Value
then local B=A.CFrame local C=A.Size local D=x(u,(B*w(C.X*0.4,C.Y*0.6,0)).
Position)local E=x(u,B*(w(-C.X*0.4,C.Y*0.6,0)).Position)local F=x(u,B*(w(-C.X*
0.4,-C.Y*0.6,0)).Position)local G=x(u,B*(w(C.X*0.4,-C.Y*0.6,0)).Position)if math
.min(D.Z,E.Z,F.Z,G.Z)>0 then z.PointA=v(E.X,E.Y)z.PointB=v(D.X,D.Y)z.PointC=v(G.
X,G.Y)z.PointD=v(F.X,F.Y)z.Visible=true else z.Visible=false end else z.Visible=
false end end function t.destroy(y)if y.destructed then return else y.destructed
=true end y.quad:Remove()t.attached[y.instance]=nil end c.RenderStepped:Connect(
function()for y,z in pairs(t.attached)do z:render()end end)end local u do u={}u.
attached={}u.__index=u local v=d.CurrentCamera d:GetPropertyChangedSignal
'CurrentCamera':Connect(function()v=d.CurrentCamera end)local w,x=Vector2.new,
CFrame.new local y=v.WorldToViewportPoint function u.new(z)local A=setmetatable(
{instance=z,destructed=false},u)A.instance.AncestryChanged:Connect(function(B,C)
if C==nil then A:destroy()end end)return A:constructor(z)end function u.
constructor(z,A)z.quad=l.new'Quad'task.defer(z.onStart,z)return z end function u
.onStart(z)u.attached[z.instance]=z local A=z.quad A.Visible=false A.
Transparency=0.5 A.Color=Color3.new(0,0.5,1)A.Thickness=2 end function u.render(
z)local A=z.quad local B=z.instance.Door if Toggles.DOOR_ESP.Value then local C=
B.CFrame local D=B.Size local E=y(v,(C*x(D.X/2,D.Y/2,0)).Position)local F=y(v,C*
(x(-D.X/2,D.Y/2,0)).Position)local G=y(v,C*(x(-D.X/2,-D.Y/2,0)).Position)local H
=y(v,C*(x(D.X/2,-D.Y/2,0)).Position)if math.min(E.Z,F.Z,G.Z,H.Z)>0 then A.PointA
=w(F.X,F.Y)A.PointB=w(E.X,E.Y)A.PointC=w(H.X,H.Y)A.PointD=w(G.X,G.Y)A.Visible=
true else A.Visible=false end else A.Visible=false end end function u.destroy(z)
if z.destructed then return else z.destructed=true end z.quad:Remove()u.attached
[z.instance]=nil end c.RenderStepped:Connect(function(z)for A,B in pairs(u.
attached)do B:render()end end)end local v do v={}v.attached={}v.__index=v local
w=d.CurrentCamera d:GetPropertyChangedSignal'CurrentCamera':Connect(function()w=
d.CurrentCamera end)function v.new(x,y)local z=setmetatable({instance=x,
destructed=false},v)z.instance.AncestryChanged:Connect(function(A,B)if B==nil
then z:destroy()end end)return z:constructor(x,y)end function v.constructor(x,y,
z)x.name=z or y.Name x.label=l.new'Text'x.indicator=l.new'Circle'x.outline=l.new
'Circle'task.defer(x.onStart,x)return x end function v.onStart(x)v.attached[x.
instance]=x local y,z,A=x.label,x.indicator,x.outline y.Text=x.name y.Color=
Color3.new(1,1,0.25)y.Size=18 y.Center=true y.Outline=true y.Visible=false z.
Color=Color3.new(1,1,0.25)z.Thickness=1 z.NumSides=12 z.Radius=5 z.Filled=true z
.Visible=false A.Color=Color3.new()A.Thickness=2 A.NumSides=12 A.Radius=5 A.
Filled=false A.Visible=false A.ZIndex=2 end function v.render(x)local y,z,A=x.
label,x.indicator,x.outline if Toggles.PICKUP_ESP.Value then local B,C=w:
WorldToViewportPoint(x.instance.Position)if C then local D=Vector2.new(B.X,B.Y)y
.Position=D-Vector2.new(0,5+y.TextBounds.Y)z.Position=D A.Position=D end y.
Visible=C and B.Z>2.5 z.Visible=C and B.Z>2.5 A.Visible=C and B.Z>2.5 else y.
Visible=false z.Visible=false A.Visible=false end end function v.destroy(x)if x.
destructed then return else x.destructed=true end x.label:Remove()x.indicator:
Remove()x.outline:Remove()v.attached[x.instance]=nil end c.RenderStepped:
Connect(function(x)for y,z in pairs(v.attached)do z:render()end end)end local w
do w={}w.attached={}w.__index=w local x=d.CurrentCamera d:
GetPropertyChangedSignal'CurrentCamera':Connect(function()x=d.CurrentCamera end)
function w.new(y,z)local A=setmetatable({instance=y,destructed=false},w)A.
instance.AncestryChanged:Connect(function(B,C)if C==nil then A:destroy()end end)
return A:constructor(y,z)end function w.constructor(y,z,A)y.name=A or z.Name y.
label=l.new'Text'y.indicator=l.new'Circle'y.outline=l.new'Circle'task.defer(y.
onStart,y)return y end function w.onStart(y)w.attached[y.instance]=y local z,A,B
=y.label,y.indicator,y.outline z.Text=y.name z.Color=Color3.new(1,1,1)z.Size=18
z.Center=true z.Outline=true z.Visible=false A.Color=Color3.new(1,1,1)A.
Thickness=1 A.NumSides=12 A.Radius=5 A.Filled=true A.Visible=false B.Color=
Color3.new()B.Thickness=2 B.NumSides=12 B.Radius=5 B.Filled=false B.Visible=
false B.ZIndex=2 end function w.render(y)local z,A,B=y.label,y.indicator,y.
outline if Toggles.INTERACT_ESP.Value then local C,D=x:WorldToViewportPoint(y.
instance.Position)if D then local E=Vector2.new(C.X,C.Y)z.Position=E+Vector2.
new(0,3)A.Position=E B.Position=E end z.Visible=D and C.Z>2.5 A.Visible=D and C.
Z>2.5 B.Visible=D and C.Z>2.5 else z.Visible=false A.Visible=false B.Visible=
false end end function w.destroy(y)if y.destructed then return else y.destructed
=true end y.label:Remove()y.indicator:Remove()y.outline:Remove()w.attached[y.
instance]=nil end c.RenderStepped:Connect(function(y)for z,A in pairs(w.attached
)do A:render()end end)end local x do x={}x.__index=x function x.new(y)local z=
setmetatable({instance=y,destructed=false},x)z.instance.AncestryChanged:Connect(
function(A,B)if B==nil then z:destroy()end end)return z:constructor(y)end
function x.constructor(y,z)task.defer(y.onStart,y)return y end function x.
onStart(y)local z=y.instance repeat if z.Name=='50'then y:onRoom50()break end if
z.Name=='100'then y:onRoom100()break end until true z.DescendantAdded:Connect(
function(A)y:onDescendant(A)end)for A,B in ipairs(z:GetDescendants())do y:
onDescendant(B)if A%250==0 then task.wait()end end end function x.onDescendant(y
,z)local A=z.Parent if z.Name=='Main'then if A.Name=='LeverForGate'then w.new(z,
'Lever')elseif A.Name=='Lighter'then v.new(z,'Lighter')elseif A.Name=='Vitamins'
then v.new(z,'Vitamins')elseif A.Name=='Lockpick'then v.new(z,'Lockpicks')elseif
A.Name=='Bandage'then v.new(z,'Bandages')end elseif A.Name=='Door'then if z.Name
=='Door'and z:IsA'MeshPart'then u.new(A)end elseif A.Name=='KeyObtain'then if z.
Name=='Hitbox'then v.new(z,'Key')end end end function x.onRoom50(y)local z=y.
instance local A=z:WaitForChild('FigureSetup',2.5)local B=s.new(A)local C=
function(C)if C.Name=='Super Cool Bookshelf With Hint Book'then local D=C:
WaitForChild('LiveHintBook',2.5)if D then local E=D:WaitForChild('Base',2.5)if E
then w.new(E,'Book')end end end end for D,E in ipairs(z.Assets:GetChildren())do
task.defer(C,E)end z.Assets.ChildAdded:Connect(C)end function x.onRoom100(y)
local z=y.instance local A=z:WaitForChild('FigureSetup',2.5)local B=s.new(A)end
function x.destroy(y)if y.destructed then return else y.destructed=true end end
end local y=function(y)while not r(y)do y.DescendantAdded:Wait()end p=y.Humanoid
.WalkSpeed y.Humanoid.WalkSpeed=y.Humanoid.WalkSpeed+Options.WALKSPEED.Value end
local z=function(z)local A=x.new(z)end local A=function(A)if A.Name=='Screech'
then if Toggles.EVENT_NOTIFIER.Value then h:Notify
[[[Event Notifier]: Screech spawned, quickly turn around to look at it!]]end end
end local B=function(B)if B:IsA'Attachment'then if Toggles.REMOVE_AMBIENCE.Value
then local C for D=1,10 do C=B:FindFirstChildWhichIsA'Sound'if C then break end
task.wait()end if C then if o[C.Name]then C:Pause()end end end end end local C=
function(C)if C.Name=='RushMoving'then if Toggles.EVENT_NOTIFIER.Value then h:
Notify'[Event Notifier]: Rush spawned, hide quickly!'end t.new(C)elseif C.Name==
'AmbushMoving'then if Toggles.EVENT_NOTIFIER.Value then h:Notify
[[[Event Notifier]: Ambush spawned, hide quickly! He can return up to 3-4 times!]]
end t.new(C)elseif C.Name=='Lookman'then if Toggles.EVENT_NOTIFIER.Value then h:
Notify'[Event Notifier]: Eyes spawned, look away!'end end end h:SetWatermark
'Linoria Community (OminousVibes)'h:Notify'Loading UI...'do local D=h:
CreateWindow'Doors'do local E=D:AddTab'Gameplay'do local F=E:AddLeftTabbox
'Modifications'local G=F:AddTab'Character Mods'G:AddSlider('WALKSPEED',{Text=
'Speed Boost',Min=0,Max=10,Default=0,Rounding=1,Suffix=''})G:AddToggle(
'GLOW_ENABLED',{Text='Body Glow',Default=false,Tooltip=
'Adds a subtle glow for better vision'})local H=F:AddTab'World Mods'H:AddToggle(
'REMOVE_AMBIENCE',{Text='Remove Ambience',Default=false,Tooltip=
'Removes the unnecessary sounds from the world'})end do local F=E:
AddLeftGroupbox'Assists'F:AddToggle('AUTO_HEARTBEAT',{Text=
'Always Win Heartbeat Minigame',Default=true,Tooltip=
'Always win the heartbeat minigame (Room 50 & 100)'})F:AddToggle('AUTO_SCREECH',
{Text='Anti-Screech',Default=true,Tooltip=
'Screech attacks no longer damage you.'})end do local F=E:AddRightGroupbox
'Notifiers'F:AddToggle('EVENT_NOTIFIER',{Text='Event Notifier',Default=true,
Tooltip='Notifies you when certain events occur'})end end do local E=D:AddTab
'Visuals'do local F=E:AddLeftTabbox'Visuals'local G=F:AddTab'Entities'G:
AddToggle('RUSH_ESP',{Text='Rush/Ambush ESP',Default=true,Tooltip=
'ESP for both Rush and Ambush Entities'})G:AddToggle('FIGURE_ESP',{Text=
'Figure ESP',Default=true,Tooltip="ESP for the entity 'Figure'"})local H=F:
AddTab'Objects'H:AddToggle('DOOR_ESP',{Text='Door ESP',Default=false,Tooltip=
'ESP for doors'})H:AddToggle('PICKUP_ESP',{Text='Pickup ESP',Default=true,
Tooltip='ESP for items that can be picked up'})H:AddToggle('INTERACT_ESP',{Text=
'Interactable Chams',Default=true,Tooltip='ESP for interactable items'})end do
local F=E:AddRightGroupbox'World Render'end end do local E=D:AddTab'Settings'j:
SetLibrary(h)i:SetLibrary(h)j:SetFolder'OminousVibes'i:SetFolder
'OminousVibes/doors'i:IgnoreThemeSettings()i:SetIgnoreIndexes{'MenuKeybind'}i:
BuildConfigSection(E)j:ApplyToTab(E)local F=E:AddLeftGroupbox'Menu'F:AddButton(
'Unload',function()h:Unload()end)F:AddLabel'Menu bind':AddKeyPicker(
'MenuKeybind',{Default='End',NoUI=true,Text='Menu keybind'})F:AddToggle(
'Keybinds',{Text='Show Keybinds Menu',Default=true}):OnChanged(function()h.
KeybindFrame.Visible=Toggles.Keybinds.Value end)F:AddToggle('Watermark',{Text=
'Show Watermark',Default=true}):OnChanged(function()h:SetWatermarkVisibility(
Toggles.Watermark.Value)end)end end h:Notify'UI Loaded'm.CharacterAdded:Connect(
y)d.ChildAdded:Connect(C)d.Terrain.ChildAdded:Connect(B)d.CurrentCamera.
ChildAdded:Connect(A)d.CurrentRooms.ChildAdded:Connect(z)n.LatestRoom.Changed:
Connect(function(D)if Toggles.EVENT_NOTIFIER.Value then local E=n.ChaseStart.
Value-D if 0<E and E<3 then h:Notify("[Event Notifier]: There is an event in '"
..tostring(E).."' rooms!")end end end)do do Options.WALKSPEED:OnChanged(function
(D)local E=m.Character if r(E)then E.Humanoid.WalkSpeed=p+Options.WALKSPEED.
Value end end)Toggles.GLOW_ENABLED:OnChanged(function()for D,E in ipairs(q)do E:
Destroy()end if Toggles.GLOW_ENABLED.Value then local F=Instance.new'PointLight'
local G=Instance.new'SurfaceLight'F.Brightness=0.75 G.Brightness=0.25 F.Range=20
G.Range=90 q={F,G}k(F)k(G)F.Parent=m.Character.HumanoidRootPart G.Parent=m.
Character.Head else q={}end end)end end do local D local E local F local G,H=
typeof,unpack local I=game.IsA D=hookmetamethod(game,'__index',function(J,K)if
not checkcaller()then if G(J)=='Instance'then if I(J,'Humanoid')then if K==
'WalkSpeed'then return p end end end end return D(J,K)end)E=hookmetamethod(game,
'__newindex',function(J,K,L)if not checkcaller()then if G(J)=='Instance'then if
I(J,'Humanoid')then if K=='WalkSpeed'then p=L return E(J,K,L+Options.WALKSPEED.
Value)end end end end return E(J,K,L)end)F=hookmetamethod(game,'__namecall',
function(J,...)if not checkcaller()then if G(J)=='Instance'then if I(J,
'RemoteEvent')then local K=D(J,'Name')if K=='ClutchHeartbeat'then if Toggles.
AUTO_HEARTBEAT.Value then local L={...}L[2]=true return F(J,H(L))end elseif K==
'Screech'then if Toggles.AUTO_SCREECH.Value then local L={...}L[1]=true return
F(J,H(L))end end end end end return F(J,...)end)end do local D=m.Character if D
then y(D)end end do for D,E in ipairs(d.CurrentRooms:GetChildren())do task.
defer(z,E)end end return h:Notify'[Doors] Loaded!'
