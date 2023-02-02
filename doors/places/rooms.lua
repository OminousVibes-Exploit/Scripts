local a=game:GetService'ContextActionService'local b=game:GetService'Players'
local c=game:GetService'ReplicatedStorage'local d=game:GetService'RunService'
local e=game:GetService'SoundService'local f=game:GetService'Workspace'local g=
game:GetService'VirtualInputManager'local h='Doors'local i='Rooms v1.0'local j=
'TerminalVibes/doors'local k='rooms'local l={[6839171747]=5898}do local m=game.
PlaceId local n=game.PlaceVersion local o=l[m]if not o then warn
'Script does not support this place instance.'warn
[[The PlaceID and version has been set to your clipboard. Please report this to the developer.]]
return setclipboard('['..tostring(m)..'] = '..tostring(n)..',')end end do local
m=k..i if getgenv()[m]then return end getgenv()[m]=true end local m=
[[https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/]]local n=
loadstring(game:HttpGet(m..'Library.lua'))()local o=loadstring(game:HttpGet(m..
'addons/SaveManager.lua'))()local p=loadstring(game:HttpGet(m..
'addons/ThemeManager.lua'))()local q do local r,s=type,typeof q=setmetatable({},
{__tostring=function()return'Bin'end})q.__index=q function q.new(...)local t=
setmetatable({},q)return t:constructor(...)or t end function q.constructor(t)end
function q.add(t,u)local v={item=u}if t.head==nil then t.head=v end if t.tail
then t.tail.next=v end t.tail=v return u end function q.destroy(t)while t.head
do local u=t.head.item if r(u)=='function'then u()elseif s(u)==
'RBXScriptConnection'then u:Disconnect()elseif r(u)=='thread'then task.cancel(u)
elseif u.destroy~=nil then u:destroy()elseif u.Destroy~=nil then u:Destroy()end
t.head=t.head.next end end function q.isEmpty(t)return t.head==nil end end local
r do r={}r.__index=r function r.__tostring(s)return'BaseComponent - '..s.
instance:GetFullName()end local s,t,u=setmetatable,assert,task.defer function r.
new(v,...)local w=s({},r)w=w:constructor(v,...)or w w:run()return w end function
r.constructor(v,w,...)v.instance=w v.running=false v.destructed=false v._maid=q.
new()v._maid:add(w.Destroying:Connect(function()if not v.destructed then v:
destroy()end end))end function r.onStart(v)end function r.run(v)t(not v.running,
'['..v:__tostring()..'] is already running')u(function()v.running=true if not v.
destructed then v:onStart()end end)end function r.destroy(v)t(not v.destructed,
'['..v:__tostring()..'] is already destroyed')v.running=false v.destructed=true
v._maid:destroy()end end local s=b.LocalPlayer local t=f.CurrentCamera local u=c
:WaitForChild'GameData'local v={}do local w=c:WaitForChild'EntityInfo'local x={
A90=w:WaitForChild'A90'}for y,z in pairs(x)do v[y]=z end end local w=Instance.
new'Sound'local x local y local z local A local B local C local D local E local
F local G local H local I={}local J={}local K={}local L=function(L,M)if L and
Toggles['alerts.enabled'].Value then local N={message=M.message or'',audio=M.
audio or false,duration=M.duration or 5}n:Notify(N.message,N.duration)if N.audio
and Toggles['alerts.audio'].Value then w.TimePosition=0.25 w:Play()end end end
do local M=r x=setmetatable({},{__index=M})x.__index=x function x.__tostring(N)
return'CharacterComponent - '..N.instance:GetFullName()end x.attached={}function
x.new(N,...)local O=setmetatable({},x)O=O:constructor(N,...)or O O:run()return O
end function x.constructor(N,O)M.constructor(N,O)N.client=A.attached[b:
GetPlayerFromCharacter(O)]N.root=O:WaitForChild('HumanoidRootPart',5)N.humanoid=
O:WaitForChild('Humanoid',5)assert(N.client~=nil,'['..N:__tostring()..
"] is not a client's character")assert(N.root~=nil,'['..N:__tostring()..
'] is missing a HumanoidRootPart')assert(N.humanoid~=nil,'['..N:__tostring()..
'] is missing a Humanoid')N._maid:add(O.AncestryChanged:Connect(function(P,Q)if
Q==nil then N:destroy()end end))end function x.onStart(N)x.attached[N.instance]=
N M.onStart(N)end function x.destroy(N)x.attached[N.instance]=nil M.destroy(N)
end end do local M=Vector3.new(1,0,1)local N=x y=setmetatable({},{__index=N})y.
__index=y function y.__tostring(O)return'AvatarComponent - '..O.instance:
GetFullName()end y.attached=nil function y.new(O,...)local P=setmetatable({},y)P
=P:constructor(O,...)or P P:run()return P end function y.constructor(O,P)N.
constructor(O,P)O.light=Instance.new'PointLight'end function y.onStart(O)y.
attached=O N.onStart(O)local P=O.light P.Enabled=false P.Range=100 P.Color=
Color3.fromRGB(255,255,255)P.Shadows=false P.Parent=O.root while O.running do P.
Enabled=Toggles['character.glow.enabled'].Value P.Brightness=Options[
'character.glow.brightness'].Value/50 task.wait(0.5)end end function y.onPhysics
(O,P,Q)local R=Options['character.sprint.speed'].Value if R>0 and Toggles[
'character.sprint.enabled'].Value and Options['character.sprint.keybind']:
GetState()then local S=O.humanoid.MoveDirection*M if S.Magnitude>0 then O.
instance:TranslateBy(S*R*Q)end end end function y.destroy(O)y.attached=nil N.
destroy(O)end end do local M=Vector3.new(5,7,0)local N=Vector3.new(0,-0.25,0)
local O,P,Q,R=CFrame.new(N.X-(M.X/2),N.Y+(M.Y/2),N.Z),CFrame.new(N.X+(M.X/2),N.Y
+(M.Y/2),N.Z),CFrame.new(N.X-(M.X/2),N.Y-(M.Y/2),N.Z),CFrame.new(N.X+(M.X/2),N.Y
-(M.Y/2),N.Z)local S=t.WorldToViewportPoint local T=Vector2.new local U=math.min
local V=x z=setmetatable({},{__index=V})z.__index=z function z.__tostring(W)
return'FriendComponent - '..W.instance:GetFullName()end z.attached={}function z.
new(W,...)local X=setmetatable({},z)X=X:constructor(W,...)or X X:run()return X
end function z.constructor(W,X)V.constructor(W,X)W.quad=Drawing.new'Quad'W._maid
:add(function()W.quad:Remove()end)end function z.onStart(W)z.attached[W.instance
]=W V.onStart(W)local X=W.quad X.Visible=false X.Thickness=1 X.Transparency=0.75
end function z.onRender(W,X)local Y=W.quad if Toggles['esp.player.enabled'].
Value then local Z=W.root.CFrame local _=S(t,(Z*O).Position)local aa=S(t,(Z*P).
Position)local ab=S(t,(Z*R).Position)local ac=S(t,(Z*Q).Position)if U(_.Z,aa.Z,
ab.Z,ac.Z)>0 then Y.PointA=T(aa.X,aa.Y)Y.PointB=T(_.X,_.Y)Y.PointC=T(ac.X,ac.Y)Y
.PointD=T(ab.X,ab.Y)Y.Color=Options['esp.player.color'].Value Y.Visible=true
else Y.Visible=false end else Y.Visible=false end end function z.destroy(aa)z.
attached[aa.instance]=nil V.destroy(aa)end end do local aa=r A=setmetatable({},{
__index=aa})A.__index=A function A.__tostring(ab)return'ClientComponent - '..ab.
instance:GetFullName()end A.attached={}function A.new(ab,...)local ac=
setmetatable({},A)ac=ac:constructor(ab,...)or ac ac:run()return ac end function
A.constructor(ab,ac)aa.constructor(ab,ac)end function A.onStart(ab)A.attached[ab
.instance]=ab aa.onStart(ab)ab._maid:add(ab.instance.CharacterAdded:Connect(
function(ac)ab:onCharacter(ac)end))ab._maid:add(ab.instance.Backpack.ChildAdded:
Connect(function(ac)if ac:IsA'Tool'then ab:onTool(ac)end end))task.defer(
function()local ac=ab.instance.Character if ac then ab:onCharacter(ac)end end)
task.defer(function()for ac,M in ipairs(ab.instance.Backpack:GetChildren())do if
M:IsA'Tool'then ab:onTool(M)end end end)end function A.onCharacter(ab,ac)if ab.
instance==s then ab.character=y.new(ac)else ab.character=z.new(ac)end end
function A.onTool(ab,ac)if ac.Name=='LibraryHintPaper'then local M=ac:
WaitForChild('UI',1)if M then local N={}for O=1,5 do local P=M:FindFirstChild(
tostring(O))if P then local Q=P.ImageRectOffset.X/50 N[O]=Q end end libraryOrder
=N end end end function A.destroy(ab)A.attached[ab.instance]=nil aa.destroy(ab)
end local ab=function(ab)A.new(ab)end b.PlayerAdded:Connect(ab)for ac,M in
ipairs(b:GetPlayers())do task.defer(ab,M)end end do local aa=Vector3.new(4,6,0)
local ab=Vector3.new(0,0,0)local ac,M,N,O=CFrame.new(ab.X-(aa.X/2),ab.Y+(aa.Y/2)
,ab.Z),CFrame.new(ab.X+(aa.X/2),ab.Y+(aa.Y/2),ab.Z),CFrame.new(ab.X-(aa.X/2),ab.
Y-(aa.Y/2),ab.Z),CFrame.new(ab.X+(aa.X/2),ab.Y-(aa.Y/2),ab.Z)local P=t.
WorldToViewportPoint local Q=Vector2.new local R=math.min local S=r B=
setmetatable({},{__index=S})B.__index=B function B.__tostring(T)return
'A60Component - '..T.instance:GetFullName()end B.attached={}function B.new(T,...
)local U=setmetatable({},B)U=U:constructor(T,...)or U U:run()return U end
function B.constructor(T,U)S.constructor(T,U)T.root=U.PrimaryPart or U:
WaitForChild('Main',5)assert(T.root,'['..T:__tostring()..
'] is missing a root part!')T.quad=Drawing.new'Quad'T._maid:add(function()T.quad
:Remove()end)end function B.onStart(T)B.attached[T.instance]=T S.onStart(T)local
U=T.quad U.Visible=false U.Thickness=1 U.Color=T:getColor()L(Toggles[
'alerts.entity'].Value,{message=
'A60 spawned, run and hide in the closest locker!',duration=7.5,audio=true})end
function B.onRender(T,U)local V=T.quad if T:isEnabled()then local W=T.root.
CFrame local X=P(t,(W*ac).Position)local Y=P(t,(W*M).Position)local Z=P(t,(W*O).
Position)local _=P(t,(W*N).Position)if R(X.Z,Y.Z,Z.Z,_.Z)>0 then V.PointA=Q(Y.X,
Y.Y)V.PointB=Q(X.X,X.Y)V.PointC=Q(_.X,_.Y)V.PointD=Q(Z.X,Z.Y)V.Visible=true else
V.Visible=false end else V.Visible=false end end function B.isEnabled(T)return
Toggles['esp.rush.enabled'].Value end function B.getColor(T)return Options[
'esp.rush.a60-color'].Value end function B.destroy(T)B.attached[T.instance]=nil
S.destroy(T)end end do local aa=Vector3.new(4,6,0)local ab=Vector3.new(0,0,0)
local ac,M,N,O=CFrame.new(ab.X-(aa.X/2),ab.Y+(aa.Y/2),ab.Z),CFrame.new(ab.X+(aa.
X/2),ab.Y+(aa.Y/2),ab.Z),CFrame.new(ab.X-(aa.X/2),ab.Y-(aa.Y/2),ab.Z),CFrame.
new(ab.X+(aa.X/2),ab.Y-(aa.Y/2),ab.Z)local P=t.WorldToViewportPoint local Q=
Vector2.new local R=math.min local S=r C=setmetatable({},{__index=S})C.__index=C
function C.__tostring(T)return'A120Component - '..T.instance:GetFullName()end C.
attached={}function C.new(T,...)local U=setmetatable({},C)U=U:constructor(T,...)
or U U:run()return U end function C.constructor(T,U)S.constructor(T,U)T.root=U.
PrimaryPart or U:WaitForChild('Main',5)assert(T.root,'['..T:__tostring()..
'] is missing a root part!')T.quad=Drawing.new'Quad'T._maid:add(function()T.quad
:Remove()end)end function C.onStart(T)C.attached[T.instance]=T S.onStart(T)local
U=T.quad U.Visible=false U.Thickness=1 U.Color=T:getColor()L(Toggles[
'alerts.entity'].Value,{message=
'A120 spawned, run and hide in the closest locker!',duration=7.5,audio=true})end
function C.onRender(T,U)local V=T.quad if T:isEnabled()then local W=T.root.
CFrame local X=P(t,(W*ac).Position)local Y=P(t,(W*M).Position)local Z=P(t,(W*O).
Position)local _=P(t,(W*N).Position)if R(X.Z,Y.Z,Z.Z,_.Z)>0 then V.PointA=Q(Y.X,
Y.Y)V.PointB=Q(X.X,X.Y)V.PointC=Q(_.X,_.Y)V.PointD=Q(Z.X,Z.Y)V.Visible=true else
V.Visible=false end else V.Visible=false end end function C.isEnabled(T)return
Toggles['esp.rush.enabled'].Value end function C.getColor(T)return Options[
'esp.rush.a120-color'].Value end function C.destroy(T)C.attached[T.instance]=nil
S.destroy(T)end end do local aa=CFrame.new(0,0,1)local ab=t.WorldToViewportPoint
local ac=Vector2.new local M=math.min local N=r D=setmetatable({},{__index=N})D.
__index=D function D.__tostring(O)return'DoorComponent - '..O.instance:
GetFullName()end D.attached={}function D.new(O,...)local P=setmetatable({},D)P=P
:constructor(O,...)or P P:run()return P end function D.constructor(O,P,Q)N.
constructor(O,P)O.id=Q or 0 local R=P.Size*0.5 local S=P.CFrame*aa O.tl=(S*
CFrame.new(R.X,R.Y,0)).Position O.tr=(S*CFrame.new(-R.X,R.Y,0)).Position O.bl=(S
*CFrame.new(R.X,-R.Y,0)).Position O.br=(S*CFrame.new(-R.X,-R.Y,0)).Position O.
quad=Drawing.new'Quad'O._maid:add(function()O.quad:Remove()end)end function D.
onStart(O)D.attached[O.instance]=O N.onStart(O)local P=O.quad P.Visible=false P.
Thickness=2 end function D.onRender(O,P)local Q=O.quad if Toggles[
'esp.door.enabled'].Value then local R=ab(t,O.tl)local S=ab(t,O.tr)local T=ab(t,
O.br)local U=ab(t,O.bl)if M(R.Z,S.Z,T.Z,U.Z)>0 then Q.PointA=ac(S.X,S.Y)Q.PointB
=ac(R.X,R.Y)Q.PointC=ac(U.X,U.Y)Q.PointD=ac(T.X,T.Y)local V=O.id-u.LatestRoom.
Value if V==0 then Q.Color=Options['esp.door.target-color'].Value else Q.Color=
Options['esp.door.default-color'].Value if V<0 then Q.Transparency=0.5 else Q.
Transparency=1 end end Q.Visible=true else Q.Visible=false end else Q.Visible=
false end end function D.destroy(O)D.attached[O.instance]=nil N.destroy(O)end
end do local aa=Vector3.new(4.675,7.15,0)local ab=Vector3.new(0,0,-1.25)local ac
,M,N,O=CFrame.new(ab.X-(aa.X/2),ab.Y+(aa.Y/2),ab.Z),CFrame.new(ab.X+(aa.X/2),ab.
Y+(aa.Y/2),ab.Z),CFrame.new(ab.X-(aa.X/2),ab.Y-(aa.Y/2),ab.Z),CFrame.new(ab.X+(
aa.X/2),ab.Y-(aa.Y/2),ab.Z)local P=t.WorldToViewportPoint local Q=Vector2.new
local R=math.min local S=r E=setmetatable({},{__index=S})E.__index=E function E.
__tostring(T)return'WardrobeComponent - '..T.instance:GetFullName()end E.
attached={}function E.new(T,...)local U=setmetatable({},E)U=U:constructor(T,...)
or U U:run()return U end function E.constructor(T,U,V)S.constructor(T,U)T.id=V T
.root=U:WaitForChild('Base',5)T.occupant=U:WaitForChild('HiddenPlayer',5)T.quad=
Drawing.new'Quad'T._maid:add(function()T.quad:Remove()end)end function E.onStart
(T)E.attached[T.instance]=T S.onStart(T)local U=T.quad U.Visible=false U.
Thickness=2 end function E.onRender(T,U)local V=T.quad if Toggles[
'esp.locker.enabled'].Value then local W=T.root.CFrame local X=P(t,(W*ac).
Position)local Y=P(t,(W*M).Position)local Z=P(t,(W*O).Position)local _=P(t,(W*N)
.Position)if R(X.Z,Y.Z,Z.Z,_.Z)>0 then V.PointA=Q(Y.X,Y.Y)V.PointB=Q(X.X,X.Y)V.
PointC=Q(_.X,_.Y)V.PointD=Q(Z.X,Z.Y)V.Color=Options['esp.locker.color'].Value if
T.occupant.Value then V.Transparency=0.1 elseif u.LatestRoom.Value-T.id>1 then V
.Transparency=0.25 else V.Transparency=0.6 end V.Visible=true else V.Visible=
false end else V.Visible=false end end function E.destroy(T)E.attached[T.
instance]=nil S.destroy(T)end end do local aa=t.WorldToViewportPoint local ab=
Vector2.new local ac=ab(0,3)local M=r F=setmetatable({},{__index=M})F.__index=F
function F.__tostring(N)return'InteractableComponent - '..N.instance:
GetFullName()end F.attached={}function F.new(N,O,...)local P=setmetatable({},F)P
=P:constructor(N,O,...)or P P:run()return P end function F.constructor(N,O,P)M.
constructor(N,O)N.name=P N.label=Drawing.new'Text'N.circle=Drawing.new'Circle'N.
outline=Drawing.new'Circle'N._maid:add(function()N.label:Remove()N.circle:
Remove()N.outline:Remove()end)N._maid:add(O.AncestryChanged:Connect(function(Q,R
)if R==nil then N:destroy()end end))end function F.onStart(N)F.attached[N.
instance]=N M.onStart(N)local O,P,Q=N.label,N.circle,N.outline O.Text=N.name O.
Size=18 O.Center=true O.Outline=true O.Visible=false P.Thickness=1 P.NumSides=6
P.Radius=5 P.Filled=true P.Visible=false Q.Color=Color3.new()Q.Thickness=1.5 Q.
NumSides=6 Q.Radius=5 Q.Filled=false Q.Visible=false Q.ZIndex=2 end function F.
onRender(N,O)local P,Q,R=N.label,N.circle,N.outline if N:isVisualEnabled()then
local S=aa(t,N.instance.Position)local T=S.Z>0 if T then local U=ab(S.X,S.Y)P.
Position=U+ac Q.Position=U R.Position=U local V=N:getColor()P.Color=V Q.Color=V
end P.Visible=T Q.Visible=T R.Visible=T else P.Visible=false Q.Visible=false R.
Visible=false end end function F.isVisualEnabled(N)return Toggles[
'esp.interactable.enabled'].Value end function F.getColor(N)return Options[
'esp.interactable.color'].Value end function F.destroy(N)F.attached[N.instance]=
nil M.destroy(N)end end do local aa=F G=setmetatable({},{__index=aa})G.__index=G
function G.__tostring(ab)return'ObtainableComponent - '..ab.instance:
GetFullName()end G.attached={}function G.new(ab,ac,...)local M=setmetatable({},G
)M=M:constructor(ab,ac,...)or M M:run()return M end function G.constructor(ab,ac
,M)aa.constructor(ab,ac,M)end function G.onStart(ab)G.attached[ab.instance]=ab
aa.onStart(ab)local ac,M,N=ab.label,ab.circle,ab.outline M.NumSides=5 N.NumSides
=5 end function G.isVisualEnabled(ab)return Toggles['esp.obtainable.enabled'].
Value end function G.getColor(ab)return Options['esp.obtainable.color'].Value
end function G.destroy(ab)G.attached[ab.instance]=nil aa.destroy(ab)end end do
local aa=r H=setmetatable({},{__index=aa})H.__index=H function H.__tostring(ab)
return'RoomComponent - '..ab.instance:GetFullName()end H.attached={}function H.
new(ab,...)local ac=setmetatable({},H)ac=ac:constructor(ab,...)or ac ac:run()
return ac end function H.constructor(ab,ac)aa.constructor(ab,ac)ab.id=tonumber(
ac.Name)ab.assets=ac:WaitForChild('Assets',5)end function H.onStart(ab)H.
attached[ab.instance]=ab aa.onStart(ab)local ac=ab.instance:WaitForChild(
'RoomExit',5)if ac then D.new(ac,ab.id)end ab._maid:add(ab.instance.
DescendantAdded:Connect(function(M)ab:onDescendant(M)end))for M,N in ipairs(ab.
instance:GetDescendants())do ab:onDescendant(N)if M%1000==0 then task.wait()end
end end function H.onDescendant(ab,ac)local M=ac.Parent local N=M.Name local O=
ac.Name if O=='Main'then if N=='LeverForGate'then F.new(ac,'Lever')elseif N==
'Lighter'then G.new(ac,'Lighter')elseif N=='Vitamins'then G.new(ac,'Vitamins')
elseif N=='Lockpick'then G.new(ac,'Lockpicks')elseif N=='Bandage'then G.new(ac,
'Bandages')elseif N=='Battery'then G.new(ac,'Batteries')end elseif O=='Holder'
then if N=='CrucifixWall'then G.new(ac,'Crucifix')end elseif O=='Rooms_Locker'
then E.new(ac,ab.id)elseif O=='Hitbox'then if N=='GoldPile'then end end end
function H.destroy(ab)H.attached[ab.instance]=nil aa.destroy(ab)end end n:
SetWatermark'Linoria Community (TerminalVibes)'n:Notify'Loading UI...'do local
aa=n:CreateWindow(h..' ('..i..')')do local ab=aa:AddTab'Gameplay'do local ac=ab:
AddLeftGroupbox'Character Mods'ac:AddToggle('character.sprint.enabled',{Text=
'Sprint Enabled',Default=false,Tooltip=
'Enables Sprinting by pressing the Keybind'}):AddKeyPicker(
'character.sprint.keybind',{Text='Sprint',Default='LeftShift'})ac:AddSlider(
'character.sprint.speed',{Text='Sprint Boost (in seconds)',Min=0,Max=7.5,Default
=0,Rounding=1,Suffix=' studs'})ac:AddToggle('character.glow.enabled',{Text=
'Body Glow',Default=false,Tooltip='Adds a subtle glow for better vision'})ac:
AddSlider('character.glow.brightness',{Text='Glow Brightness',Min=0,Max=100,
Default=0,Rounding=0,Suffix=''})end do local ac=ab:AddLeftGroupbox
'Gameplay Mods'ac:AddToggle('gameplay.a90.disable-movement',{Text=
'A90 Movement Hook',Default=false,Tooltip='Disables movement when A90 appears.'}
)end do local ac=ab:AddRightTabbox'Alerts'local M=ac:AddTab'Alerts'M:AddToggle(
'alerts.enabled',{Text='Alerts Enabled',Default=true,Tooltip=
'Master toggle for all script alerts.'})M:AddToggle('alerts.audio',{Text=
'Enable Sound',Default=true,Tooltip=
'Plays a sound when an important alert is triggered.'})local N=ac:AddTab
'Advanced'N:AddToggle('alerts.debug',{Text='Debug Alerts',Default=true,Tooltip=
'Enabled alerts related to script status.'})N:AddToggle('alerts.entity',{Text=
'Entity Alerts',Default=true,Tooltip='Enabled alerts about entities spawning.'})
end end do local ab=aa:AddTab'Blatant'do local ac=ab:AddLeftGroupbox
'Entity Hooks'ac:AddToggle('blatant.a90.hook-damage',{Text='A90 immunity',
Default=false,Tooltip='You will not be damaged by A90.'})end end do local ab=aa:
AddTab'Visuals'do local ac=ab:AddLeftTabbox'ESP'local M=ac:AddTab'Entity ESP'do
M:AddToggle('esp.player.enabled',{Text='Player ESP',Default=true,Tooltip=
'ESP for other players'}):AddColorPicker('esp.player.color',{Title=
'Player ESP Color',Default=Color3.new(1,1,1)})M:AddToggle('esp.rush.enabled',{
Text='A60/A120 ESP',Default=true,Tooltip='ESP for both A60 and A120 entities'}):
AddColorPicker('esp.rush.a60-color',{Title='A60 ESP Color',Default=Color3.new(1,
0,0)}):AddColorPicker('esp.rush.a120-color',{Title='A120 ESP Color',Default=
Color3.new(0.8,0,0)})end local N=ac:AddTab'Object ESP'do N:AddToggle(
'esp.door.enabled',{Text='Door ESP',Default=false,Tooltip='ESP for doors'}):
AddColorPicker('esp.door.default-color',{Title='Other Doors ESP Color',Default=
Color3.new(0,0.3,0.75)}):AddColorPicker('esp.door.target-color',{Title=
'Current Door ESP Color',Default=Color3.new(0,1,0)})N:AddToggle(
'esp.locker.enabled',{Text='Locker ESP',Default=false,Tooltip='ESP for lockers'}
):AddColorPicker('esp.locker.color',{Title='Locker ESP Color',Default=Color3.
new(0,1,0.9)})N:AddToggle('esp.interactable.enabled',{Text='Interactable ESP',
Default=true,Tooltip='ESP for interactable items'}):AddColorPicker(
'esp.interactable.color',{Title='Interactable ESP Color',Default=Color3.new(1,1,
1)})N:AddToggle('esp.obtainable.enabled',{Text='Obtainable ESP',Default=true,
Tooltip='ESP for items that can be picked up'}):AddColorPicker(
'esp.obtainable.color',{Title='Obtainable ESP Color',Default=Color3.new(1,1,0)})
end end end do local ab=aa:AddTab'Credits'local ac=ab:AddLeftGroupbox'Credits'ac
:AddLabel'TerminalVibes - Creator'ac:AddLabel'Inori @v3rm - UI Library'ac:
AddDivider()ac:AddLabel'Contributors:'ac:AddLabel'> IAmAGoodScammer @v3rm'ac:
AddLabel'> brickmane @v3rm'ac:AddLabel'> yuuiz#1336 @Discord'ac:AddDivider()ac:
AddLabel'Donators:'ac:AddLabel'> reversing#2937 @Discord'local M=ab:
AddRightGroupbox'Socials'M:AddButton{Text='Discord Server',Func=function()
setclipboard'https://discord.gg/8PATx7UKXZ'end}end do local ab=aa:AddTab
'Settings'p:SetLibrary(n)o:SetLibrary(n)p:SetFolder(j)o:SetFolder(j..'/'..k)o:
IgnoreThemeSettings()o:SetIgnoreIndexes{'MenuKeybind'}o:BuildConfigSection(ab)p:
ApplyToTab(ab)local ac=ab:AddLeftGroupbox'Menu'ac:AddButton('Unload',function()n
:Unload()end)ac:AddLabel'Menu bind':AddKeyPicker('MenuKeybind',{Default='End',
NoUI=true,Text='Menu keybind'})ac:AddToggle('Keybinds',{Text=
'Show Keybinds Menu',Default=true}):OnChanged(function()n.KeybindFrame.Visible=
Toggles.Keybinds.Value end)ac:AddToggle('Watermark',{Text='Show Watermark',
Default=true}):OnChanged(function()n:SetWatermarkVisibility(Toggles.Watermark.
Value)end)end end n:Notify'UI Built! [Right Ctrl or Right Shift]'o:
LoadAutoloadConfig()local aa=function()t=f.CurrentCamera or t end f:
GetPropertyChangedSignal'CurrentCamera':Connect(aa)local ab=function(ab)local ac
=ab.Name if ac=='A60'then B.new(ab)elseif ac=='A120'then C.new(ab)end end f.
ChildAdded:Connect(ab)local ac=function(ac)H.new(ac)end f.CurrentRooms.
ChildAdded:Connect(ac)for M,N in ipairs(f.CurrentRooms:GetChildren())do ac(N)end
v.A90.OnClientEvent:Connect(function()if Toggles['gameplay.a90.disable-movement'
].Value then task.wait(0.15)local O=y.attached O.root.AssemblyLinearVelocity=
Vector3.zero g:SendKeyEvent(false,Enum.KeyCode.W,false,game)g:SendKeyEvent(false
,Enum.KeyCode.A,false,game)g:SendKeyEvent(false,Enum.KeyCode.S,false,game)g:
SendKeyEvent(false,Enum.KeyCode.D,false,game)a:BindAction('a90.freeze',function(
)return Enum.ContextActionResult.Sink end,false,Enum.KeyCode.W,Enum.KeyCode.A,
Enum.KeyCode.S,Enum.KeyCode.D,Enum.KeyCode.E)local P=t.CFrame local Q=d.
RenderStepped:Connect(function()t.CFrame=P end)task.wait(1.25)Q:Disconnect()a:
UnbindAction'a90.freeze'end end)local O=function(O)for P,Q in ipairs(I)do for R,
S in pairs(Q.attached)do S:onTick(O)end end end local P=function(P)for Q,R in
ipairs(J)do for S,T in pairs(R.attached)do T:onRender(P)end end end local Q=
function(Q,R)for S,T in ipairs(K)do for U,V in pairs(T.attached)do V:onPhysics(Q
,R)end end local U=y.attached if U then U:onPhysics(Q,R)end end d.Heartbeat:
Connect(O)d.RenderStepped:Connect(P)d.Stepped:Connect(Q)do local R local S=
typeof local T=game.IsA local U=Toggles['blatant.a90.hook-damage']R=
hookmetamethod(game,'__namecall',function(V,...)if checkcaller()then return R(V,
...)end local W=S(V)local X=getnamecallmethod()if W=='Instance'then if T(V,
'RemoteEvent')and X=='FireServer'then if V==v.A90 then if U.Value then return R(
V,false)end end end end return R(V,...)end)end table.insert(J,z)table.insert(J,B
)table.insert(J,C)table.insert(J,D)table.insert(J,E)table.insert(J,F)w.Name=
'Main'w.SoundId='rbxassetid://6026984224'w.Volume=6 w.Parent=e do local R=game.
PlaceId local S=game.PlaceVersion local T=l[R]if S>T then n:Notify
[[Game has been updated! Please be careful when using this script.]]n:Notify
'The place ID and Version has been copied to your clipboard.'setclipboard('['..
tostring(R)..'] = '..tostring(S)..',')end end return n:Notify('['..h..
'] Loaded! ('..i..')')
