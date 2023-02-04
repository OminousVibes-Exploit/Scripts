local a=game:GetService'ContextActionService'local b=game:GetService'Players'
local c=game:GetService'ReplicatedStorage'local d=game:GetService'RunService'
local e=game:GetService'SoundService'local f=game:GetService'Workspace'local g=
game:GetService'VirtualInputManager'local h='Doors'local i='Rooms v5.2'local j=
'TerminalVibes/doors'local k='rooms'local l={[6839171747]=5902}do local m=game.
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
function q.add(t,u,v)local w={item=u,method=v}if t.head==nil then t.head=w end
if t.tail then t.tail.next=w end t.tail=w return u end function q.destroy(t)
while t.head do local u=t.head.item local v=t.head.method if v then u[v](u)
elseif r(u)=='function'then u()elseif s(u)=='RBXScriptConnection'then u:
Disconnect()elseif r(u)=='thread'then task.cancel(u)elseif u.destroy~=nil then u
:destroy()elseif u.Destroy~=nil then u:Destroy()end t.head=t.head.next end end
function q.isEmpty(t)return t.head==nil end end local r do r={}r.__index=r
function r.__tostring(s)return'BaseComponent - '..s.instance:GetFullName()end
local s,t,u=setmetatable,assert,task.defer function r.new(v,...)local w=s({},r)w
=w:constructor(v,...)or w w:run()return w end function r.constructor(v,w,...)v.
instance=w v.running=false v.destructed=false v._maid=q.new()v._maid:add(w.
Destroying:Connect(function()if not v.destructed then v:destroy()end end))end
function r.onStart(v)end function r.run(v)t(not v.running,'['..v:__tostring()..
'] is already running')u(function()v.running=true if not v.destructed then v:
onStart()end end)end function r.destroy(v)t(not v.destructed,'['..v:__tostring()
..'] is already destroyed')v.running=false v.destructed=true v._maid:destroy()
end end local s=b.LocalPlayer local t=f.CurrentCamera local u=c:WaitForChild
'GameData'local v={}do local w=c:WaitForChild'EntityInfo'local x={A90=w:
WaitForChild'A90'}for y,z in pairs(x)do v[y]=z end end local w=Instance.new
'Sound'local x local y local z local A local B local C local D local E local F
local G local H local I local J={}local K={}local L={}local M={}local aa=
function(N,O)local P=0.12 local Q=q.new()local R=Drawing.new'Text'local S=
Drawing.new'Square'local T=Drawing.new'Square'Q:add(R,'Remove')Q:add(S,'Remove')
Q:add(T,'Remove')R.Text=N or''R.Color=Color3.fromRGB(255,255,255)R.ZIndex=3 S.
Color=Color3.fromRGB(25,25,25)S.Filled=true S.Thickness=0 S.Size=R.TextBounds+
Vector2.new(10,8)S.ZIndex=2 T.Color=Color3.fromRGB(0,100,255)T.Filled=true T.
Thickness=0 T.Size=Vector2.new(2,24)T.ZIndex=1 local U=0 for V in pairs(M)do U=
math.max(U,V+1)end M[U]=Q local W=0 local X,Y,Z=pairs(M)Q:add(d.RenderStepped:
Connect(function(_)W+=_ local aa,ab=X(Y,Z)local ac=aa or 0 while aa~=nil do ac=
math.min(ac,aa)aa,ab=X(Y,aa)end local ad=U-ac local ae=5 if W<=P then ae=-(S.
Size.X+2)+(W/P)*(S.Size.X+7)elseif W>=O-P then ae=5-(W-(O-P))/P*(S.Size.X+7)end
local af=Vector2.new(ae,40+(ad*25))R.Position=af+Vector2.new(7,4)S.Position=af+
Vector2.new(2,0)T.Position=af end))Q:add(d.RenderStepped:Once(function(aa)R.
Visible=true S.Visible=true T.Visible=true end))task.delay(O,function()Q:
destroy()M[U]=nil end)end local ab=function(ab,ac)if ab and Toggles[
'alerts.enabled'].Value then local ad={message=ac.message or'',audio=ac.audio or
false,duration=ac.duration or 5}if Toggles['alerts.drawing'].Value then aa(ad.
message,ad.duration)else n:Notify(ad.message,ad.duration)end if ad.audio and
Toggles['alerts.audio'].Value then w.TimePosition=0.25 w:Play()end end end do
local ac=r x=setmetatable({},{__index=ac})x.__index=x function x.__tostring(ad)
return'CharacterComponent - '..ad.instance:GetFullName()end x.attached={}
function x.new(ad,...)local ae=setmetatable({},x)ae=ae:constructor(ad,...)or ae
ae:run()return ae end function x.constructor(ad,ae)ac.constructor(ad,ae)ad.
client=A.attached[b:GetPlayerFromCharacter(ae)]ad.root=ae:WaitForChild(
'HumanoidRootPart',5)ad.humanoid=ae:WaitForChild('Humanoid',5)assert(ad.client~=
nil,'['..ad:__tostring().."] is not a client's character")assert(ad.root~=nil,
'['..ad:__tostring()..'] is missing a HumanoidRootPart')assert(ad.humanoid~=nil,
'['..ad:__tostring()..'] is missing a Humanoid')ad._maid:add(ae.AncestryChanged:
Connect(function(af,N)if N==nil then ad:destroy()end end))end function x.onStart
(ad)x.attached[ad.instance]=ad ac.onStart(ad)end function x.destroy(ad)x.
attached[ad.instance]=nil ac.destroy(ad)end end do local ac=Vector3.new(1,0,1)
local ad=x y=setmetatable({},{__index=ad})y.__index=y function y.__tostring(ae)
return'AvatarComponent - '..ae.instance:GetFullName()end y.attached=nil function
y.new(ae,...)local af=setmetatable({},y)af=af:constructor(ae,...)or af af:run()
return af end function y.constructor(ae,af)ad.constructor(ae,af)ae.light=
Instance.new'PointLight'end function y.onStart(ae)y.attached=ae ad.onStart(ae)
local af=ae.light af.Enabled=false af.Range=100 af.Color=Color3.fromRGB(255,255,
255)af.Shadows=false af.Parent=ae.root while ae.running do af.Enabled=Toggles[
'character.glow.enabled'].Value af.Brightness=Options[
'character.glow.brightness'].Value/50 task.wait(0.5)end end function y.onPhysics
(ae,af,N)local O=Options['character.sprint.speed'].Value if O>0 and Toggles[
'character.sprint.enabled'].Value and Options['character.sprint.keybind']:
GetState()then local P=ae.humanoid.MoveDirection*ac if P.Magnitude>0 then ae.
instance:TranslateBy(P*O*N)end end end function y.destroy(ae)y.attached=nil ad.
destroy(ae)end end do local ac=Vector3.new(5,7,0)local ad=Vector3.new(0,-0.25,0)
local ae,af,N,O=CFrame.new(ad.X-(ac.X/2),ad.Y+(ac.Y/2),ad.Z),CFrame.new(ad.X+(ac
.X/2),ad.Y+(ac.Y/2),ad.Z),CFrame.new(ad.X-(ac.X/2),ad.Y-(ac.Y/2),ad.Z),CFrame.
new(ad.X+(ac.X/2),ad.Y-(ac.Y/2),ad.Z)local P=t.WorldToViewportPoint local Q=
Vector2.new local R=math.min local S=x z=setmetatable({},{__index=S})z.__index=z
function z.__tostring(T)return'FriendComponent - '..T.instance:GetFullName()end
z.attached={}function z.new(T,...)local U=setmetatable({},z)U=U:constructor(T,
...)or U U:run()return U end function z.constructor(T,U)S.constructor(T,U)T.quad
=Drawing.new'Quad'T._maid:add(T.quad,'Remove')end function z.onStart(T)z.
attached[T.instance]=T S.onStart(T)local U=T.quad U.Visible=false U.Thickness=1
U.Transparency=0.75 end function z.onRender(T,U)local V=T.quad if Toggles[
'esp.player.enabled'].Value then local W=T.root.CFrame local X=P(t,(W*ae).
Position)local Y=P(t,(W*af).Position)local Z=P(t,(W*O).Position)local _=P(t,(W*N
).Position)if R(X.Z,Y.Z,Z.Z,_.Z)>0 then V.PointA=Q(Y.X,Y.Y)V.PointB=Q(X.X,X.Y)V.
PointC=Q(_.X,_.Y)V.PointD=Q(Z.X,Z.Y)V.Color=Options['esp.player.color'].Value V.
Visible=true else V.Visible=false end else V.Visible=false end end function z.
destroy(T)z.attached[T.instance]=nil S.destroy(T)end end do local ac=r A=
setmetatable({},{__index=ac})A.__index=A function A.__tostring(ad)return
'ClientComponent - '..ad.instance:GetFullName()end A.attached={}function A.new(
ad,...)local ae=setmetatable({},A)ae=ae:constructor(ad,...)or ae ae:run()return
ae end function A.constructor(ad,ae)ac.constructor(ad,ae)end function A.onStart(
ad)A.attached[ad.instance]=ad ac.onStart(ad)ad._maid:add(ad.instance.
CharacterAdded:Connect(function(ae)ad:onCharacter(ae)end))ad._maid:add(ad.
instance.Backpack.ChildAdded:Connect(function(ae)if ae:IsA'Tool'then ad:onTool(
ae)end end))task.defer(function()local ae=ad.instance.Character if ae then ad:
onCharacter(ae)end end)task.defer(function()for ae,af in ipairs(ad.instance.
Backpack:GetChildren())do if af:IsA'Tool'then ad:onTool(af)end end end)end
function A.onCharacter(ad,ae)if ad.instance==s then ad.character=y.new(ae)else
ad.character=z.new(ae)end end function A.onTool(ad,ae)if ae.Name==
'LibraryHintPaper'then local af=ae:WaitForChild('UI',1)if af then local N={}for
O=1,5 do local P=af:FindFirstChild(tostring(O))if P then local Q=P.
ImageRectOffset.X/50 N[O]=Q end end libraryOrder=N end end end function A.
destroy(ad)A.attached[ad.instance]=nil ac.destroy(ad)end local ad=function(ad)A.
new(ad)end b.PlayerAdded:Connect(ad)for ae,af in ipairs(b:GetPlayers())do task.
defer(ad,af)end end do local ac=Vector3.new(4,6,0)local ad=Vector3.new(0,0,0)
local ae,af,N,O=CFrame.new(ad.X-(ac.X/2),ad.Y+(ac.Y/2),ad.Z),CFrame.new(ad.X+(ac
.X/2),ad.Y+(ac.Y/2),ad.Z),CFrame.new(ad.X-(ac.X/2),ad.Y-(ac.Y/2),ad.Z),CFrame.
new(ad.X+(ac.X/2),ad.Y-(ac.Y/2),ad.Z)local P=t.WorldToViewportPoint local Q=
Vector2.new local R=math.min local S=r B=setmetatable({},{__index=S})B.__index=B
function B.__tostring(T)return'A60Component - '..T.instance:GetFullName()end B.
attached={}function B.new(T,...)local U=setmetatable({},B)U=U:constructor(T,...)
or U U:run()return U end function B.constructor(T,U)S.constructor(T,U)T.root=U.
PrimaryPart or U:WaitForChild('Main',5)assert(T.root,'['..T:__tostring()..
'] is missing a root part!')T.quad=Drawing.new'Quad'T._maid:add(T.quad,'Remove')
end function B.onStart(T)B.attached[T.instance]=T S.onStart(T)local U=T.quad U.
Visible=false U.Thickness=1 U.Color=T:getColor()ab(Toggles['alerts.entity'].
Value,{message='A60 spawned, run and hide in the closest locker!',duration=7.5,
audio=true})end function B.onRender(T,U)local V=T.quad if T:isEnabled()then
local W=T.root.CFrame local X=P(t,(W*ae).Position)local Y=P(t,(W*af).Position)
local Z=P(t,(W*O).Position)local _=P(t,(W*N).Position)if R(X.Z,Y.Z,Z.Z,_.Z)>0
then V.PointA=Q(Y.X,Y.Y)V.PointB=Q(X.X,X.Y)V.PointC=Q(_.X,_.Y)V.PointD=Q(Z.X,Z.Y
)V.Visible=true else V.Visible=false end else V.Visible=false end end function B
.isEnabled(T)return Toggles['esp.rush.enabled'].Value end function B.getColor(T)
return Options['esp.rush.a60-color'].Value end function B.destroy(T)B.attached[T
.instance]=nil S.destroy(T)end end do local ac=Vector3.new(4,6,0)local ad=
Vector3.new(0,0,0)local ae,af,N,O=CFrame.new(ad.X-(ac.X/2),ad.Y+(ac.Y/2),ad.Z),
CFrame.new(ad.X+(ac.X/2),ad.Y+(ac.Y/2),ad.Z),CFrame.new(ad.X-(ac.X/2),ad.Y-(ac.Y
/2),ad.Z),CFrame.new(ad.X+(ac.X/2),ad.Y-(ac.Y/2),ad.Z)local P=t.
WorldToViewportPoint local Q=Vector2.new local R=math.min local S=r C=
setmetatable({},{__index=S})C.__index=C function C.__tostring(T)return
'A120Component - '..T.instance:GetFullName()end C.attached={}function C.new(T,
...)local U=setmetatable({},C)U=U:constructor(T,...)or U U:run()return U end
function C.constructor(T,U)S.constructor(T,U)T.root=U.PrimaryPart or U:
WaitForChild('Main',5)assert(T.root,'['..T:__tostring()..
'] is missing a root part!')T.quad=Drawing.new'Quad'T._maid:add(T.quad,'Remove')
end function C.onStart(T)C.attached[T.instance]=T S.onStart(T)local U=T.quad U.
Visible=false U.Thickness=1 U.Color=T:getColor()ab(Toggles['alerts.entity'].
Value,{message='A120 spawned, run and hide in the closest locker!',duration=7.5,
audio=true})end function C.onRender(T,U)local V=T.quad if T:isEnabled()then
local W=T.root.CFrame local X=P(t,(W*ae).Position)local Y=P(t,(W*af).Position)
local Z=P(t,(W*O).Position)local _=P(t,(W*N).Position)if R(X.Z,Y.Z,Z.Z,_.Z)>0
then V.PointA=Q(Y.X,Y.Y)V.PointB=Q(X.X,X.Y)V.PointC=Q(_.X,_.Y)V.PointD=Q(Z.X,Z.Y
)V.Visible=true else V.Visible=false end else V.Visible=false end end function C
.isEnabled(T)return Toggles['esp.rush.enabled'].Value end function C.getColor(T)
return Options['esp.rush.a120-color'].Value end function C.destroy(T)C.attached[
T.instance]=nil S.destroy(T)end end do local ac=CFrame.new(0,0,1)local ad=t.
WorldToViewportPoint local ae=Vector2.new local af=math.min local N=r D=
setmetatable({},{__index=N})D.__index=D function D.__tostring(O)return
'DoorComponent - '..O.instance:GetFullName()end D.attached={}function D.new(O,
...)local P=setmetatable({},D)P=P:constructor(O,...)or P P:run()return P end
function D.constructor(O,P,Q)N.constructor(O,P)O.id=Q or 0 local R=P.Size*0.5
local S=P.CFrame*ac O.tl=(S*CFrame.new(R.X,R.Y,0)).Position O.tr=(S*CFrame.new(-
R.X,R.Y,0)).Position O.bl=(S*CFrame.new(R.X,-R.Y,0)).Position O.br=(S*CFrame.
new(-R.X,-R.Y,0)).Position O.quad=Drawing.new'Quad'O._maid:add(O.quad,'Remove')
end function D.onStart(O)D.attached[O.instance]=O N.onStart(O)local P=O.quad P.
Visible=false P.Thickness=2 end function D.onRender(O,P)local Q=O.quad if
Toggles['esp.door.enabled'].Value then local R=ad(t,O.tl)local S=ad(t,O.tr)local
T=ad(t,O.br)local U=ad(t,O.bl)if af(R.Z,S.Z,T.Z,U.Z)>0 then Q.PointA=ae(S.X,S.Y)
Q.PointB=ae(R.X,R.Y)Q.PointC=ae(U.X,U.Y)Q.PointD=ae(T.X,T.Y)local V=O.id-u.
LatestRoom.Value if V==0 then Q.Color=Options['esp.door.target-color'].Value
else Q.Color=Options['esp.door.default-color'].Value if V<0 then Q.Transparency=
0.5 else Q.Transparency=1 end end Q.Visible=true else Q.Visible=false end else Q
.Visible=false end end function D.destroy(O)D.attached[O.instance]=nil N.
destroy(O)end end do local ac=Vector3.new(4.675,7.15,0)local ad=Vector3.new(0,0,
-1.25)local ae,af,N,O=CFrame.new(ad.X-(ac.X/2),ad.Y+(ac.Y/2),ad.Z),CFrame.new(ad
.X+(ac.X/2),ad.Y+(ac.Y/2),ad.Z),CFrame.new(ad.X-(ac.X/2),ad.Y-(ac.Y/2),ad.Z),
CFrame.new(ad.X+(ac.X/2),ad.Y-(ac.Y/2),ad.Z)local P=t.WorldToViewportPoint local
Q=Vector2.new local R=math.min local S=r E=setmetatable({},{__index=S})E.__index
=E function E.__tostring(T)return'WardrobeComponent - '..T.instance:GetFullName(
)end E.attached={}function E.new(T,...)local U=setmetatable({},E)U=U:
constructor(T,...)or U U:run()return U end function E.constructor(T,U,V)S.
constructor(T,U)T.id=V T.root=U:WaitForChild('Base',5)T.occupant=U:WaitForChild(
'HiddenPlayer',5)T.quad=Drawing.new'Quad'T._maid:add(T.quad,'Remove')end
function E.onStart(T)E.attached[T.instance]=T S.onStart(T)local U=T.quad U.
Visible=false U.Thickness=2 end function E.onRender(T,U)local V=T.quad if
Toggles['esp.locker.enabled'].Value then local W=T.root.CFrame local X=P(t,(W*ae
).Position)local Y=P(t,(W*af).Position)local Z=P(t,(W*O).Position)local _=P(t,(W
*N).Position)if R(X.Z,Y.Z,Z.Z,_.Z)>0 then V.PointA=Q(Y.X,Y.Y)V.PointB=Q(X.X,X.Y)
V.PointC=Q(_.X,_.Y)V.PointD=Q(Z.X,Z.Y)V.Color=Options['esp.locker.color'].Value
if T.occupant.Value then V.Transparency=0.1 elseif u.LatestRoom.Value-T.id>1
then V.Transparency=0.25 else V.Transparency=0.6 end V.Visible=true else V.
Visible=false end else V.Visible=false end end function E.destroy(T)E.attached[T
.instance]=nil S.destroy(T)end end do local ac=t.WorldToViewportPoint local ad=
Vector2.new local ae=ad(0,3)local af=r F=setmetatable({},{__index=af})F.__index=
F function F.__tostring(N)return'InteractableComponent - '..N.instance:
GetFullName()end F.attached={}function F.new(N,O,...)local P=setmetatable({},F)P
=P:constructor(N,O,...)or P P:run()return P end function F.constructor(N,O,P)af.
constructor(N,O)N.name=P N.label=Drawing.new'Text'N.circle=Drawing.new'Circle'N.
outline=Drawing.new'Circle'N._maid:add(N.label,'Remove')N._maid:add(N.circle,
'Remove')N._maid:add(N.outline,'Remove')N._maid:add(O.AncestryChanged:Connect(
function(Q,R)if R==nil then N:destroy()end end))end function F.onStart(N)F.
attached[N.instance]=N af.onStart(N)local O,P,Q=N.label,N.circle,N.outline O.
Text=N.name O.Size=18 O.Center=true O.Outline=true O.Visible=false P.Thickness=1
P.NumSides=6 P.Radius=5 P.Filled=true P.Visible=false Q.Color=Color3.new()Q.
Thickness=1.5 Q.NumSides=6 Q.Radius=5 Q.Filled=false Q.Visible=false Q.ZIndex=2
end function F.onRender(N,O)local P,Q,R=N.label,N.circle,N.outline if N:
isVisualEnabled()then local S=ac(t,N.instance.Position)local T=S.Z>0 if T then
local U=ad(S.X,S.Y)P.Position=U+ae Q.Position=U R.Position=U local V=N:getColor(
)P.Color=V Q.Color=V end P.Visible=T Q.Visible=T R.Visible=T else P.Visible=
false Q.Visible=false R.Visible=false end end function F.isVisualEnabled(N)
return Toggles['esp.interactable.enabled'].Value end function F.getColor(N)
return Options['esp.interactable.color'].Value end function F.destroy(N)F.
attached[N.instance]=nil af.destroy(N)end end do local ac=F G=setmetatable({},{
__index=ac})G.__index=G function G.__tostring(ad)return'ObtainableComponent - '
..ad.instance:GetFullName()end G.attached={}function G.new(ad,ae,...)local af=
setmetatable({},G)af=af:constructor(ad,ae,...)or af af:run()return af end
function G.constructor(ad,ae,af)ac.constructor(ad,ae,af)end function G.onStart(
ad)G.attached[ad.instance]=ad ac.onStart(ad)local ae,af,N=ad.label,ad.circle,ad.
outline af.NumSides=5 N.NumSides=5 end function G.isVisualEnabled(ad)return
Toggles['esp.obtainable.enabled'].Value end function G.getColor(ad)return
Options['esp.obtainable.color'].Value end function G.destroy(ad)G.attached[ad.
instance]=nil ac.destroy(ad)end end do local ac=G H=setmetatable({},{__index=ac}
)H.__index=H function H.__tostring(ad)return'GoldComponent - '..ad.instance:
GetFullName()end function H.new(ad,...)local ae=setmetatable({},H)ae=ae:
constructor(ad,...)or ae ae:run()return ae end function H.constructor(ad,ae)ac.
constructor(ad,ae,'Gold')ad.denomination=0 end function H.onStart(ad)ac.onStart(
ad)ad:onDenominationChanged()ad.instance:GetAttributeChangedSignal'GoldValue':
Connect(function()ad:onDenominationChanged()end)end function H.onRender(ad,ae)ad
.label.Text=Options['esp.gold.format'].Value:gsub('{amount}',tostring(ad.
denomination))ac.onRender(ad,ae)end function H.onDenominationChanged(ad)ad.
denomination=ad.instance.Parent:GetAttribute'GoldValue'or 0 end function H.
isVisualEnabled(ad)return Toggles['esp.gold.enabled'].Value and ad.denomination
>=Options['esp.gold.minimum'].Value end function H.getColor(ad)return Options[
'esp.gold.color'].Value end end do local ac=r I=setmetatable({},{__index=ac})I.
__index=I function I.__tostring(ad)return'RoomComponent - '..ad.instance:
GetFullName()end I.attached={}function I.new(ad,...)local ae=setmetatable({},I)
ae=ae:constructor(ad,...)or ae ae:run()return ae end function I.constructor(ad,
ae)ac.constructor(ad,ae)ad.id=tonumber(ae.Name)ad.assets=ae:WaitForChild(
'Assets',5)end function I.onStart(ad)I.attached[ad.instance]=ad ac.onStart(ad)
local ae=ad.instance:WaitForChild('RoomExit',5)if ae then D.new(ae,ad.id)end ad.
_maid:add(ad.instance.DescendantAdded:Connect(function(af)ad:onDescendant(af)end
))for af,N in ipairs(ad.instance:GetDescendants())do ad:onDescendant(N)if af%
1000==0 then task.wait()end end end function I.onDescendant(ad,ae)local af=ae.
Parent local N=af.Name local O=ae.Name if O=='Main'then if N=='LeverForGate'then
F.new(ae,'Lever')elseif N=='Lighter'then G.new(ae,'Lighter')elseif N=='Vitamins'
then G.new(ae,'Vitamins')elseif N=='Lockpick'then G.new(ae,'Lockpicks')elseif N
=='Bandage'then G.new(ae,'Bandages')elseif N=='Battery'then G.new(ae,'Batteries'
)end elseif O=='Holder'then if N=='CrucifixWall'then G.new(ae,'Crucifix')end
elseif O=='Rooms_Locker'or O=='Rooms_Locker_Fridge'then E.new(ae,ad.id)elseif O
=='Hitbox'then if N=='GoldPile'then H.new(ae)end end end function I.destroy(ad)I
.attached[ad.instance]=nil ac.destroy(ad)end end n:SetWatermark
'Linoria Community (TerminalVibes)'n:Notify'Loading UI...'do local ac=n:
CreateWindow(h..' ('..i..')')do local ad=ac:AddTab'Gameplay'do local ae=ad:
AddLeftGroupbox'Character Mods'ae:AddToggle('character.sprint.enabled',{Text=
'Sprint Enabled',Default=false,Tooltip=
'Enables Sprinting by pressing the Keybind'}):AddKeyPicker(
'character.sprint.keybind',{Text='Sprint',Default='LeftShift'})ae:AddSlider(
'character.sprint.speed',{Text='Sprint Boost (in seconds)',Min=0,Max=7.5,Default
=0,Rounding=1,Suffix=' studs'})ae:AddToggle('character.glow.enabled',{Text=
'Body Glow',Default=false,Tooltip='Adds a subtle glow for better vision'})ae:
AddSlider('character.glow.brightness',{Text='Glow Brightness',Min=0,Max=100,
Default=0,Rounding=0,Suffix=''})end do local ae=ad:AddLeftGroupbox
'Gameplay Mods'ae:AddToggle('gameplay.a90.disable-movement',{Text=
'A90 Movement Hook',Default=false,Tooltip='Disables movement when A90 appears.'}
)end do local ae=ad:AddRightTabbox'Alerts'local af=ae:AddTab'Alerts'af:
AddToggle('alerts.enabled',{Text='Alerts Enabled',Default=true,Tooltip=
'Master toggle for all script alerts.'})af:AddToggle('alerts.drawing',{Text=
'Use Drawing API',Default=true,Tooltip=
'Enables the drawing API for script alerts.'})af:AddToggle('alerts.audio',{Text=
'Enable Sound',Default=true,Tooltip=
'Plays a sound when an important alert is triggered.'})local N=ae:AddTab
'Advanced'N:AddToggle('alerts.debug',{Text='Debug Alerts',Default=true,Tooltip=
'Enabled alerts related to script status.'})N:AddToggle('alerts.entity',{Text=
'Entity Alerts',Default=true,Tooltip='Enabled alerts about entities spawning.'})
end end do local ad=ac:AddTab'Blatant'do local ae=ad:AddLeftGroupbox
'Entity Hooks'ae:AddToggle('blatant.a90.remove',{Text='Remove A90',Default=false
,Tooltip='A90 will no longer spawn for you.'})end end do local ad=ac:AddTab
'Visuals'do local ae=ad:AddLeftTabbox'ESP'local af=ae:AddTab'Entity ESP'do af:
AddToggle('esp.player.enabled',{Text='Player ESP',Default=true,Tooltip=
'ESP for other players'}):AddColorPicker('esp.player.color',{Title=
'Player ESP Color',Default=Color3.new(1,1,1)})af:AddToggle('esp.rush.enabled',{
Text='A60/A120 ESP',Default=true,Tooltip='ESP for both A60 and A120 entities'}):
AddColorPicker('esp.rush.a60-color',{Title='A60 ESP Color',Default=Color3.new(1,
0,0)}):AddColorPicker('esp.rush.a120-color',{Title='A120 ESP Color',Default=
Color3.new(0.8,0,0)})end local N=ae:AddTab'Object ESP'do N:AddToggle(
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
end end do local ae=ad:AddLeftGroupbox'Gold ESP'ae:AddToggle('esp.gold.enabled',
{Text='Gold ESP',Default=true,Tooltip='ESP for items that can be picked up'}):
AddColorPicker('esp.gold.color',{Title='Gold ESP Color',Default=Color3.new(1,1,0
)})ae:AddInput('esp.gold.format',{Text='Custom Label',Default='Gold [{amount}]',
Placeholder='Label Text',Tooltip=
[[Custom text to display for gold. {amount} will be replaced with the amount of gold.]]
})ae:AddSlider('esp.gold.minimum',{Text='Minimum Gold',Default=10,Min=0,Max=100,
Rounding=0,Tooltip='Minimum amount of gold to display'})end end do local ad=ac:
AddTab'Credits'local ae=ad:AddLeftGroupbox'Credits'ae:AddLabel
'TerminalVibes - Creator'ae:AddLabel'Inori @v3rm - UI Library'ae:AddDivider()ae:
AddLabel'Contributors:'ae:AddLabel'> IAmAGoodScammer @v3rm'ae:AddLabel
'> brickmane @v3rm'ae:AddLabel'> yuuiz#1336 @Discord'ae:AddDivider()ae:AddLabel
'Donators:'ae:AddLabel'> reversing#2937 @Discord'local af=ad:AddRightGroupbox
'Socials'af:AddButton{Text='Discord Server',Func=function()setclipboard
'https://discord.gg/8PATx7UKXZ'end}end do local ad=ac:AddTab'Settings'p:
SetLibrary(n)o:SetLibrary(n)p:SetFolder(j)o:SetFolder(j..'/'..k)o:
IgnoreThemeSettings()o:SetIgnoreIndexes{'MenuKeybind'}o:BuildConfigSection(ad)p:
ApplyToTab(ad)local ae=ad:AddLeftGroupbox'Menu'ae:AddButton('Unload',function()n
:Unload()end)ae:AddLabel'Menu bind':AddKeyPicker('MenuKeybind',{Default='End',
NoUI=true,Text='Menu keybind'})ae:AddToggle('Keybinds',{Text=
'Show Keybinds Menu',Default=true}):OnChanged(function()n.KeybindFrame.Visible=
Toggles.Keybinds.Value end)ae:AddToggle('Watermark',{Text='Show Watermark',
Default=true}):OnChanged(function()n:SetWatermarkVisibility(Toggles.Watermark.
Value)end)end end n:Notify'UI Built! [Right Ctrl or Right Shift]'o:
LoadAutoloadConfig()local ac=function()t=f.CurrentCamera or t end f:
GetPropertyChangedSignal'CurrentCamera':Connect(ac)local ad=function(ad)local ae
=ad.Name if ae=='A60'then B.new(ad)elseif ae=='A120'then C.new(ad)end end f.
ChildAdded:Connect(ad)local ae=function(ae)I.new(ae)end f.CurrentRooms.
ChildAdded:Connect(ae)for af,N in ipairs(f.CurrentRooms:GetChildren())do ae(N)
end v.A90.OnClientEvent:Connect(function()if Toggles['blatant.a90.remove'].Value
then return end if Toggles['gameplay.a90.disable-movement'].Value then task.
wait(0.9)local O=y.attached O.root.AssemblyLinearVelocity=Vector3.zero g:
SendKeyEvent(false,Enum.KeyCode.W,false,game)g:SendKeyEvent(false,Enum.KeyCode.A
,false,game)g:SendKeyEvent(false,Enum.KeyCode.S,false,game)g:SendKeyEvent(false,
Enum.KeyCode.D,false,game)a:BindAction('a90.freeze',function()return Enum.
ContextActionResult.Sink end,false,Enum.KeyCode.W,Enum.KeyCode.A,Enum.KeyCode.S,
Enum.KeyCode.D,Enum.KeyCode.E)local P=t.CFrame local Q=d.RenderStepped:Connect(
function()t.CFrame=P end)task.wait(0.4)Q:Disconnect()a:UnbindAction'a90.freeze'
end end)local O=function(O)for P,Q in ipairs(J)do for R,S in pairs(Q.attached)do
S:onTick(O)end end end local P=function(P)for Q,R in ipairs(K)do for S,T in
pairs(R.attached)do T:onRender(P)end end end local Q=function(Q,R)for S,T in
ipairs(L)do for U,V in pairs(T.attached)do V:onPhysics(Q,R)end end local U=y.
attached if U then U:onPhysics(Q,R)end end d.Heartbeat:Connect(O)d.RenderStepped
:Connect(P)d.Stepped:Connect(Q)Toggles['blatant.a90.remove']:OnChanged(function(
)local R={}for S,T in ipairs(getconnections(v.A90.OnClientEvent))do local U=T.
Function if U then local V=getfenv(U).script if V and V.Name=='RemoteListener'
then table.insert(R,T)end end end if Toggles['blatant.a90.remove'].Value then
for U,V in ipairs(R)do V:Disable()end else for U,V in ipairs(R)do V:Enable()end
end end)table.insert(K,z)table.insert(K,B)table.insert(K,C)table.insert(K,D)
table.insert(K,E)table.insert(K,F)w.Name='Main'w.SoundId=
'rbxassetid://6026984224'w.Volume=6 w.Parent=e do local R=game.PlaceId local S=
game.PlaceVersion local T=l[R]if S>T then n:Notify
[[Game has been updated! Please be careful when using this script.]]n:Notify
'The place ID and Version has been copied to your clipboard.'setclipboard('['..
tostring(R)..'] = '..tostring(S)..',')end end return n:Notify('['..h..
'] Loaded! ('..i..')')
