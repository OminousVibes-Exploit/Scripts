local a=game:GetService'ContextActionService'local b=game:GetService'Players'
local c=game:GetService'ReplicatedStorage'local d=game:GetService'RunService'
local e=game:GetService'SoundService'local f=game:GetService'Workspace'local g=
game:GetService'VirtualInputManager'local h='Doors'local i='Rooms v5.3'local j=
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
'Sound'local x=q.new()local y local z local A local B local C local D local E
local F local G local H local I local J local K={}local L={}local M={}local N={}
local aa=function(O,P)local Q=0.12 local R=q.new()local S=Drawing.new'Text'local
T=Drawing.new'Square'local U=Drawing.new'Square'R:add(S,'Remove')R:add(T,
'Remove')R:add(U,'Remove')S.Text=O or''S.Color=Color3.fromRGB(255,255,255)S.
ZIndex=3 T.Color=Color3.fromRGB(25,25,25)T.Filled=true T.Thickness=0 T.Size=S.
TextBounds+Vector2.new(10,8)T.ZIndex=2 U.Color=Color3.fromRGB(0,100,255)U.Filled
=true U.Thickness=0 U.Size=Vector2.new(2,24)U.ZIndex=1 local V=0 for W in pairs(
N)do V=math.max(V,W+1)end N[V]=R local X=0 local Y,Z,_=pairs(N)R:add(d.
RenderStepped:Connect(function(aa)X+=aa local ab,ac=Y(Z,_)local ad=ab or 0 while
ab~=nil do ad=math.min(ad,ab)ab,ac=Y(Z,ab)end local ae=V-ad local af=5 if X<=Q
then af=-(T.Size.X+2)+(X/Q)*(T.Size.X+7)elseif X>=P-Q then af=5-(X-(P-Q))/Q*(T.
Size.X+7)end local ag=Vector2.new(af,40+(ae*25))S.Position=ag+Vector2.new(7,4)T.
Position=ag+Vector2.new(2,0)U.Position=ag end))R:add(d.RenderStepped:Once(
function(aa)S.Visible=true T.Visible=true U.Visible=true end))task.delay(P,
function()R:destroy()N[V]=nil end)end local ab=function(ab,ac)if ab and Toggles[
'alerts.enabled'].Value then local ad={message=ac.message or'',audio=ac.audio or
false,duration=ac.duration or 5}if Toggles['alerts.drawing'].Value then aa(ad.
message,ad.duration)else n:Notify(ad.message,ad.duration)end if ad.audio and
Toggles['alerts.audio'].Value then w.TimePosition=0.25 w:Play()end end end do
local ac=r y=setmetatable({},{__index=ac})y.__index=y function y.__tostring(ad)
return'CharacterComponent - '..ad.instance:GetFullName()end y.attached={}
function y.new(ad,...)local ae=setmetatable({},y)ae=ae:constructor(ad,...)or ae
ae:run()return ae end function y.constructor(ad,ae)ac.constructor(ad,ae)ad.
client=B.attached[b:GetPlayerFromCharacter(ae)]ad.root=ae:WaitForChild(
'HumanoidRootPart',5)ad.humanoid=ae:WaitForChild('Humanoid',5)assert(ad.client~=
nil,'['..ad:__tostring().."] is not a client's character")assert(ad.root~=nil,
'['..ad:__tostring()..'] is missing a HumanoidRootPart')assert(ad.humanoid~=nil,
'['..ad:__tostring()..'] is missing a Humanoid')ad._maid:add(ae.AncestryChanged:
Connect(function(af,ag)if ag==nil then ad:destroy()end end))end function y.
onStart(ad)y.attached[ad.instance]=ad ac.onStart(ad)end function y.destroy(ad)y.
attached[ad.instance]=nil ac.destroy(ad)end end do local ac=Vector3.new(1,0,1)
local ad=y z=setmetatable({},{__index=ad})z.__index=z function z.__tostring(ae)
return'AvatarComponent - '..ae.instance:GetFullName()end z.attached=nil function
z.new(ae,...)local af=setmetatable({},z)af=af:constructor(ae,...)or af af:run()
return af end function z.constructor(ae,af)ad.constructor(ae,af)ae.parts={ae.
_maid:add(Instance.new'Part'),ae._maid:add(Instance.new'Part'),ae._maid:add(
Instance.new'Part'),ae._maid:add(Instance.new'Part')}ae.lights={ae._maid:add(
Instance.new'PointLight'),ae._maid:add(Instance.new'PointLight'),ae._maid:add(
Instance.new'PointLight'),ae._maid:add(Instance.new'PointLight')}end function z.
onStart(ae)z.attached=ae ad.onStart(ae)for af=1,4 do local ag=ae.parts[af]local
O=ae.lights[af]local P=ae._maid:add(Instance.new'WeldConstraint')ag.Size=Vector3
.zero ag.Massless=true ag.CanCollide=false ag.CanTouch=false ag.CanQuery=false O
.Enabled=false O.Range=60 O.Color=Color3.new(1,1,1)O.Shadows=false P.Part0=ae.
root P.Part1=ag ag.Parent=f O.Parent=ag P.Parent=ag end for af,ag in ipairs(ae.
parts)do local O=(af-1)*math.pi/2 ag.Position=ae.root.Position+Vector3.new(math.
cos(O)*25,5,math.sin(O)*25)end while ae.running do for O=1,4 do local P=ae.
lights[O]P.Enabled=Toggles['character.glow.enabled'].Value P.Brightness=Options[
'character.glow.brightness'].Value/50 end task.wait(0.5)end end function z.
onPhysics(ae,af,ag)local O=Options['character.sprint.speed'].Value if O>0 and
Toggles['character.sprint.enabled'].Value and Options['character.sprint.keybind'
]:GetState()then local P=ae.humanoid.MoveDirection*ac if P.Magnitude>0 then ae.
instance:TranslateBy(P*O*ag)end end end function z.destroy(ae)z.attached=nil ad.
destroy(ae)end end do local ac=Vector3.new(5,7,0)local ad=Vector3.new(0,-0.25,0)
local ae,af,ag,O=CFrame.new(ad.X-(ac.X/2),ad.Y+(ac.Y/2),ad.Z),CFrame.new(ad.X+(
ac.X/2),ad.Y+(ac.Y/2),ad.Z),CFrame.new(ad.X-(ac.X/2),ad.Y-(ac.Y/2),ad.Z),CFrame.
new(ad.X+(ac.X/2),ad.Y-(ac.Y/2),ad.Z)local P=t.WorldToViewportPoint local Q=
Vector2.new local R=math.min local S=y A=setmetatable({},{__index=S})A.__index=A
function A.__tostring(T)return'FriendComponent - '..T.instance:GetFullName()end
A.attached={}function A.new(T,...)local U=setmetatable({},A)U=U:constructor(T,
...)or U U:run()return U end function A.constructor(T,U)S.constructor(T,U)T.quad
=Drawing.new'Quad'T._maid:add(T.quad,'Remove')end function A.onStart(T)A.
attached[T.instance]=T S.onStart(T)local U=T.quad U.Visible=false U.Thickness=1
U.Transparency=0.75 end function A.onRender(T,U)local V=T.quad if Toggles[
'esp.player.enabled'].Value then local W=T.root.CFrame local X=P(t,(W*ae).
Position)local Y=P(t,(W*af).Position)local Z=P(t,(W*O).Position)local _=P(t,(W*
ag).Position)if R(X.Z,Y.Z,Z.Z,_.Z)>0 then V.PointA=Q(Y.X,Y.Y)V.PointB=Q(X.X,X.Y)
V.PointC=Q(_.X,_.Y)V.PointD=Q(Z.X,Z.Y)V.Color=Options['esp.player.color'].Value
V.Visible=true else V.Visible=false end else V.Visible=false end end function A.
destroy(T)A.attached[T.instance]=nil S.destroy(T)end end do local ac=r B=
setmetatable({},{__index=ac})B.__index=B function B.__tostring(ad)return
'ClientComponent - '..ad.instance:GetFullName()end B.attached={}function B.new(
ad,...)local ae=setmetatable({},B)ae=ae:constructor(ad,...)or ae ae:run()return
ae end function B.constructor(ad,ae)ac.constructor(ad,ae)end function B.onStart(
ad)B.attached[ad.instance]=ad ac.onStart(ad)ad._maid:add(ad.instance.
CharacterAdded:Connect(function(ae)ad:onCharacter(ae)end))ad._maid:add(ad.
instance.Backpack.ChildAdded:Connect(function(ae)if ae:IsA'Tool'then ad:onTool(
ae)end end))task.defer(function()local ae=ad.instance.Character if ae then ad:
onCharacter(ae)end end)task.defer(function()for ae,af in ipairs(ad.instance.
Backpack:GetChildren())do if af:IsA'Tool'then ad:onTool(af)end end end)end
function B.onCharacter(ad,ae)if ad.instance==s then ad.character=z.new(ae)else
ad.character=A.new(ae)end end function B.onTool(ad,ae)if ae.Name==
'LibraryHintPaper'then local af=ae:WaitForChild('UI',1)if af then local ag={}for
O=1,5 do local P=af:FindFirstChild(tostring(O))if P then local Q=P.
ImageRectOffset.X/50 ag[O]=Q end end libraryOrder=ag end end end function B.
destroy(ad)B.attached[ad.instance]=nil ac.destroy(ad)end local ad=function(ad)B.
new(ad)end b.PlayerAdded:Connect(ad)for ae,af in ipairs(b:GetPlayers())do task.
defer(ad,af)end end do local ac=Vector3.new(4,6,0)local ad=Vector3.new(0,0,0)
local ae,af,ag,O=CFrame.new(ad.X-(ac.X/2),ad.Y+(ac.Y/2),ad.Z),CFrame.new(ad.X+(
ac.X/2),ad.Y+(ac.Y/2),ad.Z),CFrame.new(ad.X-(ac.X/2),ad.Y-(ac.Y/2),ad.Z),CFrame.
new(ad.X+(ac.X/2),ad.Y-(ac.Y/2),ad.Z)local P=t.WorldToViewportPoint local Q=
Vector2.new local R=math.min local S=r C=setmetatable({},{__index=S})C.__index=C
function C.__tostring(T)return'A60Component - '..T.instance:GetFullName()end C.
attached={}function C.new(T,...)local U=setmetatable({},C)U=U:constructor(T,...)
or U U:run()return U end function C.constructor(T,U)S.constructor(T,U)T.root=U.
PrimaryPart or U:WaitForChild('Main',5)assert(T.root,'['..T:__tostring()..
'] is missing a root part!')T.quad=Drawing.new'Quad'T._maid:add(T.quad,'Remove')
end function C.onStart(T)C.attached[T.instance]=T S.onStart(T)local U=T.quad U.
Visible=false U.Thickness=1 U.Color=T:getColor()ab(Toggles['alerts.entity'].
Value,{message='A60 spawned, run and hide in the closest locker!',duration=7.5,
audio=true})end function C.onRender(T,U)local V=T.quad if T:isEnabled()then
local W=T.root.CFrame local X=P(t,(W*ae).Position)local Y=P(t,(W*af).Position)
local Z=P(t,(W*O).Position)local _=P(t,(W*ag).Position)if R(X.Z,Y.Z,Z.Z,_.Z)>0
then V.PointA=Q(Y.X,Y.Y)V.PointB=Q(X.X,X.Y)V.PointC=Q(_.X,_.Y)V.PointD=Q(Z.X,Z.Y
)V.Visible=true else V.Visible=false end else V.Visible=false end end function C
.isEnabled(T)return Toggles['esp.rush.enabled'].Value end function C.getColor(T)
return Options['esp.rush.a60-color'].Value end function C.destroy(T)C.attached[T
.instance]=nil S.destroy(T)end end do local ac=Vector3.new(4,6,0)local ad=
Vector3.new(0,0,0)local ae,af,ag,O=CFrame.new(ad.X-(ac.X/2),ad.Y+(ac.Y/2),ad.Z),
CFrame.new(ad.X+(ac.X/2),ad.Y+(ac.Y/2),ad.Z),CFrame.new(ad.X-(ac.X/2),ad.Y-(ac.Y
/2),ad.Z),CFrame.new(ad.X+(ac.X/2),ad.Y-(ac.Y/2),ad.Z)local P=t.
WorldToViewportPoint local Q=Vector2.new local R=math.min local S=r D=
setmetatable({},{__index=S})D.__index=D function D.__tostring(T)return
'A120Component - '..T.instance:GetFullName()end D.attached={}function D.new(T,
...)local U=setmetatable({},D)U=U:constructor(T,...)or U U:run()return U end
function D.constructor(T,U)S.constructor(T,U)T.root=U.PrimaryPart or U:
WaitForChild('Main',5)assert(T.root,'['..T:__tostring()..
'] is missing a root part!')T.quad=Drawing.new'Quad'T._maid:add(T.quad,'Remove')
end function D.onStart(T)D.attached[T.instance]=T S.onStart(T)local U=T.quad U.
Visible=false U.Thickness=1 U.Color=T:getColor()ab(Toggles['alerts.entity'].
Value,{message='A120 spawned, run and hide in the closest locker!',duration=7.5,
audio=true})end function D.onRender(T,U)local V=T.quad if T:isEnabled()then
local W=T.root.CFrame local X=P(t,(W*ae).Position)local Y=P(t,(W*af).Position)
local Z=P(t,(W*O).Position)local _=P(t,(W*ag).Position)if R(X.Z,Y.Z,Z.Z,_.Z)>0
then V.PointA=Q(Y.X,Y.Y)V.PointB=Q(X.X,X.Y)V.PointC=Q(_.X,_.Y)V.PointD=Q(Z.X,Z.Y
)V.Visible=true else V.Visible=false end else V.Visible=false end end function D
.isEnabled(T)return Toggles['esp.rush.enabled'].Value end function D.getColor(T)
return Options['esp.rush.a120-color'].Value end function D.destroy(T)D.attached[
T.instance]=nil S.destroy(T)end end do local ac=CFrame.new(0,0,1)local ad=t.
WorldToViewportPoint local ae=Vector2.new local af=math.min local ag=r E=
setmetatable({},{__index=ag})E.__index=E function E.__tostring(O)return
'DoorComponent - '..O.instance:GetFullName()end E.attached={}function E.new(O,
...)local P=setmetatable({},E)P=P:constructor(O,...)or P P:run()return P end
function E.constructor(O,P,Q)ag.constructor(O,P)O.id=Q or 0 local R=P.Size*0.5
local S=P.CFrame*ac O.tl=(S*CFrame.new(R.X,R.Y,0)).Position O.tr=(S*CFrame.new(-
R.X,R.Y,0)).Position O.bl=(S*CFrame.new(R.X,-R.Y,0)).Position O.br=(S*CFrame.
new(-R.X,-R.Y,0)).Position O.quad=Drawing.new'Quad'O._maid:add(O.quad,'Remove')
end function E.onStart(O)E.attached[O.instance]=O ag.onStart(O)local P=O.quad P.
Visible=false P.Thickness=2 end function E.onRender(O,P)local Q=O.quad if
Toggles['esp.door.enabled'].Value then local R=ad(t,O.tl)local S=ad(t,O.tr)local
T=ad(t,O.br)local U=ad(t,O.bl)if af(R.Z,S.Z,T.Z,U.Z)>0 then Q.PointA=ae(S.X,S.Y)
Q.PointB=ae(R.X,R.Y)Q.PointC=ae(U.X,U.Y)Q.PointD=ae(T.X,T.Y)local V=O.id-u.
LatestRoom.Value if V==0 then Q.Color=Options['esp.door.target-color'].Value
else Q.Color=Options['esp.door.default-color'].Value if V<0 then Q.Transparency=
0.5 else Q.Transparency=1 end end Q.Visible=true else Q.Visible=false end else Q
.Visible=false end end function E.destroy(O)E.attached[O.instance]=nil ag.
destroy(O)end end do local ac=Vector3.new(4.675,7.15,0)local ad=Vector3.new(0,0,
-1.25)local ae,af,ag,O=CFrame.new(ad.X-(ac.X/2),ad.Y+(ac.Y/2),ad.Z),CFrame.new(
ad.X+(ac.X/2),ad.Y+(ac.Y/2),ad.Z),CFrame.new(ad.X-(ac.X/2),ad.Y-(ac.Y/2),ad.Z),
CFrame.new(ad.X+(ac.X/2),ad.Y-(ac.Y/2),ad.Z)local P=t.WorldToViewportPoint local
Q=Vector2.new local R=math.min local S=r F=setmetatable({},{__index=S})F.__index
=F function F.__tostring(T)return'WardrobeComponent - '..T.instance:GetFullName(
)end F.attached={}function F.new(T,...)local U=setmetatable({},F)U=U:
constructor(T,...)or U U:run()return U end function F.constructor(T,U,V)S.
constructor(T,U)T.id=V T.root=U:WaitForChild('Base',5)T.occupant=U:WaitForChild(
'HiddenPlayer',5)T.quad=Drawing.new'Quad'T._maid:add(T.quad,'Remove')end
function F.onStart(T)F.attached[T.instance]=T S.onStart(T)local U=T.quad U.
Visible=false U.Thickness=2 end function F.onRender(T,U)local V=T.quad if
Toggles['esp.locker.enabled'].Value then local W=T.root.CFrame local X=P(t,(W*ae
).Position)local Y=P(t,(W*af).Position)local Z=P(t,(W*O).Position)local _=P(t,(W
*ag).Position)if R(X.Z,Y.Z,Z.Z,_.Z)>0 then V.PointA=Q(Y.X,Y.Y)V.PointB=Q(X.X,X.Y
)V.PointC=Q(_.X,_.Y)V.PointD=Q(Z.X,Z.Y)V.Color=Options['esp.locker.color'].Value
if T.occupant.Value then V.Transparency=0.1 elseif u.LatestRoom.Value-T.id>1
then V.Transparency=0.25 else V.Transparency=0.6 end V.Visible=true else V.
Visible=false end else V.Visible=false end end function F.destroy(T)F.attached[T
.instance]=nil S.destroy(T)end end do local ac=t.WorldToViewportPoint local ad=
Vector2.new local ae=ad(0,3)local af=r G=setmetatable({},{__index=af})G.__index=
G function G.__tostring(ag)return'InteractableComponent - '..ag.instance:
GetFullName()end G.attached={}function G.new(ag,O,...)local P=setmetatable({},G)
P=P:constructor(ag,O,...)or P P:run()return P end function G.constructor(ag,O,P)
af.constructor(ag,O)ag.name=P ag.label=Drawing.new'Text'ag.circle=Drawing.new
'Circle'ag.outline=Drawing.new'Circle'ag._maid:add(ag.label,'Remove')ag._maid:
add(ag.circle,'Remove')ag._maid:add(ag.outline,'Remove')ag._maid:add(O.
AncestryChanged:Connect(function(Q,R)if R==nil then ag:destroy()end end))end
function G.onStart(ag)G.attached[ag.instance]=ag af.onStart(ag)local O,P,Q=ag.
label,ag.circle,ag.outline O.Text=ag.name O.Size=18 O.Center=true O.Outline=true
O.Visible=false P.Thickness=1 P.NumSides=6 P.Radius=5 P.Filled=true P.Visible=
false Q.Color=Color3.new()Q.Thickness=1.5 Q.NumSides=6 Q.Radius=5 Q.Filled=false
Q.Visible=false Q.ZIndex=2 end function G.onRender(ag,O)local P,Q,R=ag.label,ag.
circle,ag.outline if ag:isVisualEnabled()then local S=ac(t,ag.instance.Position)
local T=S.Z>0 if T then local U=ad(S.X,S.Y)P.Position=U+ae Q.Position=U R.
Position=U local V=ag:getColor()P.Color=V Q.Color=V end P.Visible=T Q.Visible=T
R.Visible=T else P.Visible=false Q.Visible=false R.Visible=false end end
function G.isVisualEnabled(ag)return Toggles['esp.interactable.enabled'].Value
end function G.getColor(ag)return Options['esp.interactable.color'].Value end
function G.destroy(ag)G.attached[ag.instance]=nil af.destroy(ag)end end do local
ac=G H=setmetatable({},{__index=ac})H.__index=H function H.__tostring(ad)return
'ObtainableComponent - '..ad.instance:GetFullName()end H.attached={}function H.
new(ad,ae,...)local af=setmetatable({},H)af=af:constructor(ad,ae,...)or af af:
run()return af end function H.constructor(ad,ae,af)ac.constructor(ad,ae,af)end
function H.onStart(ad)H.attached[ad.instance]=ad ac.onStart(ad)local ae,af,ag=ad
.label,ad.circle,ad.outline af.NumSides=5 ag.NumSides=5 end function H.
isVisualEnabled(ad)return Toggles['esp.obtainable.enabled'].Value end function H
.getColor(ad)return Options['esp.obtainable.color'].Value end function H.destroy
(ad)H.attached[ad.instance]=nil ac.destroy(ad)end end do local ac=H I=
setmetatable({},{__index=ac})I.__index=I function I.__tostring(ad)return
'GoldComponent - '..ad.instance:GetFullName()end function I.new(ad,...)local ae=
setmetatable({},I)ae=ae:constructor(ad,...)or ae ae:run()return ae end function
I.constructor(ad,ae)ac.constructor(ad,ae,'Gold')ad.denomination=0 end function I
.onStart(ad)ac.onStart(ad)ad:onDenominationChanged()ad.instance:
GetAttributeChangedSignal'GoldValue':Connect(function()ad:onDenominationChanged(
)end)end function I.onRender(ad,ae)ad.label.Text=Options['esp.gold.format'].
Value:gsub('{amount}',tostring(ad.denomination))ac.onRender(ad,ae)end function I
.onDenominationChanged(ad)ad.denomination=ad.instance.Parent:GetAttribute
'GoldValue'or 0 end function I.isVisualEnabled(ad)return Toggles[
'esp.gold.enabled'].Value and ad.denomination>=Options['esp.gold.minimum'].Value
end function I.getColor(ad)return Options['esp.gold.color'].Value end end do
local ac=function()return Toggles['auto-loot.enabled'].Value and Options[
'auto-loot.keybind']:GetState()end local ad=r J=setmetatable({},{__index=ad})J.
__index=J function J.__tostring(ae)return'RoomComponent - '..ae.instance:
GetFullName()end J.attached={}function J.new(ae,...)local af=setmetatable({},J)
af=af:constructor(ae,...)or af af:run()return af end function J.constructor(ae,
af)ad.constructor(ae,af)ae.id=tonumber(af.Name)ae.assets=af:WaitForChild(
'Assets',5)end function J.onStart(ae)J.attached[ae.instance]=ae ad.onStart(ae)
local af=ae.instance:WaitForChild('RoomExit',5)if af then E.new(af,ae.id)end ae.
_maid:add(ae.instance.DescendantAdded:Connect(function(ag)ae:onDescendant(ag)end
))for ag,O in ipairs(ae.instance:GetDescendants())do task.defer(ae.onDescendant,
O)end end function J.onDescendant(ae,af)local ag=af.Parent local O=ag.Name local
P=af.Name if P=='Main'then if O=='LeverForGate'then G.new(af,'Lever')elseif O==
'Lighter'then H.new(af,'Lighter')elseif O=='Vitamins'then H.new(af,'Vitamins')
elseif O=='Lockpick'then H.new(af,'Lockpicks')elseif O=='Bandage'then H.new(af,
'Bandages')elseif O=='Battery'then H.new(af,'Batteries')end elseif P=='Holder'
then if O=='CrucifixWall'then H.new(af,'Crucifix')end elseif P=='Rooms_Locker'or
P=='Rooms_Locker_Fridge'then F.new(af,ae.id)elseif P=='Hitbox'then if O==
'GoldPile'then I.new(af)end end local Q=z.attached do if P=='Hitbox'and O==
'GoldPile'then local R=ag:WaitForChild'LootPrompt'local S=R:GetAttribute
'Interactions'local T=R.MaxActivationDistance+3 while ae.running and S==nil do
if ac()then local U=(af.Position-Q.root.Position).Magnitude if U<=T then
fireproximityprompt(R)task.wait(0.1)end end S=R:GetAttribute'Interactions'task.
wait()end end end end function J.destroy(ae)J.attached[ae.instance]=nil ad.
destroy(ae)end end n:SetWatermark'Linoria Community (TerminalVibes)'n:Notify
'Loading UI...'do local ac=n:CreateWindow(h..' ('..i..')')do local ad=ac:AddTab
'Gameplay'do local ae=ad:AddLeftGroupbox'Character Mods'ae:AddToggle(
'character.sprint.enabled',{Text='Sprint Enabled',Default=false,Tooltip=
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
'Plays a sound when an important alert is triggered.'})local ag=ae:AddTab
'Advanced'ag:AddToggle('alerts.debug',{Text='Debug Alerts',Default=true,Tooltip=
'Enabled alerts related to script status.'})ag:AddToggle('alerts.entity',{Text=
'Entity Alerts',Default=true,Tooltip='Enabled alerts about entities spawning.'})
end end do local ad=ac:AddTab'Blatant'do local ae=ad:AddLeftGroupbox'Auto Loot'
ae:AddToggle('auto-loot.enabled',{Text='Enabled',Default=false,Tooltip=
'Automatically loots items for you.'}):AddKeyPicker('auto-loot.keybind',{Text=
'Keybind',Default='F'})end do local ae=ad:AddLeftGroupbox'Entity Hooks'ae:
AddToggle('blatant.a90.remove',{Text='Remove A90',Default=false,Tooltip=
'A90 will no longer spawn for you.'})end end do local ad=ac:AddTab'Visuals'do
local ae=ad:AddLeftTabbox'ESP'local af=ae:AddTab'Entity ESP'do af:AddToggle(
'esp.player.enabled',{Text='Player ESP',Default=true,Tooltip=
'ESP for other players'}):AddColorPicker('esp.player.color',{Title=
'Player ESP Color',Default=Color3.new(1,1,1)})af:AddToggle('esp.rush.enabled',{
Text='A60/A120 ESP',Default=true,Tooltip='ESP for both A60 and A120 entities'}):
AddColorPicker('esp.rush.a60-color',{Title='A60 ESP Color',Default=Color3.new(1,
0,0)}):AddColorPicker('esp.rush.a120-color',{Title='A120 ESP Color',Default=
Color3.new(0.8,0,0)})end local ag=ae:AddTab'Object ESP'do ag:AddToggle(
'esp.door.enabled',{Text='Door ESP',Default=false,Tooltip='ESP for doors'}):
AddColorPicker('esp.door.default-color',{Title='Other Doors ESP Color',Default=
Color3.new(0,0.3,0.75)}):AddColorPicker('esp.door.target-color',{Title=
'Current Door ESP Color',Default=Color3.new(0,1,0)})ag:AddToggle(
'esp.locker.enabled',{Text='Locker ESP',Default=false,Tooltip='ESP for lockers'}
):AddColorPicker('esp.locker.color',{Title='Locker ESP Color',Default=Color3.
new(0,1,0.9)})ag:AddToggle('esp.interactable.enabled',{Text='Interactable ESP',
Default=true,Tooltip='ESP for interactable items'}):AddColorPicker(
'esp.interactable.color',{Title='Interactable ESP Color',Default=Color3.new(1,1,
1)})ag:AddToggle('esp.obtainable.enabled',{Text='Obtainable ESP',Default=true,
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
LoadAutoloadConfig()local ac=function()t=f.CurrentCamera or t end x:add(f:
GetPropertyChangedSignal'CurrentCamera':Connect(ac))local ad=function(ad)local
ae=ad.Name if ae=='A60'then C.new(ad)elseif ae=='A120'then D.new(ad)end end x:
add(f.ChildAdded:Connect(ad))local ae=function(ae)J.new(ae)end x:add(f.
CurrentRooms.ChildAdded:Connect(ae))for af,ag in ipairs(f.CurrentRooms:
GetChildren())do ae(ag)end local O=function()if Toggles['blatant.a90.remove'].
Value then ab(Toggles['alerts.debug'],{message='A90 was eaten by TerminalVibes',
duration=4})return end if Toggles['gameplay.a90.disable-movement'].Value then
task.wait(0.9)local O=z.attached O.root.AssemblyLinearVelocity=Vector3.zero g:
SendKeyEvent(false,Enum.KeyCode.W,false,game)g:SendKeyEvent(false,Enum.KeyCode.A
,false,game)g:SendKeyEvent(false,Enum.KeyCode.S,false,game)g:SendKeyEvent(false,
Enum.KeyCode.D,false,game)a:BindAction('a90.freeze',function()return Enum.
ContextActionResult.Sink end,false,Enum.KeyCode.W,Enum.KeyCode.A,Enum.KeyCode.S,
Enum.KeyCode.D,Enum.KeyCode.E)local P=t.CFrame local Q=d.RenderStepped:Connect(
function()t.CFrame=P end)task.wait(0.4)Q:Disconnect()a:UnbindAction'a90.freeze'
end end x:add(v.A90.OnClientEvent:Connect(O))local P=function(P)for Q,R in
ipairs(K)do for S,T in pairs(R.attached)do T:onTick(P)end end end local Q=
function(Q)for R,S in ipairs(L)do for T,U in pairs(S.attached)do U:onRender(Q)
end end end local R=function(R,S)for T,U in ipairs(M)do for V,W in pairs(U.
attached)do W:onPhysics(R,S)end end local V=z.attached if V then V:onPhysics(R,S
)end end x:add(d.Heartbeat:Connect(P))x:add(d.RenderStepped:Connect(Q))x:add(d.
Stepped:Connect(R))Toggles['blatant.a90.remove']:OnChanged(function()local S={}
for T,U in ipairs(getconnections(v.A90.OnClientEvent))do local V=U.Function if V
then local W=getfenv(V).script if W and W.Name=='RemoteListener'then table.
insert(S,U)end end end if Toggles['blatant.a90.remove'].Value then for V,W in
ipairs(S)do W:Disable()end else for V,W in ipairs(S)do W:Enable()end end end)n:
OnUnload(function()x:destroy()getgenv()[k..i]=nil local S={A,B,C,D,E,G,H,J}for T
,U in ipairs(S)do for V,W in pairs(U.attached)do W:destroy()end end if z.
attached then z.attached:destroy()end end)table.insert(L,A)table.insert(L,C)
table.insert(L,D)table.insert(L,E)table.insert(L,F)table.insert(L,G)w.Name=
'Main'w.SoundId='rbxassetid://6026984224'w.Volume=6 w.Parent=e do local S=game.
PlaceId local T=game.PlaceVersion local U=l[S]if T>U then n:Notify
[[Game has been updated! Please be careful when using this script.]]n:Notify
'The place ID and Version has been copied to your clipboard.'setclipboard('['..
tostring(S)..'] = '..tostring(T)..',')end end return n:Notify('['..h..
'] Loaded! ('..i..')')
