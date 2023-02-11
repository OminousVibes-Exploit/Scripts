local a=game:GetService'ContextActionService'local b=game:GetService'Lighting'
local c=game:GetService'PathfindingService'local d=game:GetService'Players'local
e=game:GetService'ReplicatedStorage'local f=game:GetService'RunService'local g=
game:GetService'SoundService'local h=game:GetService'Workspace'local i=game:
GetService'VirtualInputManager'local j='Doors'local k='Rooms v5.4'local l=
'TerminalVibes/doors'local m='rooms'local n={[6839171747]=5938}do local o=game.
PlaceId local p=game.PlaceVersion local q=n[o]if not q then warn
'Script does not support this place instance.'warn
[[The PlaceID and version has been set to your clipboard. Please report this to the developer.]]
return setclipboard('['..tostring(o)..'] = '..tostring(p)..',')end end do local
o=m..k if getgenv()[o]then return end getgenv()[o]=true end local o=
[[https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/]]local p=
loadstring(game:HttpGet(o..'Library.lua'))()local q=loadstring(game:HttpGet(o..
'addons/SaveManager.lua'))()local r=loadstring(game:HttpGet(o..
'addons/ThemeManager.lua'))()local s do local t,u=type,typeof s=setmetatable({},
{__tostring=function()return'Bin'end})s.__index=s function s.new(...)local v=
setmetatable({},s)return v:constructor(...)or v end function s.constructor(v)end
function s.add(v,w,x)local y={item=w,method=x}if v.head==nil then v.head=y end
if v.tail then v.tail.next=y end v.tail=y return w end function s.destroy(v)
while v.head do local w=v.head.item local x=v.head.method if x then w[x](w)
elseif t(w)=='function'then w()elseif u(w)=='RBXScriptConnection'then w:
Disconnect()elseif t(w)=='thread'then task.cancel(w)elseif w.destroy~=nil then w
:destroy()elseif w.Destroy~=nil then w:Destroy()end v.head=v.head.next end end
function s.isEmpty(v)return v.head==nil end end local t do t={}t.__index=t
function t.__tostring(u)return'BaseComponent - '..u.instance:GetFullName()end
local u,v,w=setmetatable,assert,task.defer function t.new(x,...)local y=u({},t)y
=y:constructor(x,...)or y y:run()return y end function t.constructor(x,y,...)x.
instance=y x.running=false x.destructed=false x._maid=s.new()x._maid:add(y.
Destroying:Connect(function()if not x.destructed then x:destroy()end end))end
function t.onStart(x)end function t.run(x)v(not x.running,'['..x:__tostring()..
'] is already running')w(function()x.running=true if not x.destructed then x:
onStart()end end)end function t.destroy(x)v(not x.destructed,'['..x:__tostring()
..'] is already destroyed')x.running=false x.destructed=true x._maid:destroy()
end end local u=d.LocalPlayer local v=h.CurrentCamera local w=e:WaitForChild
'GameData'local x={}do local y=e:WaitForChild'EntityInfo'local z={A90=y:
WaitForChild'A90'}for A,B in pairs(z)do x[A]=B end end local y=Instance.new
'Sound'local z=s.new()local A local B local C local D local E local F local G
local H local I local J local K local L local M={}local N={}local O={}local P={}
local aa=function(Q,R)local S=0.12 local T=s.new()local U=Drawing.new'Text'local
V=Drawing.new'Square'local W=Drawing.new'Square'T:add(U,'Remove')T:add(V,
'Remove')T:add(W,'Remove')U.Text=Q or''U.Color=Color3.fromRGB(255,255,255)U.
ZIndex=3 V.Color=Color3.fromRGB(25,25,25)V.Filled=true V.Thickness=0 V.Size=U.
TextBounds+Vector2.new(10,8)V.ZIndex=2 W.Color=Color3.fromRGB(0,100,255)W.Filled
=true W.Thickness=0 W.Size=Vector2.new(2,24)W.ZIndex=1 local X=0 for Y in pairs(
P)do X=math.max(X,Y+1)end P[X]=T local Z=0 local _,aa,ab=pairs(P)T:add(f.
RenderStepped:Connect(function(ac)Z+=ac local ad,ae=_(aa,ab)local af=ad or 0
while ad~=nil do af=math.min(af,ad)ad,ae=_(aa,ad)end local ag=X-af local ah=5 if
Z<=S then ah=-(V.Size.X+2)+(Z/S)*(V.Size.X+7)elseif Z>=R-S then ah=5-(Z-(R-S))/S
*(V.Size.X+7)end local ai=Vector2.new(ah,40+(ag*25))U.Position=ai+Vector2.new(7,
4)V.Position=ai+Vector2.new(2,0)W.Position=ai end))T:add(f.RenderStepped:Once(
function(ac)U.Visible=true V.Visible=true W.Visible=true end))task.delay(R,
function()T:destroy()P[X]=nil end)end local ab=function(ab,ac)if ab and Toggles[
'alerts.enabled'].Value then local ad={message=ac.message or'',audio=ac.audio or
false,duration=ac.duration or 5}if Toggles['alerts.drawing'].Value then aa(ad.
message,ad.duration)else p:Notify(ad.message,ad.duration)end if ad.audio and
Toggles['alerts.audio.enabled'].Value then y.TimePosition=0.25 y:Play()end end
end do local ac=t A=setmetatable({},{__index=ac})A.__index=A function A.
__tostring(ad)return'CharacterComponent - '..ad.instance:GetFullName()end A.
attached={}function A.new(ad,...)local ae=setmetatable({},A)ae=ae:constructor(ad
,...)or ae ae:run()return ae end function A.constructor(ad,ae)ac.constructor(ad,
ae)ad.client=D.attached[d:GetPlayerFromCharacter(ae)]ad.root=ae:WaitForChild(
'HumanoidRootPart',5)ad.humanoid=ae:WaitForChild('Humanoid',5)assert(ad.client~=
nil,'['..ad:__tostring().."] is not a client's character")assert(ad.root~=nil,
'['..ad:__tostring()..'] is missing a HumanoidRootPart')assert(ad.humanoid~=nil,
'['..ad:__tostring()..'] is missing a Humanoid')ad._maid:add(ae.AncestryChanged:
Connect(function(af,ag)if ag==nil then ad:destroy()end end))end function A.
onStart(ad)A.attached[ad.instance]=ad ac.onStart(ad)end function A.destroy(ad)A.
attached[ad.instance]=nil ac.destroy(ad)end end do local ac=Vector3.new(1,0,1)
local ad=A B=setmetatable({},{__index=ad})B.__index=B function B.__tostring(ae)
return'AvatarComponent - '..ae.instance:GetFullName()end B.attached=nil function
B.new(ae,...)local af=setmetatable({},B)af=af:constructor(ae,...)or af af:run()
return af end function B.constructor(ae,af)ad.constructor(ae,af)ae.parts={ae.
_maid:add(Instance.new'Part'),ae._maid:add(Instance.new'Part'),ae._maid:add(
Instance.new'Part'),ae._maid:add(Instance.new'Part')}ae.lights={ae._maid:add(
Instance.new'PointLight'),ae._maid:add(Instance.new'PointLight'),ae._maid:add(
Instance.new'PointLight'),ae._maid:add(Instance.new'PointLight'),ae._maid:add(
Instance.new'PointLight')}end function B.onStart(ae)B.attached=ae ad.onStart(ae)
for af,ag in ipairs(ae.lights)do ag.Enabled=false ag.Range=60 ag.Color=Color3.
new(1,1,1)ag.Shadows=false end for ah,ai in ipairs(ae.parts)do local Q=ai local
R=ae._maid:add(Instance.new'WeldConstraint')local S=ae.lights[ah]Q.Size=Vector3.
zero Q.Massless=true Q.CanCollide=false Q.CanTouch=false Q.CanQuery=false R.
Part0=ae.root R.Part1=Q local T=(ah-1)*math.pi/2 Q.Position=ae.root.Position+
Vector3.new(math.cos(T)*25,5,math.sin(T)*25)R.Parent=Q S.Parent=Q Q.Parent=h end
ae.lights[5].Parent=ae.root while ae.running do for Q,R in ipairs(ae.lights)do R
.Enabled=Toggles['character.glow.enabled'].Value R.Brightness=Options[
'character.glow.brightness'].Value/50 end task.wait(0.3)end end function B.
onPhysics(ae,ah,ai)local Q=Options['character.sprint.speed'].Value if Q>0 and
Toggles['character.sprint.enabled'].Value and Options['character.sprint.keybind'
]:GetState()then local R=ae.humanoid.MoveDirection*ac if R.Magnitude>0 then ae.
instance:TranslateBy(R*Q*ai)end end end function B.destroy(ae)B.attached=nil ad.
destroy(ae)end end do local ac=Vector3.new(5,7,0)local ad=Vector3.new(0,-0.25,0)
local ae,ah,ai,Q=CFrame.new(ad.X-(ac.X/2),ad.Y+(ac.Y/2),ad.Z),CFrame.new(ad.X+(
ac.X/2),ad.Y+(ac.Y/2),ad.Z),CFrame.new(ad.X-(ac.X/2),ad.Y-(ac.Y/2),ad.Z),CFrame.
new(ad.X+(ac.X/2),ad.Y-(ac.Y/2),ad.Z)local R=v.WorldToViewportPoint local S=
Vector2.new local T=math.min local U=A C=setmetatable({},{__index=U})C.__index=C
function C.__tostring(V)return'FriendComponent - '..V.instance:GetFullName()end
C.attached={}function C.new(V,...)local W=setmetatable({},C)W=W:constructor(V,
...)or W W:run()return W end function C.constructor(V,W)U.constructor(V,W)V.quad
=Drawing.new'Quad'V._maid:add(V.quad,'Remove')end function C.onStart(V)C.
attached[V.instance]=V U.onStart(V)local W=V.quad W.Visible=false W.Thickness=1
W.Transparency=0.75 end function C.onRender(V,W)local X=V.quad if Toggles[
'esp.player.enabled'].Value then local Y=V.root.CFrame local Z=R(v,(Y*ae).
Position)local _=R(v,(Y*ah).Position)local aj=R(v,(Y*Q).Position)local ak=R(v,(Y
*ai).Position)if T(Z.Z,_.Z,aj.Z,ak.Z)>0 then X.PointA=S(_.X,_.Y)X.PointB=S(Z.X,Z
.Y)X.PointC=S(ak.X,ak.Y)X.PointD=S(aj.X,aj.Y)X.Color=Options['esp.player.color']
.Value X.Visible=true else X.Visible=false end else X.Visible=false end end
function C.destroy(aj)C.attached[aj.instance]=nil U.destroy(aj)end end do local
ac=t D=setmetatable({},{__index=ac})D.__index=D function D.__tostring(ad)return
'ClientComponent - '..ad.instance:GetFullName()end D.attached={}function D.new(
ad,...)local ae=setmetatable({},D)ae=ae:constructor(ad,...)or ae ae:run()return
ae end function D.constructor(ad,ae)ac.constructor(ad,ae)end function D.onStart(
ad)D.attached[ad.instance]=ad ac.onStart(ad)ad._maid:add(ad.instance.
CharacterAdded:Connect(function(ae)ad:onCharacter(ae)end))ad._maid:add(ad.
instance.Backpack.ChildAdded:Connect(function(ae)if ae:IsA'Tool'then ad:onTool(
ae)end end))task.defer(function()local ae=ad.instance.Character if ae then ad:
onCharacter(ae)end end)task.defer(function()for ae,ah in ipairs(ad.instance.
Backpack:GetChildren())do if ah:IsA'Tool'then ad:onTool(ah)end end end)end
function D.onCharacter(ad,ae)if ad.instance==u then ad.character=B.new(ae)else
ad.character=C.new(ae)end end function D.onTool(ad,ae)if ae.Name==
'LibraryHintPaper'then local ah=ae:WaitForChild('UI',1)if ah then local ai={}for
aj=1,5 do local ak=ah:FindFirstChild(tostring(aj))if ak then local Q=ak.
ImageRectOffset.X/50 ai[aj]=Q end end libraryOrder=ai end end end function D.
destroy(ad)D.attached[ad.instance]=nil ac.destroy(ad)end local ad=function(ad)D.
new(ad)end d.PlayerAdded:Connect(ad)for ae,ah in ipairs(d:GetPlayers())do task.
defer(ad,ah)end end do local ac=Vector3.new(4,6,0)local ad=Vector3.new(0,0,0)
local ae,ah,ai,aj=CFrame.new(ad.X-(ac.X/2),ad.Y+(ac.Y/2),ad.Z),CFrame.new(ad.X+(
ac.X/2),ad.Y+(ac.Y/2),ad.Z),CFrame.new(ad.X-(ac.X/2),ad.Y-(ac.Y/2),ad.Z),CFrame.
new(ad.X+(ac.X/2),ad.Y-(ac.Y/2),ad.Z)local ak=v.WorldToViewportPoint local Q=
Vector2.new local R=math.min local S=t E=setmetatable({},{__index=S})E.__index=E
function E.__tostring(T)return'A60Component - '..T.instance:GetFullName()end E.
attached={}function E.new(T,...)local U=setmetatable({},E)U=U:constructor(T,...)
or U U:run()return U end function E.constructor(T,U)S.constructor(T,U)T.root=U.
PrimaryPart or U:WaitForChild('Main',5)assert(T.root,'['..T:__tostring()..
'] is missing a root part!')T.quad=Drawing.new'Quad'T._maid:add(T.quad,'Remove')
end function E.onStart(T)E.attached[T.instance]=T S.onStart(T)local U=T.quad U.
Visible=false U.Thickness=1 U.Color=T:getColor()ab(Toggles['alerts.entity'].
Value,{message='A60 spawned, run and hide in the closest locker!',duration=7.5,
audio=true})end function E.onRender(T,U)local V=T.quad if T:isEnabled()then
local W=T.root.CFrame local X=ak(v,(W*ae).Position)local Y=ak(v,(W*ah).Position)
local Z=ak(v,(W*aj).Position)local _=ak(v,(W*ai).Position)if R(X.Z,Y.Z,Z.Z,_.Z)>
0 then V.PointA=Q(Y.X,Y.Y)V.PointB=Q(X.X,X.Y)V.PointC=Q(_.X,_.Y)V.PointD=Q(Z.X,Z
.Y)V.Visible=true else V.Visible=false end else V.Visible=false end end function
E.isEnabled(T)return Toggles['esp.rush.enabled'].Value end function E.getColor(T
)return Options['esp.rush.a60-color'].Value end function E.destroy(T)E.attached[
T.instance]=nil S.destroy(T)end end do local ac=Vector3.new(4,6,0)local ad=
Vector3.new(0,0,0)local ae,ah,ai,aj=CFrame.new(ad.X-(ac.X/2),ad.Y+(ac.Y/2),ad.Z)
,CFrame.new(ad.X+(ac.X/2),ad.Y+(ac.Y/2),ad.Z),CFrame.new(ad.X-(ac.X/2),ad.Y-(ac.
Y/2),ad.Z),CFrame.new(ad.X+(ac.X/2),ad.Y-(ac.Y/2),ad.Z)local ak=v.
WorldToViewportPoint local Q=Vector2.new local R=math.min local S=t F=
setmetatable({},{__index=S})F.__index=F function F.__tostring(T)return
'A120Component - '..T.instance:GetFullName()end F.attached={}function F.new(T,
...)local U=setmetatable({},F)U=U:constructor(T,...)or U U:run()return U end
function F.constructor(T,U)S.constructor(T,U)T.root=U.PrimaryPart or U:
WaitForChild('Main',5)assert(T.root,'['..T:__tostring()..
'] is missing a root part!')T.quad=Drawing.new'Quad'T._maid:add(T.quad,'Remove')
end function F.onStart(T)F.attached[T.instance]=T S.onStart(T)local U=T.quad U.
Visible=false U.Thickness=1 U.Color=T:getColor()ab(Toggles['alerts.entity'].
Value,{message='A120 spawned, run and hide in the closest locker!',duration=7.5,
audio=true})end function F.onRender(T,U)local V=T.quad if T:isEnabled()then
local W=T.root.CFrame local X=ak(v,(W*ae).Position)local Y=ak(v,(W*ah).Position)
local Z=ak(v,(W*aj).Position)local _=ak(v,(W*ai).Position)if R(X.Z,Y.Z,Z.Z,_.Z)>
0 then V.PointA=Q(Y.X,Y.Y)V.PointB=Q(X.X,X.Y)V.PointC=Q(_.X,_.Y)V.PointD=Q(Z.X,Z
.Y)V.Visible=true else V.Visible=false end else V.Visible=false end end function
F.isEnabled(T)return Toggles['esp.rush.enabled'].Value end function F.getColor(T
)return Options['esp.rush.a120-color'].Value end function F.destroy(T)F.attached
[T.instance]=nil S.destroy(T)ab(Toggles['alerts.entity'].Value,{message=
'A120 despawned, you are safe to continue your run!',duration=4,audio=true})end
end do local ac=CFrame.new(0,0,1)local ad=v.WorldToViewportPoint local ae=
Vector2.new local ah=math.min local ai=t G=setmetatable({},{__index=ai})G.
__index=G function G.__tostring(aj)return'DoorComponent - '..aj.instance:
GetFullName()end G.attached={}function G.new(aj,...)local ak=setmetatable({},G)
ak=ak:constructor(aj,...)or ak ak:run()return ak end function G.constructor(aj,
ak,Q)ai.constructor(aj,ak)aj.id=Q or 0 local R=ak.Size*0.5 local S=ak.CFrame*ac
aj.tl=(S*CFrame.new(R.X,R.Y,0)).Position aj.tr=(S*CFrame.new(-R.X,R.Y,0)).
Position aj.bl=(S*CFrame.new(R.X,-R.Y,0)).Position aj.br=(S*CFrame.new(-R.X,-R.Y
,0)).Position aj.quad=Drawing.new'Quad'aj._maid:add(aj.quad,'Remove')end
function G.onStart(aj)G.attached[aj.instance]=aj ai.onStart(aj)local ak=aj.quad
ak.Visible=false ak.Thickness=2 end function G.onRender(aj,ak)local Q=aj.quad if
Toggles['esp.door.enabled'].Value then local R=ad(v,aj.tl)local S=ad(v,aj.tr)
local T=ad(v,aj.br)local U=ad(v,aj.bl)if ah(R.Z,S.Z,T.Z,U.Z)>0 then Q.PointA=ae(
S.X,S.Y)Q.PointB=ae(R.X,R.Y)Q.PointC=ae(U.X,U.Y)Q.PointD=ae(T.X,T.Y)local V=aj.
id-w.LatestRoom.Value if V==0 then Q.Color=Options['esp.door.target-color'].
Value else Q.Color=Options['esp.door.default-color'].Value if V<0 then Q.
Transparency=0.5 else Q.Transparency=1 end end Q.Visible=true else Q.Visible=
false end else Q.Visible=false end end function G.destroy(aj)G.attached[aj.
instance]=nil ai.destroy(aj)end end do local ac=Vector3.new(4.675,7.15,0)local
ad=Vector3.new(0,0,-1.25)local ae,ah,ai,aj=CFrame.new(ad.X-(ac.X/2),ad.Y+(ac.Y/2
),ad.Z),CFrame.new(ad.X+(ac.X/2),ad.Y+(ac.Y/2),ad.Z),CFrame.new(ad.X-(ac.X/2),ad
.Y-(ac.Y/2),ad.Z),CFrame.new(ad.X+(ac.X/2),ad.Y-(ac.Y/2),ad.Z)local ak=v.
WorldToViewportPoint local Q=Vector2.new local R=math.min local S=t H=
setmetatable({},{__index=S})H.__index=H function H.__tostring(T)return
'WardrobeComponent - '..T.instance:GetFullName()end H.attached={}function H.new(
T,...)local U=setmetatable({},H)U=U:constructor(T,...)or U U:run()return U end
function H.constructor(T,U,V)S.constructor(T,U)T.id=V T.root=U:WaitForChild(
'Base',5)T.occupant=U:WaitForChild('HiddenPlayer',5)T.quad=Drawing.new'Quad'T.
_maid:add(T.quad,'Remove')end function H.onStart(T)H.attached[T.instance]=T S.
onStart(T)local U=T.quad U.Visible=false U.Thickness=2 end function H.onRender(T
,U)local V=T.quad if Toggles['esp.locker.enabled'].Value then local W=T.root.
CFrame local X=ak(v,(W*ae).Position)local Y=ak(v,(W*ah).Position)local Z=ak(v,(W
*aj).Position)local _=ak(v,(W*ai).Position)if R(X.Z,Y.Z,Z.Z,_.Z)>0 then V.PointA
=Q(Y.X,Y.Y)V.PointB=Q(X.X,X.Y)V.PointC=Q(_.X,_.Y)V.PointD=Q(Z.X,Z.Y)V.Color=
Options['esp.locker.color'].Value if T.occupant.Value then V.Transparency=0.1
elseif w.LatestRoom.Value-T.id>1 then V.Transparency=0.25 else V.Transparency=
0.6 end V.Visible=true else V.Visible=false end else V.Visible=false end end
function H.destroy(T)H.attached[T.instance]=nil S.destroy(T)end end do local ac=
v.WorldToViewportPoint local ad=Vector2.new local ae=ad(0,3)local ah=t I=
setmetatable({},{__index=ah})I.__index=I function I.__tostring(ai)return
'InteractableComponent - '..ai.instance:GetFullName()end I.attached={}function I
.new(ai,aj,...)local ak=setmetatable({},I)ak=ak:constructor(ai,aj,...)or ak ak:
run()return ak end function I.constructor(ai,aj,ak)ah.constructor(ai,aj)ai.name=
ak ai.label=Drawing.new'Text'ai.circle=Drawing.new'Circle'ai.outline=Drawing.new
'Circle'ai._maid:add(ai.label,'Remove')ai._maid:add(ai.circle,'Remove')ai._maid:
add(ai.outline,'Remove')ai._maid:add(aj.AncestryChanged:Connect(function(Q,R)if
R==nil then ai:destroy()end end))end function I.onStart(ai)I.attached[ai.
instance]=ai ah.onStart(ai)local aj,ak,Q=ai.label,ai.circle,ai.outline aj.Text=
ai.name aj.Size=18 aj.Center=true aj.Outline=true aj.Visible=false ak.Thickness=
1 ak.NumSides=6 ak.Radius=5 ak.Filled=true ak.Visible=false Q.Color=Color3.new()
Q.Thickness=1.5 Q.NumSides=6 Q.Radius=5 Q.Filled=false Q.Visible=false Q.ZIndex=
2 end function I.onRender(ai,aj)local ak,Q,R=ai.label,ai.circle,ai.outline if ai
:isVisualEnabled()then local S=ac(v,ai.instance.Position)local T=S.Z>0 if T then
local U=ad(S.X,S.Y)ak.Position=U+ae Q.Position=U R.Position=U local V=ai:
getColor()ak.Color=V Q.Color=V end ak.Visible=T Q.Visible=T R.Visible=T else ak.
Visible=false Q.Visible=false R.Visible=false end end function I.isVisualEnabled
(ai)return Toggles['esp.interactable.enabled'].Value end function I.getColor(ai)
return Options['esp.interactable.color'].Value end function I.destroy(ai)I.
attached[ai.instance]=nil ah.destroy(ai)end end do local ac=I J=setmetatable({},
{__index=ac})J.__index=J function J.__tostring(ad)return'ObtainableComponent - '
..ad.instance:GetFullName()end J.attached={}function J.new(ad,ae,...)local ah=
setmetatable({},J)ah=ah:constructor(ad,ae,...)or ah ah:run()return ah end
function J.constructor(ad,ae,ah)ac.constructor(ad,ae,ah)end function J.onStart(
ad)J.attached[ad.instance]=ad ac.onStart(ad)local ae,ah,ai=ad.label,ad.circle,ad
.outline ah.NumSides=5 ai.NumSides=5 end function J.isVisualEnabled(ad)return
Toggles['esp.obtainable.enabled'].Value end function J.getColor(ad)return
Options['esp.obtainable.color'].Value end function J.destroy(ad)J.attached[ad.
instance]=nil ac.destroy(ad)end end do local ac=J K=setmetatable({},{__index=ac}
)K.__index=K function K.__tostring(ad)return'GoldComponent - '..ad.instance:
GetFullName()end function K.new(ad,...)local ae=setmetatable({},K)ae=ae:
constructor(ad,...)or ae ae:run()return ae end function K.constructor(ad,ae)ac.
constructor(ad,ae,'Gold')ad.denomination=0 end function K.onStart(ad)ac.onStart(
ad)ad:onDenominationChanged()ad.instance:GetAttributeChangedSignal'GoldValue':
Connect(function()ad:onDenominationChanged()end)end function K.onRender(ad,ae)ad
.label.Text=Options['esp.gold.format'].Value:gsub('{amount}',tostring(ad.
denomination))ac.onRender(ad,ae)end function K.onDenominationChanged(ad)ad.
denomination=ad.instance.Parent:GetAttribute'GoldValue'or 0 end function K.
isVisualEnabled(ad)return Toggles['esp.gold.enabled'].Value and ad.denomination
>=Options['esp.gold.minimum'].Value end function K.getColor(ad)return Options[
'esp.gold.color'].Value end end do local ac=function()return Toggles[
'interact.enabled'].Value and Options['interact.keybind']:GetState()end local ad
=t L=setmetatable({},{__index=ad})L.__index=L function L.__tostring(ae)return
'RoomComponent - '..ae.instance:GetFullName()end L.attached={}function L.new(ae,
...)local ah=setmetatable({},L)ah=ah:constructor(ae,...)or ah ah:run()return ah
end function L.constructor(ae,ah)ad.constructor(ae,ah)ae.id=tonumber(ah.Name)ae.
assets=ah:WaitForChild('Assets',5)end function L.onStart(ae)L.attached[ae.
instance]=ae ad.onStart(ae)local ah=ae.instance:WaitForChild('RoomExit',5)if ah
then G.new(ah,ae.id)end ae._maid:add(ae.instance.DescendantAdded:Connect(
function(ai)ae:onDescendant(ai)end))for ai,aj in ipairs(ae.instance:
GetDescendants())do task.defer(ae.onDescendant,ae,aj)end end function L.
onDescendant(ae,ah)local ai=ah.Parent local aj=ai.Name local ak=ah.Name if ak==
'Main'then if aj=='Battery'then J.new(ah,'Batteries')end elseif ak==
'Rooms_Locker'or ak=='Rooms_Locker_Fridge'then H.new(ah,ae.id)elseif ak==
'Hitbox'then if aj=='GoldPile'then K.new(ah)end end if ah:IsA'ProximityPrompt'
then local Q=s.new()ae._maid:add(Q)local R local S=ah local T=os.clock()local U=
''local V=0.2 local W=1 local X=S.MaxActivationDistance+5 if aj=='GoldPile'then
U='Gold'R=ai:WaitForChild('Hitbox',5)end if aj=='Battery'then U='Battery'V=0.5 W
=math.huge R=ai:WaitForChild('Main',5)end if R then local Y=game.IsDescendantOf
local Z=function()if not ae.destructed and Y(S,ae.instance)then local Z=S:
GetAttribute'Interactions'if not Z or Z<W then return true end end return false
end local _=function()if ac()then local _=Options['interact.filter'].Value
return _[U]==nil end return false end Q:add(f.Heartbeat:Connect(function()if not
Z()then return Q:destroy()end if not _()then return end local al=os.clock()if al
-T>=V then local am=B.attached local an=(R.Position-am.root.Position).Magnitude
if an<=X then fireproximityprompt(S)T=al end end end))end return end end
function L.destroy(ae)L.attached[ae.instance]=nil ad.destroy(ae)end local ae=
function(ae)L.new(ae)end z:add(h.CurrentRooms.ChildAdded:Connect(ae))for ah,ai
in ipairs(h.CurrentRooms:GetChildren())do ae(ai)end end local ac do local ad=
Vector3.new(1,0,1)local ae=t ac=setmetatable({},{__index=ae})ac.__index=ac
function ac.__tostring(ah)return'PathfindRoom - '..ah.instance.Name end ac.
attached={}function ac.new(ah,...)local ai=setmetatable({},ac)ai=ai:constructor(
ah,...)or ai ai:run()return ai end function ac.constructor(ah,ai)ae.constructor(
ah,ai)ah.id=tonumber(ai.Name)ah.generation_id=ai:GetAttribute'OriginalName'ah.
index=1 ah.nodes={}ah.entrance=ai:WaitForChild('RoomEntrance',5)ah.exit=ai:
WaitForChild('RoomExit',5)end function ac.onStart(ah)ah:generateNodes()if ah.
generation_id=='Rooms_End'and Toggles['pathfinder.stop-on-exit'].Value then ah.
nodes[#ah.nodes]=nil end ae.onStart(ah)ac.attached[ah.instance]=ah local ai=
tostring(ah.id)local aj=ah.instance:GetAttribute'OriginalName'local ak=Toggles[
'alerts.debug'].Value if#ah.nodes>1 then ab(ak,{message='Room '..ai..
' recognized! Generating nodes for: '..aj,duration=5})else ab(ak,{message=
'Room '..ai..' is not recognized! No nodes found for: '..aj,duration=5})end end
function ac.onPhysics(ah,ai,aj)if not ah:isValid()then return ah:destroy()end if
ah:isCurrent()then local ak=B.attached if not ak then return end local al=ak.
root local am=ak.humanoid if al.Anchored or am.MoveDirection.Magnitude>0 then
return end local an=ah.entrance.CFrame*ah.nodes[ah.index]local Q=ak.root.
Position local R=(an-Q)*ad local S=R.Magnitude if S<=1 then ah:onNode(ah.index+1
)else local T=R.Unit local U=math.min(Options['pathfinder.speed'].Value*aj,S)ak.
instance:PivotTo(CFrame.new(Q+(T*U)))end end end function ac.onNode(ah,ai)if ai
<=#ah.nodes then ah.index=ai else ah:destroy()end end function ac.isValid(ah)
return ah.id>=w.LatestRoom.Value end function ac.isCurrent(ah)return ah.id==w.
LatestRoom.Value end function ac.generateNodes(ah)local ai=ah.nodes local aj=ah.
generation_id local ak=ah.entrance.CFrame:ToObjectSpace(ah.exit.CFrame).Position
table.insert(ai,CFrame.new(0,0,0))if aj=='Rooms_Start'then table.insert(ai,
CFrame.new(0,0,-10))table.insert(ai,CFrame.new(0,0,-35.75))elseif aj==
'Rooms_End'then table.insert(ai,CFrame.new(0,0,-5))table.insert(ai,CFrame.new(-
12,0,-8))table.insert(ai,CFrame.new(-3,0,-20))table.insert(ai,CFrame.new(0,0,-39
))elseif aj=='Rooms_Empty1'then table.insert(ai,CFrame.new(0,0,-10))table.
insert(ai,CFrame.new(0,0,-54))elseif aj=='Rooms_Lockers1'then table.insert(ai,
CFrame.new(0,0,-10))table.insert(ai,CFrame.new(0,0,-54))elseif aj==
'Rooms_Lockers2'then table.insert(ai,CFrame.new(0,0,-10))table.insert(ai,CFrame.
new(0,0,-64))elseif aj=='Rooms_Lockers3'then table.insert(ai,CFrame.new(0,0,-10)
)table.insert(ai,CFrame.new(6,0,-64))elseif aj=='Rooms_Lockers4'then table.
insert(ai,CFrame.new(0,0,-10))table.insert(ai,CFrame.new(-6,0,-64))elseif aj==
'Rooms_Curve1'then table.insert(ai,CFrame.new(0,0,-10))table.insert(ai,CFrame.
new(10,0,-40))table.insert(ai,CFrame.new(12.13,0,-54))elseif aj=='Rooms_Curve2'
then table.insert(ai,CFrame.new(0,0,-10))table.insert(ai,CFrame.new(10,0,-50))
table.insert(ai,CFrame.new(12.13,0,-64))elseif aj=='Rooms_Curve3'then table.
insert(ai,CFrame.new(0,0,-10))table.insert(ai,CFrame.new(20,0,-50))table.insert(
ai,CFrame.new(22.13,0,-64))elseif aj=='Rooms_AltCurve1'then table.insert(ai,
CFrame.new(0,0,-3))table.insert(ai,CFrame.new(-12.13,0,-54))elseif aj==
'Rooms_AltCurve2'then table.insert(ai,CFrame.new(0,0,-10))table.insert(ai,CFrame
.new(-12.13,0,-64))elseif aj=='Rooms_AltCurve3'then table.insert(ai,CFrame.new(0
,0,-10))table.insert(ai,CFrame.new(-22.13,0,-64))elseif aj=='Rooms_Cubby1'then
table.insert(ai,CFrame.new(0,0,-5))table.insert(ai,CFrame.new(7.5,0,-12.5))table
.insert(ai,CFrame.new(7.5,0,-37.5))table.insert(ai,CFrame.new(-9.38,0,-54))
elseif aj=='Rooms_Cubby2'then table.insert(ai,CFrame.new(0,0,-10))table.insert(
ai,CFrame.new(6,0,-23.5))table.insert(ai,CFrame.new(6,0,-45))table.insert(ai,
CFrame.new(-9.38,0,-64))elseif aj=='Rooms_AltCubby1'then if ak:FuzzyEq(Vector3.
new(0,0,-54),0.05)then table.insert(ai,CFrame.new(-10,0,-20))table.insert(ai,
CFrame.new(-10,0,-30))table.insert(ai,CFrame.new(0,0,-54))elseif ak:FuzzyEq(
Vector3.new(9.38,0,-54),0.05)then table.insert(ai,CFrame.new(-5.75,0,-15))table.
insert(ai,CFrame.new(-5.75,0,-35))table.insert(ai,CFrame.new(9.38,0,-54))end
elseif aj=='Rooms_AltCubby2'then if ak:FuzzyEq(Vector3.new(0,0,-64),0.05)then
table.insert(ai,CFrame.new(0,0,-10))table.insert(ai,CFrame.new(-11.4,0,-35))
table.insert(ai,CFrame.new(-11,0,-40))table.insert(ai,CFrame.new(0,0,-64))elseif
ak:FuzzyEq(Vector3.new(9.38,0,-64),0.05)then table.insert(ai,CFrame.new(0,0,-10)
)table.insert(ai,CFrame.new(-5,0,-26))table.insert(ai,CFrame.new(-5,0,-45))table
.insert(ai,CFrame.new(9.38,0,-64))end elseif aj=='Rooms_Skinny1'then table.
insert(ai,CFrame.new(0,0,-10))table.insert(ai,CFrame.new(-6,0,-35))table.insert(
ai,CFrame.new(-6.13,0,-54))elseif aj=='Rooms_Skinny2'then table.insert(ai,CFrame
.new(0,0,-10))table.insert(ai,CFrame.new(-6.13,0,-45))table.insert(ai,CFrame.
new(-6.13,0,-64))elseif aj=='Rooms_AltSkinny1'then table.insert(ai,CFrame.new(
6.13,0,-37.5))table.insert(ai,CFrame.new(6.13,0,-54))elseif aj==
'Rooms_AltSkinny2'then table.insert(ai,CFrame.new(0,0,-10))table.insert(ai,
CFrame.new(6.13,0,-45))table.insert(ai,CFrame.new(6.13,0,-64))elseif aj==
'Rooms_Hallway1'then table.insert(ai,CFrame.new(-5,0,-8))table.insert(ai,CFrame.
new(-5,0,-42))table.insert(ai,CFrame.new(0,0,-54))elseif aj=='Rooms_Hallway2'
then table.insert(ai,CFrame.new(0,0,-10))table.insert(ai,CFrame.new(-5,0,-18.33)
)table.insert(ai,CFrame.new(-5,0,-52.5))table.insert(ai,CFrame.new(0,0,-64))
elseif aj=='Rooms_Catwalk1'then table.insert(ai,CFrame.new(0,0,-10))table.
insert(ai,CFrame.new(0,0,-56))elseif aj=='Rooms_Catwalk2'then table.insert(ai,
CFrame.new(0,0,-10))table.insert(ai,CFrame.new(0,0,-58))elseif aj==
'Rooms_Catwalk3'then table.insert(ai,CFrame.new(0,0,-10))table.insert(ai,CFrame.
new(12,0,-17.5))table.insert(ai,CFrame.new(12,0,-66))elseif aj=='Rooms_Catwalk4'
then table.insert(ai,CFrame.new(0,0,-10))table.insert(ai,CFrame.new(-12,0,-20))
table.insert(ai,CFrame.new(-12,0,-66))elseif aj=='Rooms_Kitchen1'then table.
insert(ai,CFrame.new(0,0,-10))table.insert(ai,CFrame.new(-10.5,0,-30))table.
insert(ai,CFrame.new(0,0,-54))elseif aj=='Rooms_Kitchen2'then table.insert(ai,
CFrame.new(0,0,-10))table.insert(ai,CFrame.new(-9,0,-35))table.insert(ai,CFrame.
new(-7,0,-45))table.insert(ai,CFrame.new(0,0,-64))elseif aj=='Rooms_Desk1'then
table.insert(ai,CFrame.new(0,0,-10))table.insert(ai,CFrame.new(0,0,-54))elseif
aj=='Rooms_Desk2'then table.insert(ai,CFrame.new(0,0,-10))table.insert(ai,CFrame
.new(0,0,-64))elseif aj=='Rooms_Desk3'then table.insert(ai,CFrame.new(0,0,-10))
table.insert(ai,CFrame.new(10,0,-64))elseif aj=='Rooms_Storage1'then table.
insert(ai,CFrame.new(-9,0,-43.65))table.insert(ai,CFrame.new(0,0,-54))elseif aj
=='Rooms_Storage2'then table.insert(ai,CFrame.new(0,0,-10))table.insert(ai,
CFrame.new(-3.65,0,-40))table.insert(ai,CFrame.new(-11.7,0,-51.5))table.insert(
ai,CFrame.new(-5.53,0,-57.49))table.insert(ai,CFrame.new(0,0,-64))elseif aj==
'Rooms_Storage3'then table.insert(ai,CFrame.new(0,0,-10))table.insert(ai,CFrame.
new(-18,0,-55.5))table.insert(ai,CFrame.new(-8,0,-64))elseif aj==
'Rooms_Storage4'then table.insert(ai,CFrame.new(0,0,-10))table.insert(ai,CFrame.
new(5.75,0,-30))table.insert(ai,CFrame.new(-3.34,0,-54.18))table.insert(ai,
CFrame.new(8,0,-64))end end function ac.destroy(ah)ac.attached[ah.instance]=nil
ae.destroy(ah)end local ah=function(ah)if Toggles['pathfinder.enabled'].Value
then ac.new(ah)end end z:add(h.CurrentRooms.ChildAdded:Connect(ah))end p:
SetWatermark'Linoria Community (TerminalVibes)'p:Notify'Loading UI...'do local
ad=p:CreateWindow(j..' ('..k..')')do local ae=ad:AddTab'Gameplay'do local ah=ae:
AddLeftGroupbox'Character Mods'ah:AddToggle('character.sprint.enabled',{Text=
'Sprint Enabled',Default=false,Tooltip=
'Enables Sprinting by pressing the Keybind'}):AddKeyPicker(
'character.sprint.keybind',{Text='Sprint',Default='LeftShift'})ah:AddSlider(
'character.sprint.speed',{Text='Sprint Boost (in seconds)',Min=0,Max=7.5,Default
=0,Rounding=1,Suffix=' studs'})ah:AddToggle('character.glow.enabled',{Text=
'Body Glow',Default=false,Tooltip='Adds a subtle glow for better vision'})ah:
AddSlider('character.glow.brightness',{Text='Glow Brightness',Min=0,Max=100,
Default=0,Rounding=0,Suffix=''})end do local ah=ae:AddLeftGroupbox
'Gameplay Mods'ah:AddToggle('gameplay.a90.disable-movement',{Text=
'A90 Movement Hook',Default=false,Tooltip='Disables movement when A90 appears.'}
)end do local ah=ae:AddRightTabbox'Alerts'local ai=ah:AddTab'Alerts'ai:
AddToggle('alerts.enabled',{Text='Alerts Enabled',Default=true,Tooltip=
'Master toggle for all script alerts.'})ai:AddToggle('alerts.drawing',{Text=
'Use Drawing API',Default=true,Tooltip=
'Enables the drawing API for script alerts.'})ai:AddToggle(
'alerts.audio.enabled',{Text='Enable Sound',Default=true,Tooltip=
'Plays a sound when an important alert is triggered.'})ai:AddSlider(
'alerts.audio.volume',{Text='Alert Volume',Min=1,Max=10,Default=6,Rounding=0,
Suffix=''})ai:AddButton{Text='Test Alert',Func=function()ab(true,{message=
'This is a test alert!',duration=4,audio=true})end}local aj=ah:AddTab'Advanced'
aj:AddToggle('alerts.debug',{Text='Debug Alerts',Default=false,Tooltip=
'Enabled alerts related to script status.'})aj:AddToggle('alerts.entity',{Text=
'Entity Alerts',Default=true,Tooltip='Enabled alerts about entities spawning.'})
end end do local ae=ad:AddTab'Blatant'do local ah=ae:AddLeftGroupbox
'Pathfinder (Beta)'ah:AddToggle('pathfinder.enabled',{Text='Enabled',Default=
false,Tooltip='Automatically finds the fastest path to the next room.'})ah:
AddToggle('pathfinder.stop-on-exit',{Text='Stop on Checkpoints',Default=true,
Tooltip='Stops the pathfinder when it reaches a checkpoint.'})ah:AddSlider(
'pathfinder.speed',{Text='Speed',Min=1,Max=30,Default=16,Rounding=0,Suffix=
' studs'})end do local ah=ae:AddRightGroupbox'Auto Interact'ah:AddToggle(
'interact.enabled',{Text='Enabled',Default=false,Tooltip=
'Automatically loots items for you.'}):AddKeyPicker('interact.keybind',{Text=
'Auto-Interact',Default='F'})ah:AddDropdown('interact.filter',{Text=
'Interact Filter (Work In Progress)',Tooltip=
'Selected items will be ignored by the auto-loot.',Values={'Gold','Battery'},
Default={},Multi=true})end do local ah=ae:AddRightGroupbox'Entity Hooks'ah:
AddToggle('blatant.a90.remove',{Text='Remove A90',Default=false,Tooltip=
'A90 will no longer spawn for you.'})end end do local ae=ad:AddTab'Visuals'do
local ah=ae:AddLeftTabbox'ESP'local ai=ah:AddTab'Entity ESP'do ai:AddToggle(
'esp.player.enabled',{Text='Player ESP',Default=true,Tooltip=
'ESP for other players'}):AddColorPicker('esp.player.color',{Title=
'Player ESP Color',Default=Color3.new(1,1,1)})ai:AddToggle('esp.rush.enabled',{
Text='A60/A120 ESP',Default=true,Tooltip='ESP for both A60 and A120 entities'}):
AddColorPicker('esp.rush.a60-color',{Title='A60 ESP Color',Default=Color3.new(1,
0,0)}):AddColorPicker('esp.rush.a120-color',{Title='A120 ESP Color',Default=
Color3.new(0.8,0,0)})end local aj=ah:AddTab'Object ESP'do aj:AddToggle(
'esp.door.enabled',{Text='Door ESP',Default=false,Tooltip='ESP for doors'}):
AddColorPicker('esp.door.default-color',{Title='Other Doors ESP Color',Default=
Color3.new(0,0.3,0.75)}):AddColorPicker('esp.door.target-color',{Title=
'Current Door ESP Color',Default=Color3.new(0,1,0)})aj:AddToggle(
'esp.locker.enabled',{Text='Locker ESP',Default=false,Tooltip='ESP for lockers'}
):AddColorPicker('esp.locker.color',{Title='Locker ESP Color',Default=Color3.
new(0,1,0.9)})aj:AddToggle('esp.interactable.enabled',{Text='Interactable ESP',
Default=true,Tooltip='ESP for interactable items'}):AddColorPicker(
'esp.interactable.color',{Title='Interactable ESP Color',Default=Color3.new(1,1,
1)})aj:AddToggle('esp.obtainable.enabled',{Text='Obtainable ESP',Default=true,
Tooltip='ESP for items that can be picked up'}):AddColorPicker(
'esp.obtainable.color',{Title='Obtainable ESP Color',Default=Color3.new(1,1,0)})
end end do local ah=ae:AddLeftGroupbox'Gold ESP'ah:AddToggle('esp.gold.enabled',
{Text='Gold ESP',Default=true,Tooltip='ESP for items that can be picked up'}):
AddColorPicker('esp.gold.color',{Title='Gold ESP Color',Default=Color3.new(1,1,0
)})ah:AddInput('esp.gold.format',{Text='Custom Label',Default='Gold [{amount}]',
Placeholder='Label Text',Tooltip=
[[Custom text to display for gold. {amount} will be replaced with the amount of gold.]]
})ah:AddSlider('esp.gold.minimum',{Text='Minimum Gold',Default=10,Min=0,Max=100,
Rounding=0,Tooltip='Minimum amount of gold to display'})end do local ah=ae:
AddRightGroupbox'Lighting'ah:AddButton{Text='Full Bright',Func=function()b.
Ambient=Color3.fromRGB(200,200,200)b.Brightness=1 b.ClockTime=12 z:add(b:
GetPropertyChangedSignal'Ambient':Connect(function()local ai=Color3.fromRGB(200,
200,200)if b.Ambient~=ai then b.Ambient=ai end end))z:add(b:
GetPropertyChangedSignal'Brightness':Connect(function()if b.Brightness~=1 then b
.Brightness=1 end end))z:add(b:GetPropertyChangedSignal'ClockTime':Connect(
function()if b.ClockTime~=12 then b.ClockTime=12 end end))end}end end do local
ae=ad:AddTab'Credits'local ah=ae:AddLeftGroupbox'Credits'ah:AddLabel
'TerminalVibes - Creator'ah:AddLabel'Inori @v3rm - UI Library'ah:AddDivider()ah:
AddLabel'Contributors:'ah:AddLabel'> reversing#2937 @discord'ah:AddLabel
'> yuuiz#1336 @discord'ah:AddLabel'> Ferris#8276 @discord'ah:AddLabel
'> Lythicals#0001 @discord'ah:AddLabel'> brickmane @v3rm'ah:AddLabel
'> BlockOfGaming'local ai=ae:AddRightGroupbox'Socials'ai:AddButton{Text=
'Discord Server',Func=function()setclipboard'https://discord.gg/8PATx7UKXZ'end}
end do local ae=ad:AddTab'Settings'r:SetLibrary(p)q:SetLibrary(p)r:SetFolder(l)q
:SetFolder(l..'/'..m)q:IgnoreThemeSettings()q:SetIgnoreIndexes{'MenuKeybind'}q:
BuildConfigSection(ae)r:ApplyToTab(ae)local ah=ae:AddLeftGroupbox'Menu'ah:
AddButton('Unload',function()p:Unload()end)ah:AddLabel'Menu bind':AddKeyPicker(
'MenuKeybind',{Default='End',NoUI=true,Text='Menu keybind'})ah:AddToggle(
'Keybinds',{Text='Show Keybinds Menu',Default=true}):OnChanged(function()p.
KeybindFrame.Visible=Toggles.Keybinds.Value end)ah:AddToggle('Watermark',{Text=
'Show Watermark',Default=true}):OnChanged(function()p:SetWatermarkVisibility(
Toggles.Watermark.Value)end)end end p:Notify
'UI Built! [Right Ctrl or Right Shift]'q:LoadAutoloadConfig()local ad=function()
v=h.CurrentCamera or v end z:add(h:GetPropertyChangedSignal'CurrentCamera':
Connect(ad))local ae=function(ae)local ah=ae.Name if ah=='A60'then E.new(ae)
elseif ah=='A120'then F.new(ae)end end z:add(h.ChildAdded:Connect(ae))local ah=
function()if Toggles['blatant.a90.remove'].Value then ab(Toggles['alerts.debug']
,{message='A90 was eaten by TerminalVibes',duration=4})return end if Toggles[
'gameplay.a90.disable-movement'].Value then task.wait(0.9)local ah=B.attached ah
.root.AssemblyLinearVelocity=Vector3.zero i:SendKeyEvent(false,Enum.KeyCode.W,
false,game)i:SendKeyEvent(false,Enum.KeyCode.A,false,game)i:SendKeyEvent(false,
Enum.KeyCode.S,false,game)i:SendKeyEvent(false,Enum.KeyCode.D,false,game)a:
BindAction('a90.freeze',function()return Enum.ContextActionResult.Sink end,false
,Enum.KeyCode.W,Enum.KeyCode.A,Enum.KeyCode.S,Enum.KeyCode.D,Enum.KeyCode.E)
local ai=v.CFrame local aj=f.RenderStepped:Connect(function()v.CFrame=ai end)
task.wait(0.4)aj:Disconnect()a:UnbindAction'a90.freeze'end end z:add(x.A90.
OnClientEvent:Connect(ah))local ai=function(ai)for aj,ak in ipairs(M)do for al,
am in pairs(ak.attached)do am:onTick(ai)end end end local aj=function(aj)for ak,
al in ipairs(N)do for am,an in pairs(al.attached)do an:onRender(aj)end end end
local ak=function(ak,al)for am,an in ipairs(O)do for Q,R in pairs(an.attached)do
R:onPhysics(ak,al)end end local Q=B.attached if Q then Q:onPhysics(ak,al)end end
z:add(f.Heartbeat:Connect(ai))z:add(f.RenderStepped:Connect(aj))z:add(f.Stepped:
Connect(ak))Options['alerts.audio.volume']:OnChanged(function()y.Volume=Options[
'alerts.audio.volume'].Value end)Toggles['pathfinder.enabled']:OnChanged(
function()if Toggles['pathfinder.enabled'].Value then local al=h.CurrentRooms:
FindFirstChild(tostring(w.LatestRoom.Value+1))if al then ac.new(al)end else for
al,am in pairs(ac.attached)do am:destroy()end end end)Toggles[
'blatant.a90.remove']:OnChanged(function()local al={}for am,an in ipairs(
getconnections(x.A90.OnClientEvent))do local Q=an.Function if Q then local R=
getfenv(Q).script if R and R.Name=='RemoteListener'then table.insert(al,an)end
end end if Toggles['blatant.a90.remove'].Value then for Q,R in ipairs(al)do R:
Disable()end else for Q,R in ipairs(al)do R:Enable()end end end)p:OnUnload(
function()z:destroy()getgenv()[m..k]=nil local al={C,D,E,F,G,H,I,J,L}for am,an
in ipairs(al)do for Q,R in pairs(an.attached)do R:destroy()end end if B.attached
then B.attached:destroy()end end)table.insert(N,C)table.insert(N,E)table.insert(
N,F)table.insert(N,G)table.insert(N,H)table.insert(N,I)table.insert(O,ac)y.Name=
'Main'y.SoundId='rbxassetid://6026984224'y.Parent=g do local al=game.PlaceId
local am=game.PlaceVersion local an=n[al]if am>an then p:Notify
[[Game has been updated! Please be careful when using this script.]]p:Notify
'The place ID and Version has been copied to your clipboard.'setclipboard('['..
tostring(al)..'] = '..tostring(am)..',')end end return p:Notify('['..j..
'] Loaded! ('..k..')')
