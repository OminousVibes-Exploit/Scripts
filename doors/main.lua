local a=game:GetService'HttpService'local b=game:GetService'Players'local c=game
:GetService'ReplicatedStorage'local d=game:GetService'RunService'local e=game:
GetService'SoundService'local f=game:GetService'Workspace'local g=game:
GetService'ContentProvider'local h=game:GetService'CoreGui'do if getgenv().doors
then return end getgenv().doors=true end do local i i=hookfunction(g.
PreloadAsync,function(j,k,l)if table.find(k,h)then local m=function(m,n)if m:
match'^rbxasset://'or m:match'^rbxthumb://'then return l(m,n)end end warn
'Anticheat Check Detected'return i(j,k,m)end return i(j,k,l)end)end local i=
[[https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/]]local j=
loadstring(game:HttpGet(i..'Library.lua'))()local k=loadstring(game:HttpGet(i..
'addons/SaveManager.lua'))()local l=loadstring(game:HttpGet(i..
'addons/ThemeManager.lua'))()local m=Drawing local n=b.LocalPlayer local o={[
'Beat']=true,['Creak']=true,['Door']=true,['Doorknob']=true,['Ghost']=true,[
'Window Knock']=true}local p=c.GameData local q=c:WaitForChild'Bricks'local r={
PadlockHint=q:WaitForChild'PadlockHint',EngageMinigame=q:WaitForChild
'EngageMinigame',ClutchHeartbeat=q:WaitForChild'ClutchHeartbeat',Screech=q:
WaitForChild'Screech'}local s=Instance.new'Sound'local t=10 local u={}local v=
function(v)if v then local w=v:FindFirstChild'HumanoidRootPart'if w then local x
=v:FindFirstChild'Humanoid'return x~=nil end end return false end local w=
function(w,x)j:Notify(w)if x and Toggles.SOUND_NOTIFIER.Value then s.
TimePosition=0.25 s:Play()end end local x do x={}x.attached={}x.__index=x local
y=f.CurrentCamera f:GetPropertyChangedSignal'CurrentCamera':Connect(function()y=
f.CurrentCamera end)local z,A=Vector2.new,CFrame.new local B=y.
WorldToViewportPoint function x.new(C)local D=setmetatable({instance=C,
destructed=false},x)D.instance.AncestryChanged:Connect(function(E,F)if F==nil
then D:destroy()end end)return D:constructor(C)end function x.constructor(C,D)
local E=D local F=E:WaitForChild('FigureRagdoll',2.5)C.quad=m.new'Quad'C.root=F:
WaitForChild('Root',2.5)task.defer(C.onStart,C)return C end function x.onStart(C
)x.attached[C.instance]=C local D=C.quad D.Visible=false D.Transparency=0.75 D.
Color=Color3.new(1,0,0)D.Thickness=3 end function x.render(C)local D=C.quad
local E=C.root if Toggles.FIGURE_ESP.Value then local F=E.CFrame*A(0,2.5,0)local
G=E.Size*1.5 local H=B(y,(F*A(G.X,G.Y,0)).Position)local I=B(y,(F*A(-G.X,G.Y,0))
.Position)local J=B(y,(F*A(-G.X,-G.Y,0)).Position)local K=B(y,(F*A(G.X,-G.Y,0)).
Position)if math.min(H.Z,I.Z,J.Z,K.Z)>0 then D.PointA=z(I.X,I.Y)D.PointB=z(H.X,H
.Y)D.PointC=z(K.X,K.Y)D.PointD=z(J.X,J.Y)D.Visible=true else D.Visible=false end
else D.Visible=false end end function x.destroy(C)if C.destructed then return
else C.destructed=true end C.quad:Remove()x.attached[C.instance]=nil end d.
RenderStepped:Connect(function()for C,D in pairs(x.attached)do D:render()end end
)end local y do y={}y.attached={}y.__index=y local z=f.CurrentCamera f:
GetPropertyChangedSignal'CurrentCamera':Connect(function()z=f.CurrentCamera end)
local A,B=Vector2.new,CFrame.new local C=z.WorldToViewportPoint function y.new(D
)local E=setmetatable({instance=D,destructed=false},y)E.instance.AncestryChanged
:Connect(function(F,G)if G==nil then E:destroy()end end)return E:constructor(D)
end function y.constructor(D,E)D.quad=m.new'Quad'D.root=(E.PrimaryPart or E:
WaitForChild('RushNew',5))task.defer(D.onStart,D)return D end function y.onStart
(D)y.attached[D.instance]=D local E=D.quad E.Visible=false E.Transparency=0.75 E
.Color=Color3.new(1,0,0)E.Thickness=2 end function y.render(D)local E=D.quad
local F=D.root if Toggles.RUSH_ESP.Value then local G=F.CFrame local H=F.Size
local I=C(z,(G*B(H.X*0.4,H.Y*0.8,0)).Position)local J=C(z,(G*B(-H.X*0.4,H.Y*0.8,
0)).Position)local K=C(z,(G*B(-H.X*0.4,-H.Y*0.8,0)).Position)local L=C(z,(G*B(H.
X*0.4,-H.Y*0.8,0)).Position)if math.min(I.Z,J.Z,K.Z,L.Z)>0 then E.PointA=A(J.X,J
.Y)E.PointB=A(I.X,I.Y)E.PointC=A(L.X,L.Y)E.PointD=A(K.X,K.Y)E.Visible=true else
E.Visible=false end else E.Visible=false end end function y.destroy(D)if D.
destructed then return else D.destructed=true end D.quad:Remove()y.attached[D.
instance]=nil end d.RenderStepped:Connect(function()for D,E in pairs(y.attached)
do E:render()end end)end local z do z={}z.attached={}z.__index=z local A=f.
CurrentCamera f:GetPropertyChangedSignal'CurrentCamera':Connect(function()A=f.
CurrentCamera end)local B,C=Vector2.new,CFrame.new local D=A.
WorldToViewportPoint function z.new(E,F)local G=setmetatable({instance=E,
destructed=false},z)G.instance.AncestryChanged:Connect(function(H,I)if I==nil
then G:destroy()end end)return G:constructor(E,F)end function z.constructor(E,F,
G)E.roomNumber=G E.quad=m.new'Quad'task.defer(E.onStart,E)return E end function
z.onStart(E)z.attached[E.instance]=E local F=E.quad F.Visible=false F.
Transparency=0.5 F.Color=Color3.new(0,0.5,1)F.Thickness=2 end function z.render(
E)local F=E.quad local G=E.instance.Door if p.LatestRoom.Value-E.roomNumber>2
then F.Visible=false return end if Toggles.DOOR_ESP.Value then local H=G.CFrame
local I=G.Size local J=D(A,(H*C(I.X/2,I.Y/2,0)).Position)local K=D(A,(H*C(-I.X/2
,I.Y/2,0)).Position)local L=D(A,(H*C(-I.X/2,-I.Y/2,0)).Position)local M=D(A,(H*
C(I.X/2,-I.Y/2,0)).Position)if math.min(J.Z,K.Z,L.Z,M.Z)>0 then F.PointA=B(K.X,K
.Y)F.PointB=B(J.X,J.Y)F.PointC=B(M.X,M.Y)F.PointD=B(L.X,L.Y)F.Visible=true else
F.Visible=false end end end function z.destroy(E)if E.destructed then return
else E.destructed=true end E.quad:Remove()z.attached[E.instance]=nil end d.
RenderStepped:Connect(function(E)for F,G in pairs(z.attached)do G:render()end
end)end local A do A={}A.attached={}A.__index=A local B=f.CurrentCamera f:
GetPropertyChangedSignal'CurrentCamera':Connect(function()B=f.CurrentCamera end)
function A.new(C,D)local E=setmetatable({instance=C,destructed=false},A)E.
instance.AncestryChanged:Connect(function(F,G)if G==nil then E:destroy()end end)
return E:constructor(C,D)end function A.constructor(C,D,E)C.name=E or D.Name C.
label=m.new'Text'C.indicator=m.new'Circle'C.outline=m.new'Circle'task.defer(C.
onStart,C)return C end function A.onStart(C)A.attached[C.instance]=C local D,E,F
=C.label,C.indicator,C.outline D.Text=C.name D.Color=Color3.new(1,1,0.25)D.Size=
18 D.Center=true D.Outline=true D.Visible=false E.Color=Color3.new(1,1,0.25)E.
Thickness=1 E.NumSides=12 E.Radius=5 E.Filled=true E.Visible=false F.Color=
Color3.new()F.Thickness=2 F.NumSides=12 F.Radius=5 F.Filled=false F.Visible=
false F.ZIndex=2 end function A.render(C)local D,E,F=C.label,C.indicator,C.
outline if Toggles.PICKUP_ESP.Value then local G,H=B:WorldToViewportPoint(C.
instance.Position)if H then local I=Vector2.new(G.X,G.Y)D.Position=I-Vector2.
new(0,5+D.TextBounds.Y)E.Position=I F.Position=I end D.Visible=H and G.Z>2.5 E.
Visible=H and G.Z>2.5 F.Visible=H and G.Z>2.5 else D.Visible=false E.Visible=
false F.Visible=false end end function A.destroy(C)if C.destructed then return
else C.destructed=true end C.label:Remove()C.indicator:Remove()C.outline:Remove(
)A.attached[C.instance]=nil end d.RenderStepped:Connect(function(C)for D,E in
pairs(A.attached)do E:render()end end)end local B do B={}B.attached={}B.__index=
B local C=f.CurrentCamera f:GetPropertyChangedSignal'CurrentCamera':Connect(
function()C=f.CurrentCamera end)function B.new(D,E)local F=setmetatable({
instance=D,destructed=false},B)F.instance.AncestryChanged:Connect(function(G,H)
if H==nil then F:destroy()end end)return F:constructor(D,E)end function B.
constructor(D,E,F)D.name=F or E.Name D.label=m.new'Text'D.indicator=m.new
'Circle'D.outline=m.new'Circle'task.defer(D.onStart,D)return D end function B.
onStart(D)B.attached[D.instance]=D local E,F,G=D.label,D.indicator,D.outline E.
Text=D.name E.Color=Color3.new(1,1,1)E.Size=18 E.Center=true E.Outline=true E.
Visible=false F.Color=Color3.new(1,1,1)F.Thickness=1 F.NumSides=12 F.Radius=5 F.
Filled=true F.Visible=false G.Color=Color3.new()G.Thickness=2 G.NumSides=12 G.
Radius=5 G.Filled=false G.Visible=false G.ZIndex=2 end function B.render(D)local
E,F,G=D.label,D.indicator,D.outline if Toggles.INTERACT_ESP.Value then local H,I
=C:WorldToViewportPoint(D.instance.Position)if I then local J=Vector2.new(H.X,H.
Y)E.Position=J+Vector2.new(0,3)F.Position=J G.Position=J end E.Visible=I and H.Z
>2.5 F.Visible=I and H.Z>2.5 G.Visible=I and H.Z>2.5 else E.Visible=false F.
Visible=false G.Visible=false end end function B.destroy(D)if D.destructed then
return else D.destructed=true end D.label:Remove()D.indicator:Remove()D.outline:
Remove()B.attached[D.instance]=nil end d.RenderStepped:Connect(function(D)for E,
F in pairs(B.attached)do F:render()end end)end local C do C={}C.__index=C
function C.new(D)local E=setmetatable({instance=D,destructed=false},C)E.instance
.AncestryChanged:Connect(function(F,G)if G==nil then E:destroy()end end)return E
:constructor(D)end function C.constructor(D,E)task.defer(D.onStart,D)return D
end function C.onStart(D)local E=D.instance repeat if E.Name=='50'then D:
onRoom50()break end if E.Name=='100'then D:onRoom100()break end until true E.
DescendantAdded:Connect(function(F)D:onDescendant(F)end)for F,G in ipairs(E:
GetDescendants())do D:onDescendant(G)if F%250==0 then task.wait()end end end
function C.onDescendant(D,E)local F=E.Parent if E.Name=='Main'then if F.Name==
'LeverForGate'then B.new(E,'Lever')elseif F.Name=='Lighter'then A.new(E,
'Lighter')elseif F.Name=='Vitamins'then A.new(E,'Vitamins')elseif F.Name==
'Lockpick'then A.new(E,'Lockpicks')elseif F.Name=='Bandage'then A.new(E,
'Bandages')end elseif F.Name=='Door'then if E.Name=='Door'and E:IsA'MeshPart'
then z.new(F,tonumber(D.instance.Name))end elseif F.Name=='KeyObtain'then if E.
Name=='Hitbox'then A.new(E,'Key')end end end function C.onRoom50(D)local E=D.
instance local F=E:WaitForChild('FigureSetup',2.5)local G=x.new(F)local H=
function(H)if H.Name=='Super Cool Bookshelf With Hint Book'then local I=H:
WaitForChild('LiveHintBook',2.5)if I then local J=I:WaitForChild('Base',2.5)if J
then B.new(J,'Book')end end end end for I,J in ipairs(E.Assets:GetChildren())do
task.defer(H,J)end E.Assets.ChildAdded:Connect(H)end function C.onRoom100(D)
local E=D.instance local F=E:WaitForChild('FigureSetup',2.5)local G=x.new(F)end
function C.destroy(D)if D.destructed then return else D.destructed=true end end
end local D=function(D)while not v(D)do D.DescendantAdded:Wait()end t=D.Humanoid
.WalkSpeed D.Humanoid.WalkSpeed=D.Humanoid.WalkSpeed+Options.WALKSPEED.Value end
local E=function(E)local F=C.new(E)end local F=function(F)if F.Name=='Screech'
then if Toggles.EVENT_NOTIFIER.Value then w(
[[[Event Notifier]: Screech spawned, quickly turn around to look at it!]],true)
end end end local G=function(G)if G:IsA'Attachment'then if Toggles.
REMOVE_AMBIENCE.Value then local H for I=1,10 do H=G:FindFirstChildWhichIsA
'Sound'if H then break end task.wait()end if H then if o[H.Name]then H:Pause()
end end end end end local H=function(H)if H.Name=='RushMoving'then if Toggles.
EVENT_NOTIFIER.Value then w('[Event Notifier]: Rush spawned, hide quickly!',true
)end y.new(H)elseif H.Name=='AmbushMoving'then if Toggles.EVENT_NOTIFIER.Value
then w(
[[[Event Notifier]: Ambush spawned, hide quickly! He can return up to 3-4 times!]]
,true)end y.new(H)elseif H.Name=='Lookman'then if Toggles.EVENT_NOTIFIER.Value
then w('[Event Notifier]: Eyes spawned, look away!',true)end end end j:
SetWatermark'Linoria Community (OminousVibes)'j:Notify'Loading UI...'do local I=
j:CreateWindow'Doors'do local J=I:AddTab'Gameplay'do local K=J:AddLeftTabbox
'Modifications'local L=K:AddTab'Character Mods'L:AddSlider('WALKSPEED',{Text=
'Speed Boost',Min=0,Max=20,Default=0,Rounding=1,Suffix=''})L:AddToggle(
'GLOW_ENABLED',{Text='Body Glow',Default=false,Tooltip=
'Adds a subtle glow for better vision'})local M=K:AddTab'World Mods'M:AddToggle(
'REMOVE_AMBIENCE',{Text='Remove Ambience',Default=false,Tooltip=
'Removes the unnecessary sounds from the world'})end do local K=J:
AddLeftGroupbox'Assists'K:AddToggle('AUTO_HEARTBEAT',{Text=
'Always Win Heartbeat Minigame',Default=true,Tooltip=
'Always win the heartbeat minigame (Room 50 & 100)'})K:AddToggle('BREAKER_WIN',{
Text='Breaker Assist',Default=true,Tooltip=
[[Electrical breaker will be fully completed regardless of the actual state of the switches (Room 100)]]
})K:AddToggle('AUTO_SCREECH',{Text='Anti-Screech',Default=true,Tooltip=
'Screech attacks no longer damage you.'})end do local K=J:AddRightTabbox
'Notifiers'local L=K:AddTab'Alerts'L:AddToggle('EVENT_NOTIFIER',{Text=
'Event Notifier',Default=true,Tooltip='Notifies you when certain events occur'})
L:AddToggle('DEBUG_NOTIFIER',{Text='Debug Notifier',Default=true,Tooltip=
'Notifies you of certain script changes'})L:AddButton('Example Alert (Testing)',
function()w(
[[[Example Alert]: This is a test alert to get you familiar with the script's notification system!]]
,true)end)local M=K:AddTab'Advanced'M:AddToggle('SOUND_NOTIFIER',{Text=
'Sound Alert',Default=true,Tooltip='Important Alerts will have sound cues!'})end
end do local J=I:AddTab'Visuals'do local K=J:AddLeftTabbox'Visuals'local L=K:
AddTab'Entities'L:AddToggle('RUSH_ESP',{Text='Rush/Ambush ESP',Default=true,
Tooltip='ESP for both Rush and Ambush Entities'})L:AddToggle('FIGURE_ESP',{Text=
'Figure ESP',Default=true,Tooltip="ESP for the entity 'Figure'"})local M=K:
AddTab'Objects'M:AddToggle('DOOR_ESP',{Text='Door ESP',Default=false,Tooltip=
'ESP for doors'})M:AddToggle('PICKUP_ESP',{Text='Pickup ESP',Default=true,
Tooltip='ESP for items that can be picked up'})M:AddToggle('INTERACT_ESP',{Text=
'Interactable Chams',Default=true,Tooltip='ESP for interactable items'})end do
local K=J:AddRightGroupbox'World Render'end end do local J=I:AddTab'Settings'l:
SetLibrary(j)k:SetLibrary(j)l:SetFolder'OminousVibes'k:SetFolder
'OminousVibes/doors'k:IgnoreThemeSettings()k:SetIgnoreIndexes{'MenuKeybind'}k:
BuildConfigSection(J)l:ApplyToTab(J)local K=J:AddLeftGroupbox'Menu'K:AddButton(
'Unload',function()j:Unload()end)K:AddLabel'Menu bind':AddKeyPicker(
'MenuKeybind',{Default='End',NoUI=true,Text='Menu keybind'})K:AddToggle(
'Keybinds',{Text='Show Keybinds Menu',Default=true}):OnChanged(function()j.
KeybindFrame.Visible=Toggles.Keybinds.Value end)K:AddToggle('Watermark',{Text=
'Show Watermark',Default=true}):OnChanged(function()j:SetWatermarkVisibility(
Toggles.Watermark.Value)end)local L=J:AddRightGroupbox'Credits'L:AddLabel
'OminousVibes - Creator'L:AddLabel'Inori @v3rm - UI Library'L:AddLabel
'Aztup @v3rm - Breaker Assist'L:AddDivider()L:AddLabel'Contributors:'L:AddLabel
'> IAmAGoodScammer @v3rm'L:AddLabel'> Bob24 @v3rm'L:AddLabel'> brickmane @v3rm'
end k:LoadAutoloadConfig()end j:Notify'UI Loaded! [Right Ctrl or Right Shift]'n.
CharacterAdded:Connect(D)f.ChildAdded:Connect(H)f.Terrain.ChildAdded:Connect(G)f
.CurrentCamera.ChildAdded:Connect(F)f.CurrentRooms.ChildAdded:Connect(E)r.
EngageMinigame.OnClientEvent:Connect(function(I)if I=='ElevatorBreaker'then
local J do local K,L=type,table.find repeat task.wait(0.5)for M,N in ipairs(
getgc())do if K(N)=='function'and islclosure(N)and not is_synapse_function(N)
then local O=getconstants(N)if L(O,'BreakerSwitch')and L(O,'GetChildren')and O[9
]==1 then if Toggles.DEBUG_NOTIFIER.Value then w('Breaker Switch found!',true)
end J=N break end end if M%500==0 then task.wait()end end until J~=nil end local
K K=hookfunction(J,function(...)if Toggles.BREAKER_WIN.Value then return 10 end
return K(...)end)end end)p.LatestRoom.Changed:Connect(function(I)if Toggles.
EVENT_NOTIFIER.Value then local J=p.ChaseStart.Value-I if 0<J and J<3 then w(
"[Event Notifier]: There is an event in '"..tostring(J).."' rooms!",false)end
end end)do do Options.WALKSPEED:OnChanged(function(I)local J=n.Character if v(J)
then J.Humanoid.WalkSpeed=t+Options.WALKSPEED.Value end end)Toggles.GLOW_ENABLED
:OnChanged(function()for I,J in ipairs(u)do J:Destroy()end if Toggles.
GLOW_ENABLED.Value then local K=Instance.new'PointLight'local L=Instance.new
'SurfaceLight'K.Brightness=0.75 L.Brightness=0.25 K.Range=20 L.Range=90 u={K,L}K
.Parent=n.Character.HumanoidRootPart L.Parent=n.Character.Head else u={}end end)
end end do local I local J local K local L,M=typeof,unpack local N=game.IsA I=
hookmetamethod(game,'__index',function(O,P)if not checkcaller()then if L(O)==
'Instance'then if N(O,'Humanoid')then if P=='WalkSpeed'then return t end end end
end return I(O,P)end)J=hookmetamethod(game,'__newindex',function(O,P,Q)if not
checkcaller()then if L(O)=='Instance'then if N(O,'Humanoid')then if P==
'WalkSpeed'then t=Q return J(O,P,Q+Options.WALKSPEED.Value)end end end end
return J(O,P,Q)end)K=hookmetamethod(game,'__namecall',function(O,...)if not
checkcaller()then if L(O)=='Instance'then if N(O,'RemoteEvent')then if O==r.
ClutchHeartbeat then if Toggles.AUTO_HEARTBEAT.Value then local P={...}P[2]=true
return K(O,M(P))end elseif O==r.Screech then if Toggles.AUTO_SCREECH.Value then
local P={...}P[1]=true return K(O,M(P))end end end end end return K(O,...)end)
end s.Name=a:GenerateGUID(false)s.SoundId='rbxassetid://6026984224's.Volume=6 s.
Parent=e do local I=n.Character if I then D(I)end end do for I,J in ipairs(f.
CurrentRooms:GetChildren())do task.defer(E,J)end end return j:Notify
'[Doors] Loaded!'
