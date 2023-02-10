local a=game:GetService'ContextActionService'local b=game:GetService'Lighting'
local c=game:GetService'PathfindingService'local d=game:GetService'Players'local
e=game:GetService'ReplicatedStorage'local f=game:GetService'RunService'local g=
game:GetService'SoundService'local h=game:GetService'Workspace'local i=game:
GetService'VirtualInputManager'local j='Doors'local k='Rooms v5.4'local l=
'TerminalVibes/doors'local m='rooms'local n={[6839171747]=5938}local o=0.1 do
local p=game.PlaceId local q=game.PlaceVersion local r=n[p]if not r then warn
'Script does not support this place instance.'warn
[[The PlaceID and version has been set to your clipboard. Please report this to the developer.]]
return setclipboard('['..tostring(p)..'] = '..tostring(q)..',')end end do local
p=m..k if getgenv()[p]then return end getgenv()[p]=true end local p=
[[https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/]]local q=
loadstring(game:HttpGet(p..'Library.lua'))()local r=loadstring(game:HttpGet(p..
'addons/SaveManager.lua'))()local s=loadstring(game:HttpGet(p..
'addons/ThemeManager.lua'))()local t do local u,v=type,typeof t=setmetatable({},
{__tostring=function()return'Bin'end})t.__index=t function t.new(...)local w=
setmetatable({},t)return w:constructor(...)or w end function t.constructor(w)end
function t.add(w,x,y)local z={item=x,method=y}if w.head==nil then w.head=z end
if w.tail then w.tail.next=z end w.tail=z return x end function t.destroy(w)
while w.head do local x=w.head.item local y=w.head.method if y then x[y](x)
elseif u(x)=='function'then x()elseif v(x)=='RBXScriptConnection'then x:
Disconnect()elseif u(x)=='thread'then task.cancel(x)elseif x.destroy~=nil then x
:destroy()elseif x.Destroy~=nil then x:Destroy()end w.head=w.head.next end end
function t.isEmpty(w)return w.head==nil end end local u do u={}u.__index=u
function u.__tostring(v)return'BaseComponent - '..v.instance:GetFullName()end
local v,w,x=setmetatable,assert,task.defer function u.new(y,...)local z=v({},u)z
=z:constructor(y,...)or z z:run()return z end function u.constructor(y,z,...)y.
instance=z y.running=false y.destructed=false y._maid=t.new()y._maid:add(z.
Destroying:Connect(function()if not y.destructed then y:destroy()end end))end
function u.onStart(y)end function u.run(y)w(not y.running,'['..y:__tostring()..
'] is already running')x(function()y.running=true if not y.destructed then y:
onStart()end end)end function u.destroy(y)w(not y.destructed,'['..y:__tostring()
..'] is already destroyed')y.running=false y.destructed=true y._maid:destroy()
end end local v=d.LocalPlayer local w=h.CurrentCamera local x=e:WaitForChild
'GameData'local y={}do local z=e:WaitForChild'EntityInfo'local A={A90=z:
WaitForChild'A90'}for B,C in pairs(A)do y[B]=C end end local z=Instance.new
'Sound'local A=t.new()local B local C local D local E local F local G local H
local I local J local K local L local M local N={}local O={}local P={}local Q={}
local aa=function(R,S)local T=0.12 local U=t.new()local V=Drawing.new'Text'local
W=Drawing.new'Square'local X=Drawing.new'Square'U:add(V,'Remove')U:add(W,
'Remove')U:add(X,'Remove')V.Text=R or''V.Color=Color3.fromRGB(255,255,255)V.
ZIndex=3 W.Color=Color3.fromRGB(25,25,25)W.Filled=true W.Thickness=0 W.Size=V.
TextBounds+Vector2.new(10,8)W.ZIndex=2 X.Color=Color3.fromRGB(0,100,255)X.Filled
=true X.Thickness=0 X.Size=Vector2.new(2,24)X.ZIndex=1 local Y=0 for Z in pairs(
Q)do Y=math.max(Y,Z+1)end Q[Y]=U local _=0 local aa,ab,ac=pairs(Q)U:add(f.
RenderStepped:Connect(function(ad)_+=ad local ae,af=aa(ab,ac)local ag=ae or 0
while ae~=nil do ag=math.min(ag,ae)ae,af=aa(ab,ae)end local ah=Y-ag local ai=5
if _<=T then ai=-(W.Size.X+2)+(_/T)*(W.Size.X+7)elseif _>=S-T then ai=5-(_-(S-T)
)/T*(W.Size.X+7)end local aj=Vector2.new(ai,40+(ah*25))V.Position=aj+Vector2.
new(7,4)W.Position=aj+Vector2.new(2,0)X.Position=aj end))U:add(f.RenderStepped:
Once(function(ad)V.Visible=true W.Visible=true X.Visible=true end))task.delay(S,
function()U:destroy()Q[Y]=nil end)end local ab=function(ab,ac)if ab and Toggles[
'alerts.enabled'].Value then local ad={message=ac.message or'',audio=ac.audio or
false,duration=ac.duration or 5}if Toggles['alerts.drawing'].Value then aa(ad.
message,ad.duration)else q:Notify(ad.message,ad.duration)end if ad.audio and
Toggles['alerts.audio'].Value then z.TimePosition=0.25 z:Play()end end end do
local ac=u B=setmetatable({},{__index=ac})B.__index=B function B.__tostring(ad)
return'CharacterComponent - '..ad.instance:GetFullName()end B.attached={}
function B.new(ad,...)local ae=setmetatable({},B)ae=ae:constructor(ad,...)or ae
ae:run()return ae end function B.constructor(ad,ae)ac.constructor(ad,ae)ad.
client=E.attached[d:GetPlayerFromCharacter(ae)]ad.root=ae:WaitForChild(
'HumanoidRootPart',5)ad.humanoid=ae:WaitForChild('Humanoid',5)assert(ad.client~=
nil,'['..ad:__tostring().."] is not a client's character")assert(ad.root~=nil,
'['..ad:__tostring()..'] is missing a HumanoidRootPart')assert(ad.humanoid~=nil,
'['..ad:__tostring()..'] is missing a Humanoid')ad._maid:add(ae.AncestryChanged:
Connect(function(af,ag)if ag==nil then ad:destroy()end end))end function B.
onStart(ad)B.attached[ad.instance]=ad ac.onStart(ad)end function B.destroy(ad)B.
attached[ad.instance]=nil ac.destroy(ad)end end do local ac=Vector3.new(1,0,1)
local ad=B C=setmetatable({},{__index=ad})C.__index=C function C.__tostring(ae)
return'AvatarComponent - '..ae.instance:GetFullName()end C.attached=nil function
C.new(ae,...)local af=setmetatable({},C)af=af:constructor(ae,...)or af af:run()
return af end function C.constructor(ae,af)ad.constructor(ae,af)ae.parts={ae.
_maid:add(Instance.new'Part'),ae._maid:add(Instance.new'Part'),ae._maid:add(
Instance.new'Part'),ae._maid:add(Instance.new'Part')}ae.lights={ae._maid:add(
Instance.new'PointLight'),ae._maid:add(Instance.new'PointLight'),ae._maid:add(
Instance.new'PointLight'),ae._maid:add(Instance.new'PointLight'),ae._maid:add(
Instance.new'PointLight')}end function C.onStart(ae)C.attached=ae ad.onStart(ae)
for af,ag in ipairs(ae.lights)do ag.Enabled=false ag.Range=60 ag.Color=Color3.
new(1,1,1)ag.Shadows=false end for ah,ai in ipairs(ae.parts)do local aj=ai local
R=ae._maid:add(Instance.new'WeldConstraint')local S=ae.lights[ah]aj.Size=Vector3
.zero aj.Massless=true aj.CanCollide=false aj.CanTouch=false aj.CanQuery=false R
.Part0=ae.root R.Part1=aj local T=(ah-1)*math.pi/2 aj.Position=ae.root.Position+
Vector3.new(math.cos(T)*25,5,math.sin(T)*25)R.Parent=aj S.Parent=aj aj.Parent=h
end ae.lights[5].Parent=ae.root while ae.running do for aj,R in ipairs(ae.lights
)do R.Enabled=Toggles['character.glow.enabled'].Value R.Brightness=Options[
'character.glow.brightness'].Value/50 end task.wait(0.3)end end function C.
onPhysics(ae,ah,ai)local aj=Options['character.sprint.speed'].Value if aj>0 and
Toggles['character.sprint.enabled'].Value and Options['character.sprint.keybind'
]:GetState()then local R=ae.humanoid.MoveDirection*ac if R.Magnitude>0 then ae.
instance:TranslateBy(R*aj*ai)end end end function C.destroy(ae)C.attached=nil ad
.destroy(ae)end end do local ac=Vector3.new(5,7,0)local ad=Vector3.new(0,-0.25,0
)local ae,ah,ai,aj=CFrame.new(ad.X-(ac.X/2),ad.Y+(ac.Y/2),ad.Z),CFrame.new(ad.X+
(ac.X/2),ad.Y+(ac.Y/2),ad.Z),CFrame.new(ad.X-(ac.X/2),ad.Y-(ac.Y/2),ad.Z),CFrame
.new(ad.X+(ac.X/2),ad.Y-(ac.Y/2),ad.Z)local R=w.WorldToViewportPoint local S=
Vector2.new local T=math.min local U=B D=setmetatable({},{__index=U})D.__index=D
function D.__tostring(V)return'FriendComponent - '..V.instance:GetFullName()end
D.attached={}function D.new(V,...)local W=setmetatable({},D)W=W:constructor(V,
...)or W W:run()return W end function D.constructor(V,W)U.constructor(V,W)V.quad
=Drawing.new'Quad'V._maid:add(V.quad,'Remove')end function D.onStart(V)D.
attached[V.instance]=V U.onStart(V)local W=V.quad W.Visible=false W.Thickness=1
W.Transparency=0.75 end function D.onRender(V,W)local X=V.quad if Toggles[
'esp.player.enabled'].Value then local Y=V.root.CFrame local Z=R(w,(Y*ae).
Position)local _=R(w,(Y*ah).Position)local ak=R(w,(Y*aj).Position)local al=R(w,(
Y*ai).Position)if T(Z.Z,_.Z,ak.Z,al.Z)>0 then X.PointA=S(_.X,_.Y)X.PointB=S(Z.X,
Z.Y)X.PointC=S(al.X,al.Y)X.PointD=S(ak.X,ak.Y)X.Color=Options['esp.player.color'
].Value X.Visible=true else X.Visible=false end else X.Visible=false end end
function D.destroy(ak)D.attached[ak.instance]=nil U.destroy(ak)end end do local
ac=u E=setmetatable({},{__index=ac})E.__index=E function E.__tostring(ad)return
'ClientComponent - '..ad.instance:GetFullName()end E.attached={}function E.new(
ad,...)local ae=setmetatable({},E)ae=ae:constructor(ad,...)or ae ae:run()return
ae end function E.constructor(ad,ae)ac.constructor(ad,ae)end function E.onStart(
ad)E.attached[ad.instance]=ad ac.onStart(ad)ad._maid:add(ad.instance.
CharacterAdded:Connect(function(ae)ad:onCharacter(ae)end))ad._maid:add(ad.
instance.Backpack.ChildAdded:Connect(function(ae)if ae:IsA'Tool'then ad:onTool(
ae)end end))task.defer(function()local ae=ad.instance.Character if ae then ad:
onCharacter(ae)end end)task.defer(function()for ae,ah in ipairs(ad.instance.
Backpack:GetChildren())do if ah:IsA'Tool'then ad:onTool(ah)end end end)end
function E.onCharacter(ad,ae)if ad.instance==v then ad.character=C.new(ae)else
ad.character=D.new(ae)end end function E.onTool(ad,ae)if ae.Name==
'LibraryHintPaper'then local ah=ae:WaitForChild('UI',1)if ah then local ai={}for
aj=1,5 do local ak=ah:FindFirstChild(tostring(aj))if ak then local al=ak.
ImageRectOffset.X/50 ai[aj]=al end end libraryOrder=ai end end end function E.
destroy(ad)E.attached[ad.instance]=nil ac.destroy(ad)end local ad=function(ad)E.
new(ad)end d.PlayerAdded:Connect(ad)for ae,ah in ipairs(d:GetPlayers())do task.
defer(ad,ah)end end do local ac=Vector3.new(4,6,0)local ad=Vector3.new(0,0,0)
local ae,ah,ai,aj=CFrame.new(ad.X-(ac.X/2),ad.Y+(ac.Y/2),ad.Z),CFrame.new(ad.X+(
ac.X/2),ad.Y+(ac.Y/2),ad.Z),CFrame.new(ad.X-(ac.X/2),ad.Y-(ac.Y/2),ad.Z),CFrame.
new(ad.X+(ac.X/2),ad.Y-(ac.Y/2),ad.Z)local ak=w.WorldToViewportPoint local al=
Vector2.new local R=math.min local S=u F=setmetatable({},{__index=S})F.__index=F
function F.__tostring(T)return'A60Component - '..T.instance:GetFullName()end F.
attached={}function F.new(T,...)local U=setmetatable({},F)U=U:constructor(T,...)
or U U:run()return U end function F.constructor(T,U)S.constructor(T,U)T.root=U.
PrimaryPart or U:WaitForChild('Main',5)assert(T.root,'['..T:__tostring()..
'] is missing a root part!')T.quad=Drawing.new'Quad'T._maid:add(T.quad,'Remove')
end function F.onStart(T)F.attached[T.instance]=T S.onStart(T)local U=T.quad U.
Visible=false U.Thickness=1 U.Color=T:getColor()ab(Toggles['alerts.entity'].
Value,{message='A60 spawned, run and hide in the closest locker!',duration=7.5,
audio=true})end function F.onRender(T,U)local V=T.quad if T:isEnabled()then
local W=T.root.CFrame local X=ak(w,(W*ae).Position)local Y=ak(w,(W*ah).Position)
local Z=ak(w,(W*aj).Position)local _=ak(w,(W*ai).Position)if R(X.Z,Y.Z,Z.Z,_.Z)>
0 then V.PointA=al(Y.X,Y.Y)V.PointB=al(X.X,X.Y)V.PointC=al(_.X,_.Y)V.PointD=al(Z
.X,Z.Y)V.Visible=true else V.Visible=false end else V.Visible=false end end
function F.isEnabled(T)return Toggles['esp.rush.enabled'].Value end function F.
getColor(T)return Options['esp.rush.a60-color'].Value end function F.destroy(T)F
.attached[T.instance]=nil S.destroy(T)end end do local ac=Vector3.new(4,6,0)
local ad=Vector3.new(0,0,0)local ae,ah,ai,aj=CFrame.new(ad.X-(ac.X/2),ad.Y+(ac.Y
/2),ad.Z),CFrame.new(ad.X+(ac.X/2),ad.Y+(ac.Y/2),ad.Z),CFrame.new(ad.X-(ac.X/2),
ad.Y-(ac.Y/2),ad.Z),CFrame.new(ad.X+(ac.X/2),ad.Y-(ac.Y/2),ad.Z)local ak=w.
WorldToViewportPoint local al=Vector2.new local R=math.min local S=u G=
setmetatable({},{__index=S})G.__index=G function G.__tostring(T)return
'A120Component - '..T.instance:GetFullName()end G.attached={}function G.new(T,
...)local U=setmetatable({},G)U=U:constructor(T,...)or U U:run()return U end
function G.constructor(T,U)S.constructor(T,U)T.root=U.PrimaryPart or U:
WaitForChild('Main',5)assert(T.root,'['..T:__tostring()..
'] is missing a root part!')T.quad=Drawing.new'Quad'T._maid:add(T.quad,'Remove')
end function G.onStart(T)G.attached[T.instance]=T S.onStart(T)local U=T.quad U.
Visible=false U.Thickness=1 U.Color=T:getColor()ab(Toggles['alerts.entity'].
Value,{message='A120 spawned, run and hide in the closest locker!',duration=7.5,
audio=true})end function G.onRender(T,U)local V=T.quad if T:isEnabled()then
local W=T.root.CFrame local X=ak(w,(W*ae).Position)local Y=ak(w,(W*ah).Position)
local Z=ak(w,(W*aj).Position)local _=ak(w,(W*ai).Position)if R(X.Z,Y.Z,Z.Z,_.Z)>
0 then V.PointA=al(Y.X,Y.Y)V.PointB=al(X.X,X.Y)V.PointC=al(_.X,_.Y)V.PointD=al(Z
.X,Z.Y)V.Visible=true else V.Visible=false end else V.Visible=false end end
function G.isEnabled(T)return Toggles['esp.rush.enabled'].Value end function G.
getColor(T)return Options['esp.rush.a120-color'].Value end function G.destroy(T)
G.attached[T.instance]=nil S.destroy(T)ab(Toggles['alerts.entity'].Value,{
message='A120 despawned, you are safe to continue your run!',duration=4,audio=
true})end end do local ac=CFrame.new(0,0,1)local ad=w.WorldToViewportPoint local
ae=Vector2.new local ah=math.min local ai=u H=setmetatable({},{__index=ai})H.
__index=H function H.__tostring(aj)return'DoorComponent - '..aj.instance:
GetFullName()end H.attached={}function H.new(aj,...)local ak=setmetatable({},H)
ak=ak:constructor(aj,...)or ak ak:run()return ak end function H.constructor(aj,
ak,al)ai.constructor(aj,ak)aj.id=al or 0 local R=ak.Size*0.5 local S=ak.CFrame*
ac aj.tl=(S*CFrame.new(R.X,R.Y,0)).Position aj.tr=(S*CFrame.new(-R.X,R.Y,0)).
Position aj.bl=(S*CFrame.new(R.X,-R.Y,0)).Position aj.br=(S*CFrame.new(-R.X,-R.Y
,0)).Position aj.quad=Drawing.new'Quad'aj._maid:add(aj.quad,'Remove')end
function H.onStart(aj)H.attached[aj.instance]=aj ai.onStart(aj)local ak=aj.quad
ak.Visible=false ak.Thickness=2 end function H.onRender(aj,ak)local al=aj.quad
if Toggles['esp.door.enabled'].Value then local R=ad(w,aj.tl)local S=ad(w,aj.tr)
local T=ad(w,aj.br)local U=ad(w,aj.bl)if ah(R.Z,S.Z,T.Z,U.Z)>0 then al.PointA=
ae(S.X,S.Y)al.PointB=ae(R.X,R.Y)al.PointC=ae(U.X,U.Y)al.PointD=ae(T.X,T.Y)local
V=aj.id-x.LatestRoom.Value if V==0 then al.Color=Options['esp.door.target-color'
].Value else al.Color=Options['esp.door.default-color'].Value if V<0 then al.
Transparency=0.5 else al.Transparency=1 end end al.Visible=true else al.Visible=
false end else al.Visible=false end end function H.destroy(aj)H.attached[aj.
instance]=nil ai.destroy(aj)end end do local ac=Vector3.new(4.675,7.15,0)local
ad=Vector3.new(0,0,-1.25)local ae,ah,ai,aj=CFrame.new(ad.X-(ac.X/2),ad.Y+(ac.Y/2
),ad.Z),CFrame.new(ad.X+(ac.X/2),ad.Y+(ac.Y/2),ad.Z),CFrame.new(ad.X-(ac.X/2),ad
.Y-(ac.Y/2),ad.Z),CFrame.new(ad.X+(ac.X/2),ad.Y-(ac.Y/2),ad.Z)local ak=w.
WorldToViewportPoint local al=Vector2.new local R=math.min local S=u I=
setmetatable({},{__index=S})I.__index=I function I.__tostring(T)return
'WardrobeComponent - '..T.instance:GetFullName()end I.attached={}function I.new(
T,...)local U=setmetatable({},I)U=U:constructor(T,...)or U U:run()return U end
function I.constructor(T,U,V)S.constructor(T,U)T.id=V T.root=U:WaitForChild(
'Base',5)T.occupant=U:WaitForChild('HiddenPlayer',5)T.quad=Drawing.new'Quad'T.
_maid:add(T.quad,'Remove')end function I.onStart(T)I.attached[T.instance]=T S.
onStart(T)local U=T.quad U.Visible=false U.Thickness=2 end function I.onRender(T
,U)local V=T.quad if Toggles['esp.locker.enabled'].Value then local W=T.root.
CFrame local X=ak(w,(W*ae).Position)local Y=ak(w,(W*ah).Position)local Z=ak(w,(W
*aj).Position)local _=ak(w,(W*ai).Position)if R(X.Z,Y.Z,Z.Z,_.Z)>0 then V.PointA
=al(Y.X,Y.Y)V.PointB=al(X.X,X.Y)V.PointC=al(_.X,_.Y)V.PointD=al(Z.X,Z.Y)V.Color=
Options['esp.locker.color'].Value if T.occupant.Value then V.Transparency=0.1
elseif x.LatestRoom.Value-T.id>1 then V.Transparency=0.25 else V.Transparency=
0.6 end V.Visible=true else V.Visible=false end else V.Visible=false end end
function I.destroy(T)I.attached[T.instance]=nil S.destroy(T)end end do local ac=
w.WorldToViewportPoint local ad=Vector2.new local ae=ad(0,3)local ah=u J=
setmetatable({},{__index=ah})J.__index=J function J.__tostring(ai)return
'InteractableComponent - '..ai.instance:GetFullName()end J.attached={}function J
.new(ai,aj,...)local ak=setmetatable({},J)ak=ak:constructor(ai,aj,...)or ak ak:
run()return ak end function J.constructor(ai,aj,ak)ah.constructor(ai,aj)ai.name=
ak ai.label=Drawing.new'Text'ai.circle=Drawing.new'Circle'ai.outline=Drawing.new
'Circle'ai._maid:add(ai.label,'Remove')ai._maid:add(ai.circle,'Remove')ai._maid:
add(ai.outline,'Remove')ai._maid:add(aj.AncestryChanged:Connect(function(al,R)if
R==nil then ai:destroy()end end))end function J.onStart(ai)J.attached[ai.
instance]=ai ah.onStart(ai)local aj,ak,al=ai.label,ai.circle,ai.outline aj.Text=
ai.name aj.Size=18 aj.Center=true aj.Outline=true aj.Visible=false ak.Thickness=
1 ak.NumSides=6 ak.Radius=5 ak.Filled=true ak.Visible=false al.Color=Color3.new(
)al.Thickness=1.5 al.NumSides=6 al.Radius=5 al.Filled=false al.Visible=false al.
ZIndex=2 end function J.onRender(ai,aj)local ak,al,R=ai.label,ai.circle,ai.
outline if ai:isVisualEnabled()then local S=ac(w,ai.instance.Position)local T=S.
Z>0 if T then local U=ad(S.X,S.Y)ak.Position=U+ae al.Position=U R.Position=U
local V=ai:getColor()ak.Color=V al.Color=V end ak.Visible=T al.Visible=T R.
Visible=T else ak.Visible=false al.Visible=false R.Visible=false end end
function J.isVisualEnabled(ai)return Toggles['esp.interactable.enabled'].Value
end function J.getColor(ai)return Options['esp.interactable.color'].Value end
function J.destroy(ai)J.attached[ai.instance]=nil ah.destroy(ai)end end do local
ac=J K=setmetatable({},{__index=ac})K.__index=K function K.__tostring(ad)return
'ObtainableComponent - '..ad.instance:GetFullName()end K.attached={}function K.
new(ad,ae,...)local ah=setmetatable({},K)ah=ah:constructor(ad,ae,...)or ah ah:
run()return ah end function K.constructor(ad,ae,ah)ac.constructor(ad,ae,ah)end
function K.onStart(ad)K.attached[ad.instance]=ad ac.onStart(ad)local ae,ah,ai=ad
.label,ad.circle,ad.outline ah.NumSides=5 ai.NumSides=5 end function K.
isVisualEnabled(ad)return Toggles['esp.obtainable.enabled'].Value end function K
.getColor(ad)return Options['esp.obtainable.color'].Value end function K.destroy
(ad)K.attached[ad.instance]=nil ac.destroy(ad)end end do local ac=K L=
setmetatable({},{__index=ac})L.__index=L function L.__tostring(ad)return
'GoldComponent - '..ad.instance:GetFullName()end function L.new(ad,...)local ae=
setmetatable({},L)ae=ae:constructor(ad,...)or ae ae:run()return ae end function
L.constructor(ad,ae)ac.constructor(ad,ae,'Gold')ad.denomination=0 end function L
.onStart(ad)ac.onStart(ad)ad:onDenominationChanged()ad.instance:
GetAttributeChangedSignal'GoldValue':Connect(function()ad:onDenominationChanged(
)end)end function L.onRender(ad,ae)ad.label.Text=Options['esp.gold.format'].
Value:gsub('{amount}',tostring(ad.denomination))ac.onRender(ad,ae)end function L
.onDenominationChanged(ad)ad.denomination=ad.instance.Parent:GetAttribute
'GoldValue'or 0 end function L.isVisualEnabled(ad)return Toggles[
'esp.gold.enabled'].Value and ad.denomination>=Options['esp.gold.minimum'].Value
end function L.getColor(ad)return Options['esp.gold.color'].Value end end do
local ac=function()return Toggles['auto-loot.enabled'].Value and Options[
'auto-loot.keybind']:GetState()end local ad=u M=setmetatable({},{__index=ad})M.
__index=M function M.__tostring(ae)return'RoomComponent - '..ae.instance:
GetFullName()end M.attached={}function M.new(ae,...)local ah=setmetatable({},M)
ah=ah:constructor(ae,...)or ah ah:run()return ah end function M.constructor(ae,
ah)ad.constructor(ae,ah)ae.id=tonumber(ah.Name)ae.assets=ah:WaitForChild(
'Assets',5)end function M.onStart(ae)M.attached[ae.instance]=ae ad.onStart(ae)
local ah=ae.instance:WaitForChild('RoomExit',5)if ah then H.new(ah,ae.id)end ae.
_maid:add(ae.instance.DescendantAdded:Connect(function(ai)ae:onDescendant(ai)end
))for ai,aj in ipairs(ae.instance:GetDescendants())do task.defer(ae.onDescendant
,ae,aj)end end function M.onDescendant(ae,ah)local ai=ah.Parent local aj=ai.Name
local ak=ah.Name if ak=='Main'then if aj=='Battery'then K.new(ah,'Batteries')end
elseif ak=='Rooms_Locker'or ak=='Rooms_Locker_Fridge'then I.new(ah,ae.id)elseif
ak=='Hitbox'then if aj=='GoldPile'then L.new(ah)end end if ah:IsA
'ProximityPrompt'then local al=t.new()ae._maid:add(al)local R local S=ah local T
=os.clock()local U=S.MaxActivationDistance+5 if aj=='GoldPile'then R=ai:
WaitForChild('Hitbox',5)end if aj=='Battery'then R=ai:WaitForChild('Main',5)end
if R then al:add(f.Heartbeat:Connect(function()if not S:IsDescendantOf(ae.
instance)then return al:destroy()end local V=S:GetAttribute'Interactions'if V
then return al:destroy()end if not ac()then return end local W=os.clock()if W-T<
o then return end local X=C.attached local Y=(R.Position-X.root.Position).
Magnitude if Y<=U then fireproximityprompt(S)T=W end end))end return end end
function M.destroy(ae)M.attached[ae.instance]=nil ad.destroy(ae)end local ae=
function(ae)M.new(ae)end A:add(h.CurrentRooms.ChildAdded:Connect(ae))for ah,ai
in ipairs(h.CurrentRooms:GetChildren())do ae(ai)end end local ac do local ad=
Vector3.new(1,0,1)local ae=u ac=setmetatable({},{__index=ae})ac.__index=ac
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
ah:isCurrent()then local ak=C.attached if not ak then return end local al=ak.
root local R=ak.humanoid if al.Anchored or R.MoveDirection.Magnitude>0 then
return end local S=ah.entrance.CFrame*ah.nodes[ah.index]local T=ak.root.Position
local U=(S-T)*ad local V=U.Magnitude if V<=0.5 then ah:onNode(ah.index+1)else
local W=U.Unit local X=Options['pathfinder.speed'].Value*aj ak.instance:PivotTo(
CFrame.new(T+(W*X)))end end end function ac.onNode(ah,ai)if ai<=#ah.nodes then
ah.index=ai else ah:destroy()end end function ac.isValid(ah)return ah.id>=x.
LatestRoom.Value end function ac.isCurrent(ah)return ah.id==x.LatestRoom.Value
end function ac.generateNodes(ah)local ai=ah.nodes local aj=ah.generation_id
local ak=ah.entrance.CFrame:ToObjectSpace(ah.exit.CFrame).Position table.insert(
ai,CFrame.new(0,0,0))if aj=='Rooms_Start'then table.insert(ai,CFrame.new(0,0,-10
))table.insert(ai,CFrame.new(0,0,-35.75))elseif aj=='Rooms_End'then table.
insert(ai,CFrame.new(0,0,-5))table.insert(ai,CFrame.new(-12,0,-8))table.insert(
ai,CFrame.new(-3,0,-20))table.insert(ai,CFrame.new(0,0,-39))elseif aj==
'Rooms_Empty1'then table.insert(ai,CFrame.new(0,0,-10))table.insert(ai,CFrame.
new(0,0,-54))elseif aj=='Rooms_Lockers1'then table.insert(ai,CFrame.new(0,0,-10)
)table.insert(ai,CFrame.new(0,0,-54))elseif aj=='Rooms_Lockers2'then table.
insert(ai,CFrame.new(0,0,-10))table.insert(ai,CFrame.new(0,0,-64))elseif aj==
'Rooms_Lockers3'then table.insert(ai,CFrame.new(0,0,-10))table.insert(ai,CFrame.
new(6,0,-64))elseif aj=='Rooms_Lockers4'then table.insert(ai,CFrame.new(0,0,-10)
)table.insert(ai,CFrame.new(-6,0,-64))elseif aj=='Rooms_Curve1'then table.
insert(ai,CFrame.new(0,0,-10))table.insert(ai,CFrame.new(10,0,-40))table.insert(
ai,CFrame.new(12.13,0,-54))elseif aj=='Rooms_Curve2'then table.insert(ai,CFrame.
new(0,0,-10))table.insert(ai,CFrame.new(10,0,-50))table.insert(ai,CFrame.new(
12.13,0,-64))elseif aj=='Rooms_Curve3'then table.insert(ai,CFrame.new(0,0,-10))
table.insert(ai,CFrame.new(20,0,-50))table.insert(ai,CFrame.new(22.13,0,-64))
elseif aj=='Rooms_AltCurve1'then table.insert(ai,CFrame.new(0,0,-3))table.
insert(ai,CFrame.new(-12.13,0,-54))elseif aj=='Rooms_AltCurve2'then table.
insert(ai,CFrame.new(0,0,-10))table.insert(ai,CFrame.new(-12.13,0,-64))elseif aj
=='Rooms_AltCurve3'then table.insert(ai,CFrame.new(0,0,-10))table.insert(ai,
CFrame.new(-22.13,0,-64))elseif aj=='Rooms_Cubby1'then table.insert(ai,CFrame.
new(0,0,-5))table.insert(ai,CFrame.new(7.5,0,-12.5))table.insert(ai,CFrame.new(
7.5,0,-37.5))table.insert(ai,CFrame.new(-9.38,0,-54))elseif aj=='Rooms_Cubby2'
then table.insert(ai,CFrame.new(0,0,-10))table.insert(ai,CFrame.new(6,0,-23.5))
table.insert(ai,CFrame.new(6,0,-45))table.insert(ai,CFrame.new(-9.38,0,-64))
elseif aj=='Rooms_AltCubby1'then if ak:FuzzyEq(Vector3.new(0,0,-54),0.05)then
table.insert(ai,CFrame.new(-10,0,-20))table.insert(ai,CFrame.new(-10,0,-30))
table.insert(ai,CFrame.new(0,0,-54))elseif ak:FuzzyEq(Vector3.new(9.38,0,-54),
0.05)then table.insert(ai,CFrame.new(-5.75,0,-15))table.insert(ai,CFrame.new(-
5.75,0,-35))table.insert(ai,CFrame.new(9.38,0,-54))end elseif aj==
'Rooms_AltCubby2'then if ak:FuzzyEq(Vector3.new(0,0,-64),0.05)then table.insert(
ai,CFrame.new(0,0,-10))table.insert(ai,CFrame.new(-11.4,0,-35))table.insert(ai,
CFrame.new(-11,0,-40))table.insert(ai,CFrame.new(0,0,-64))elseif ak:FuzzyEq(
Vector3.new(9.38,0,-64),0.05)then table.insert(ai,CFrame.new(0,0,-10))table.
insert(ai,CFrame.new(-5,0,-26))table.insert(ai,CFrame.new(-5,0,-45))table.
insert(ai,CFrame.new(9.38,0,-64))end elseif aj=='Rooms_Skinny1'then table.
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
CFrame.new(0,0,-10))table.insert(ai,CFrame.new(-11,0,-30))table.insert(ai,CFrame
.new(0,0,-64))elseif aj=='Rooms_Desk1'then table.insert(ai,CFrame.new(0,0,-10))
table.insert(ai,CFrame.new(0,0,-54))elseif aj=='Rooms_Desk2'then table.insert(ai
,CFrame.new(0,0,-10))table.insert(ai,CFrame.new(0,0,-64))elseif aj==
'Rooms_Desk3'then table.insert(ai,CFrame.new(0,0,-10))table.insert(ai,CFrame.
new(10,0,-64))elseif aj=='Rooms_Storage1'then table.insert(ai,CFrame.new(-9,0,-
43.65))table.insert(ai,CFrame.new(0,0,-54))elseif aj=='Rooms_Storage2'then table
.insert(ai,CFrame.new(0,0,-10))table.insert(ai,CFrame.new(-3.65,0,-40))table.
insert(ai,CFrame.new(-11.7,0,-51.5))table.insert(ai,CFrame.new(-5.53,0,-57.49))
table.insert(ai,CFrame.new(0,0,-64))elseif aj=='Rooms_Storage3'then table.
insert(ai,CFrame.new(0,0,-10))table.insert(ai,CFrame.new(-18,0,-55.5))table.
insert(ai,CFrame.new(-8,0,-64))elseif aj=='Rooms_Storage4'then table.insert(ai,
CFrame.new(0,0,-10))table.insert(ai,CFrame.new(5.75,0,-30))table.insert(ai,
CFrame.new(-3.34,0,-54.18))table.insert(ai,CFrame.new(8,0,-64))end end function
ac.destroy(ah)ac.attached[ah.instance]=nil ae.destroy(ah)end local ah=function(
ah)if Toggles['pathfinder.enabled'].Value then ac.new(ah)end end A:add(h.
CurrentRooms.ChildAdded:Connect(ah))end q:SetWatermark
'Linoria Community (TerminalVibes)'q:Notify'Loading UI...'do local ad=q:
CreateWindow(j..' ('..k..')')do local ae=ad:AddTab'Gameplay'do local ah=ae:
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
'Enables the drawing API for script alerts.'})ai:AddToggle('alerts.audio',{Text=
'Enable Sound',Default=true,Tooltip=
'Plays a sound when an important alert is triggered.'})local aj=ah:AddTab
'Advanced'aj:AddToggle('alerts.debug',{Text='Debug Alerts',Default=false,Tooltip
='Enabled alerts related to script status.'})aj:AddToggle('alerts.entity',{Text=
'Entity Alerts',Default=true,Tooltip='Enabled alerts about entities spawning.'})
end end do local ae=ad:AddTab'Blatant'do local ah=ae:AddLeftGroupbox
'Pathfinder (Beta)'ah:AddToggle('pathfinder.enabled',{Text='Enabled',Default=
false,Tooltip='Automatically finds the fastest path to the next room.'})ah:
AddToggle('pathfinder.stop-on-exit',{Text='Stop on Checkpoints',Default=true,
Tooltip='Stops the pathfinder when it reaches a checkpoint.'})ah:AddSlider(
'pathfinder.speed',{Text='Speed',Min=1,Max=30,Default=16,Rounding=0,Suffix=
' studs'})end do local ah=ae:AddRightGroupbox'Auto Loot'ah:AddToggle(
'auto-loot.enabled',{Text='Enabled',Default=false,Tooltip=
'Automatically loots items for you.'}):AddKeyPicker('auto-loot.keybind',{Text=
'Auto-loot',Default='F'})end do local ah=ae:AddRightGroupbox'Entity Hooks'ah:
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
Ambient=Color3.fromRGB(200,200,200)b.Brightness=1 b.ClockTime=12 A:add(b:
GetPropertyChangedSignal'Ambient':Connect(function()local ai=Color3.fromRGB(200,
200,200)if b.Ambient~=ai then b.Ambient=ai end end))A:add(b:
GetPropertyChangedSignal'Brightness':Connect(function()if b.Brightness~=1 then b
.Brightness=1 end end))A:add(b:GetPropertyChangedSignal'ClockTime':Connect(
function()if b.ClockTime~=12 then b.ClockTime=12 end end))end}end end do local
ae=ad:AddTab'Credits'local ah=ae:AddLeftGroupbox'Credits'ah:AddLabel
'TerminalVibes - Creator'ah:AddLabel'Inori @v3rm - UI Library'ah:AddDivider()ah:
AddLabel'Contributors:'ah:AddLabel'> reversing#2937 @discord'ah:AddLabel
'> yuuiz#1336 @discord'ah:AddLabel'> Ferris#8276 @discord'ah:AddLabel
'> Lythicals#0001 @discord'ah:AddLabel'> brickmane @v3rm'ah:AddLabel
'> BlockOfGaming'local ai=ae:AddRightGroupbox'Socials'ai:AddButton{Text=
'Discord Server',Func=function()setclipboard'https://discord.gg/8PATx7UKXZ'end}
end do local ae=ad:AddTab'Settings's:SetLibrary(q)r:SetLibrary(q)s:SetFolder(l)r
:SetFolder(l..'/'..m)r:IgnoreThemeSettings()r:SetIgnoreIndexes{'MenuKeybind'}r:
BuildConfigSection(ae)s:ApplyToTab(ae)local ah=ae:AddLeftGroupbox'Menu'ah:
AddButton('Unload',function()q:Unload()end)ah:AddLabel'Menu bind':AddKeyPicker(
'MenuKeybind',{Default='End',NoUI=true,Text='Menu keybind'})ah:AddToggle(
'Keybinds',{Text='Show Keybinds Menu',Default=true}):OnChanged(function()q.
KeybindFrame.Visible=Toggles.Keybinds.Value end)ah:AddToggle('Watermark',{Text=
'Show Watermark',Default=true}):OnChanged(function()q:SetWatermarkVisibility(
Toggles.Watermark.Value)end)end end q:Notify
'UI Built! [Right Ctrl or Right Shift]'r:LoadAutoloadConfig()local ad=function()
w=h.CurrentCamera or w end A:add(h:GetPropertyChangedSignal'CurrentCamera':
Connect(ad))local ae=function(ae)local ah=ae.Name if ah=='A60'then F.new(ae)
elseif ah=='A120'then G.new(ae)end end A:add(h.ChildAdded:Connect(ae))local ah=
function()if Toggles['blatant.a90.remove'].Value then ab(Toggles['alerts.debug']
,{message='A90 was eaten by TerminalVibes',duration=4})return end if Toggles[
'gameplay.a90.disable-movement'].Value then task.wait(0.9)local ah=C.attached ah
.root.AssemblyLinearVelocity=Vector3.zero i:SendKeyEvent(false,Enum.KeyCode.W,
false,game)i:SendKeyEvent(false,Enum.KeyCode.A,false,game)i:SendKeyEvent(false,
Enum.KeyCode.S,false,game)i:SendKeyEvent(false,Enum.KeyCode.D,false,game)a:
BindAction('a90.freeze',function()return Enum.ContextActionResult.Sink end,false
,Enum.KeyCode.W,Enum.KeyCode.A,Enum.KeyCode.S,Enum.KeyCode.D,Enum.KeyCode.E)
local ai=w.CFrame local aj=f.RenderStepped:Connect(function()w.CFrame=ai end)
task.wait(0.4)aj:Disconnect()a:UnbindAction'a90.freeze'end end A:add(y.A90.
OnClientEvent:Connect(ah))local ai=function(ai)for aj,ak in ipairs(N)do for al,R
in pairs(ak.attached)do R:onTick(ai)end end end local aj=function(aj)for ak,al
in ipairs(O)do for R,S in pairs(al.attached)do S:onRender(aj)end end end local
ak=function(ak,al)for R,S in ipairs(P)do for T,U in pairs(S.attached)do U:
onPhysics(ak,al)end end local T=C.attached if T then T:onPhysics(ak,al)end end A
:add(f.Heartbeat:Connect(ai))A:add(f.RenderStepped:Connect(aj))A:add(f.Stepped:
Connect(ak))Toggles['pathfinder.enabled']:OnChanged(function()if Toggles[
'pathfinder.enabled'].Value then local al=h.CurrentRooms:FindFirstChild(
tostring(x.LatestRoom.Value+1))if al then ac.new(al)end else for al,R in pairs(
ac.attached)do R:destroy()end end end)Toggles['blatant.a90.remove']:OnChanged(
function()local al={}for R,S in ipairs(getconnections(y.A90.OnClientEvent))do
local T=S.Function if T then local U=getfenv(T).script if U and U.Name==
'RemoteListener'then table.insert(al,S)end end end if Toggles[
'blatant.a90.remove'].Value then for T,U in ipairs(al)do U:Disable()end else for
T,U in ipairs(al)do U:Enable()end end end)q:OnUnload(function()A:destroy()
getgenv()[m..k]=nil local al={D,E,F,G,H,I,J,K,M}for R,S in ipairs(al)do for T,U
in pairs(S.attached)do U:destroy()end end if C.attached then C.attached:destroy(
)end end)table.insert(O,D)table.insert(O,F)table.insert(O,G)table.insert(O,H)
table.insert(O,I)table.insert(O,J)table.insert(P,ac)z.Name='Main'z.SoundId=
'rbxassetid://6026984224'z.Volume=6 z.Parent=g do local al=game.PlaceId local R=
game.PlaceVersion local S=n[al]if R>S then q:Notify
[[Game has been updated! Please be careful when using this script.]]q:Notify
'The place ID and Version has been copied to your clipboard.'setclipboard('['..
tostring(al)..'] = '..tostring(R)..',')end end return q:Notify('['..j..
'] Loaded! ('..k..')')
