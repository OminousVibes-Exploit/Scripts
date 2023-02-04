local a=game:GetService'HttpService'local b=game:GetService'Players'local c=game
:GetService'ReplicatedStorage'local d=game:GetService'RunService'local e=game:
GetService'SoundService'local f=game:GetService'Workspace'local g=game:
GetService'VirtualInputManager'local h='Doors'local i='Hotel v5.2'local j=
'TerminalVibes/doors'local k='hotel'local l={[6839171747]=5902}do local m=game.
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
end end local s=b.LocalPlayer local t=s:WaitForChild'PlayerGui'local u=f.
CurrentCamera local v=c:WaitForChild'GameData'local w={}do local x=c:
WaitForChild'EntityInfo'local y={PadlockHint=x:WaitForChild'PadlockHint',
EngageMinigame=x:WaitForChild'EngageMinigame',ClutchHeartbeat=x:WaitForChild
'ClutchHeartbeat',Screech=x:WaitForChild'Screech'}for z,A in pairs(y)do w[z]=A
end end local x=Instance.new'Sound'local y={}local z={}local A={}local B=q.new()
local C local D local E local F local G local H local I local J local K local L
local M local N local O local P={}local Q={}local R={}local S={}local aa=
function(T,U)local V=0.12 local W=q.new()local X=Drawing.new'Text'local Y=
Drawing.new'Square'local Z=Drawing.new'Square'W:add(X,'Remove')W:add(Y,'Remove')
W:add(Z,'Remove')X.Text=T or''X.Color=Color3.fromRGB(255,255,255)X.ZIndex=3 Y.
Color=Color3.fromRGB(25,25,25)Y.Filled=true Y.Thickness=0 Y.Size=X.TextBounds+
Vector2.new(10,8)Y.ZIndex=2 Z.Color=Color3.fromRGB(0,100,255)Z.Filled=true Z.
Thickness=0 Z.Size=Vector2.new(2,24)Z.ZIndex=1 local _=0 for aa in pairs(S)do _=
math.max(_,aa+1)end S[_]=W local ab=0 local ac,ad,ae=pairs(S)W:add(d.
RenderStepped:Connect(function(af)ab+=af local ag,ah=ac(ad,ae)local ai=ag or 0
while ag~=nil do ai=math.min(ai,ag)ag,ah=ac(ad,ag)end local aj=_-ai local ak=5
if ab<=V then ak=-(Y.Size.X+2)+(ab/V)*(Y.Size.X+7)elseif ab>=U-V then ak=5-(ab-(
U-V))/V*(Y.Size.X+7)end local al=Vector2.new(ak,40+(aj*25))X.Position=al+Vector2
.new(7,4)Y.Position=al+Vector2.new(2,0)Z.Position=al end))W:add(d.RenderStepped:
Once(function(af)X.Visible=true Y.Visible=true Z.Visible=true end))task.delay(U,
function()W:destroy()S[_]=nil end)end local ab=function(ab,ac)if ab and Toggles[
'alerts.enabled'].Value then local ad={message=ac.message or'',audio=ac.audio or
false,duration=ac.duration or 5}if Toggles['alerts.drawing'].Value then aa(ad.
message,ad.duration)else n:Notify(ad.message,ad.duration)end if ad.audio and
Toggles['alerts.audio'].Value then x.TimePosition=0.25 x:Play()end end end do
local ac=r C=setmetatable({},{__index=ac})C.__index=C function C.__tostring(ad)
return'CharacterComponent - '..ad.instance:GetFullName()end C.attached={}
function C.new(ad,...)local ae=setmetatable({},C)ae=ae:constructor(ad,...)or ae
ae:run()return ae end function C.constructor(ad,ae)ac.constructor(ad,ae)ad.
client=F.attached[b:GetPlayerFromCharacter(ae)]ad.root=ae:WaitForChild(
'HumanoidRootPart',5)ad.humanoid=ae:WaitForChild('Humanoid',5)assert(ad.client~=
nil,'['..ad:__tostring().."] is not a client's character")assert(ad.root~=nil,
'['..ad:__tostring()..'] is missing a HumanoidRootPart')assert(ad.humanoid~=nil,
'['..ad:__tostring()..'] is missing a Humanoid')ad._maid:add(ae.AncestryChanged:
Connect(function(af,ag)if ag==nil then ad:destroy()end end))end function C.
onStart(ad)C.attached[ad.instance]=ad ac.onStart(ad)end function C.destroy(ad)C.
attached[ad.instance]=nil ac.destroy(ad)end end do local ac=Vector3.new(1,0,1)
local ad=C D=setmetatable({},{__index=ad})D.__index=D function D.__tostring(ae)
return'AvatarComponent - '..ae.instance:GetFullName()end D.attached=nil function
D.new(ae,...)local af=setmetatable({},D)af=af:constructor(ae,...)or af af:run()
return af end function D.constructor(ae,af)ad.constructor(ae,af)ae.light=
Instance.new'PointLight'end function D.onStart(ae)D.attached=ae ad.onStart(ae)
local af=ae.light af.Enabled=false af.Range=100 af.Color=Color3.fromRGB(255,255,
255)af.Shadows=false af.Parent=ae.root while ae.running do af.Enabled=Toggles[
'character.glow.enabled'].Value af.Brightness=Options[
'character.glow.brightness'].Value/50 task.wait(0.5)end end function D.onPhysics
(ae,af,ag)local ah=Options['character.sprint.speed'].Value if ah>0 and Toggles[
'character.sprint.enabled'].Value and Options['character.sprint.keybind']:
GetState()then local ai=ae.humanoid.MoveDirection*ac if ai.Magnitude>0 then ae.
instance:TranslateBy(ai*ah*ag)end end end function D.destroy(ae)D.attached=nil
ad.destroy(ae)end end do local ac=Vector3.new(5,7,0)local ad=Vector3.new(0,-0.25
,0)local ae,af,ag,ah=CFrame.new(ad.X-(ac.X/2),ad.Y+(ac.Y/2),ad.Z),CFrame.new(ad.
X+(ac.X/2),ad.Y+(ac.Y/2),ad.Z),CFrame.new(ad.X-(ac.X/2),ad.Y-(ac.Y/2),ad.Z),
CFrame.new(ad.X+(ac.X/2),ad.Y-(ac.Y/2),ad.Z)local ai=u.WorldToViewportPoint
local aj=Vector2.new local ak=math.min local al=C E=setmetatable({},{__index=al}
)E.__index=E function E.__tostring(T)return'FriendComponent - '..T.instance:
GetFullName()end E.attached={}function E.new(T,...)local U=setmetatable({},E)U=U
:constructor(T,...)or U U:run()return U end function E.constructor(T,U)al.
constructor(T,U)T.quad=Drawing.new'Quad'T._maid:add(T.quad,'Remove')end function
E.onStart(T)E.attached[T.instance]=T al.onStart(T)local U=T.quad U.Visible=false
U.Thickness=1 U.Transparency=0.75 end function E.onRender(T,U)local V=T.quad if
Toggles['esp.player.enabled'].Value then local W=T.root.CFrame local X=ai(u,(W*
ae).Position)local Y=ai(u,(W*af).Position)local Z=ai(u,(W*ah).Position)local _=
ai(u,(W*ag).Position)if ak(X.Z,Y.Z,Z.Z,_.Z)>0 then V.PointA=aj(Y.X,Y.Y)V.PointB=
aj(X.X,X.Y)V.PointC=aj(_.X,_.Y)V.PointD=aj(Z.X,Z.Y)V.Color=Options[
'esp.player.color'].Value V.Visible=true else V.Visible=false end else V.Visible
=false end end function E.destroy(T)E.attached[T.instance]=nil al.destroy(T)end
end do local ac=r F=setmetatable({},{__index=ac})F.__index=F function F.
__tostring(ad)return'ClientComponent - '..ad.instance:GetFullName()end F.
attached={}function F.new(ad,...)local ae=setmetatable({},F)ae=ae:constructor(ad
,...)or ae ae:run()return ae end function F.constructor(ad,ae)ac.constructor(ad,
ae)end function F.onStart(ad)F.attached[ad.instance]=ad ac.onStart(ad)ad._maid:
add(ad.instance.CharacterAdded:Connect(function(ae)ad:onCharacter(ae)end))ad.
_maid:add(ad.instance.Backpack.ChildAdded:Connect(function(ae)if ae:IsA'Tool'
then ad:onTool(ae)end end))task.defer(function()local ae=ad.instance.Character
if ae then ad:onCharacter(ae)end end)task.defer(function()for ae,af in ipairs(ad
.instance.Backpack:GetChildren())do if af:IsA'Tool'then ad:onTool(af)end end end
)end function F.onCharacter(ad,ae)if ad.instance==s then ad.character=D.new(ae)
else ad.character=E.new(ae)end end function F.onTool(ad,ae)if ae.Name==
'LibraryHintPaper'then local af=ae:WaitForChild('UI',1)if af then local ag={}for
ah=1,5 do local ai=af:FindFirstChild(tostring(ah))if ai then local aj=ai.
ImageRectOffset.X/50 ag[ah]=aj end end z=ag end end end function F.destroy(ad)F.
attached[ad.instance]=nil ac.destroy(ad)end local ad=function(ad)F.new(ad)end b.
PlayerAdded:Connect(ad)for ae,af in ipairs(b:GetPlayers())do task.defer(ad,af)
end end do local ac=u.WorldToViewportPoint local ad,ae,af=Vector2.new,Vector3.
new,CFrame.Angles local ag=r G=setmetatable({},{__index=ag})G.__index=G function
G.__tostring(ah)return'ScreechComponent - '..ah.instance:GetFullName()end G.
attached={}function G.new(ah,...)local ai=setmetatable({},G)ai=ai:constructor(ah
,...)or ai ai:run()return ai end function G.constructor(ah,ai)ag.constructor(ah,
ai)ah.root=ai:WaitForChild'Root'ah.line=Drawing.new'Line'ah.outline=Drawing.new
'Line'ah._maid:add(ah.line,'Remove')ah._maid:add(ah.outline,'Remove')end
function G.onStart(ah)G.attached[ah.instance]=ah ag.onStart(ah)local ai,aj=ah.
line,ah.outline ai.Visible=false ai.Color=Options['esp.screech.color'].Value ai.
ZIndex=1 ai.Thickness=1 aj.Visible=false aj.Color=Color3.new()aj.ZIndex=0 aj.
Thickness=2 end function G.onRender(ah,ai)local aj=Toggles['esp.screech.enabled'
].Value local ak,al=ah.line,ah.outline if aj then local T=ah.root.Position local
U=ac(u,T)if U.Z<0 then local V=u.CFrame:PointToObjectSpace(T)local W=math.atan2(
V.Y,V.X)+math.pi V=af(0,0,W):VectorToWorldSpace((af(0,math.rad(89.9),0):
VectorToWorldSpace(ae(0,0,-1))))U=ac(u,u.CFrame:PointToWorldSpace(V))end local V
=u.ViewportSize ak.From=ad(V.X/2,V.Y*0.75)ak.To=ad(U.X,U.Y)al.From=ak.From al.To
=ak.To end ak.Visible=aj al.Visible=aj end function G.destroy(ah)G.attached[ah.
instance]=nil ag.destroy(ah)end end do local ac=Vector3.new(4,6,0)local ad=
Vector3.new(0,0,0)local ae,af,ag,ah=CFrame.new(ad.X-(ac.X/2),ad.Y+(ac.Y/2),ad.Z)
,CFrame.new(ad.X+(ac.X/2),ad.Y+(ac.Y/2),ad.Z),CFrame.new(ad.X-(ac.X/2),ad.Y-(ac.
Y/2),ad.Z),CFrame.new(ad.X+(ac.X/2),ad.Y-(ac.Y/2),ad.Z)local ai=u.
WorldToViewportPoint local aj=Vector2.new local ak=math.min local al=r H=
setmetatable({},{__index=al})H.__index=H function H.__tostring(T)return
'RushComponent - '..T.instance:GetFullName()end H.attached={}function H.new(T,
...)local U=setmetatable({},H)U=U:constructor(T,...)or U U:run()return U end
function H.constructor(T,U)al.constructor(T,U)T.root=U.PrimaryPart or U:
WaitForChild('RushNew',5)assert(T.root,'['..T:__tostring()..
'] is missing a root part!')T.name=T.instance.Name=='RushMoving'and'Rush'or
'Ambush'T.quad=Drawing.new'Quad'T._maid:add(T.quad,'Remove')end function H.
onStart(T)H.attached[T.instance]=T al.onStart(T)local U=T.quad U.Visible=false U
.Thickness=1 U.Color=T.name=='Rush'and Options['esp.rush.rush-color'].Value or
Options['esp.rush.ambush-color'].Value task.delay(0.5,function()local V=(D.
attached.root.Position-T.root.Position).Magnitude if V<=750 then ab(Toggles[
'alerts.entity'].Value,{message=T.name=='Rush'and
'Rush spawned, hide in a Wardrobe or get behind cover!'or
[[Ambush spawned, hide in a Wardrobe or get behind cover! Ambush can return up to 4 times.]]
,audio=true,duration=10})else T:destroy()end end)end function H.onRender(T,U)
local V=T.quad if Toggles['esp.rush.enabled'].Value then local W=T.root.CFrame
local X=ai(u,(W*ae).Position)local Y=ai(u,(W*af).Position)local Z=ai(u,(W*ah).
Position)local _=ai(u,(W*ag).Position)if ak(X.Z,Y.Z,Z.Z,_.Z)>0 then V.PointA=aj(
Y.X,Y.Y)V.PointB=aj(X.X,X.Y)V.PointC=aj(_.X,_.Y)V.PointD=aj(Z.X,Z.Y)V.Visible=
true else V.Visible=false end else V.Visible=false end end function H.destroy(T)
H.attached[T.instance]=nil al.destroy(T)end end do local ac=Vector3.new(6,13,0)
local ad=Vector3.new(0,-1,0)local ae,af,ag,ah=CFrame.new(ad.X-(ac.X/2),ad.Y+(ac.
Y/2),ad.Z),CFrame.new(ad.X+(ac.X/2),ad.Y+(ac.Y/2),ad.Z),CFrame.new(ad.X-(ac.X/2)
,ad.Y-(ac.Y/2),ad.Z),CFrame.new(ad.X+(ac.X/2),ad.Y-(ac.Y/2),ad.Z)local ai=u.
WorldToViewportPoint local aj=Vector2.new local ak=math.min local al=r I=
setmetatable({},{__index=al})I.__index=I function I.__tostring(T)return
'FigureComponent - '..T.instance:GetFullName()end I.attached={}function I.new(T,
...)local U=setmetatable({},I)U=U:constructor(T,...)or U U:run()return U end
function I.constructor(T,U)al.constructor(T,U)T.ragdoll=U:WaitForChild(
'FigureRagdoll',2.5)assert(T.ragdoll~=nil,'['..T:__tostring()..
'] is missing its ragdoll!')T.root=T.ragdoll:WaitForChild('Root',2.5)assert(T.
root~=nil,'['..T:__tostring()..'] is missing its root part!')T.quad=Drawing.new
'Quad'T._maid:add(T.quad,'Remove')end function I.onStart(T)I.attached[T.instance
]=T al.onStart(T)local U=T.quad U.Visible=false U.Thickness=2 end function I.
onRender(T,U)local V=T.quad if Toggles['esp.figure.enabled'].Value then local W=
T.root.CFrame local X=ai(u,(W*ae).Position)local Y=ai(u,(W*af).Position)local Z=
ai(u,(W*ah).Position)local _=ai(u,(W*ag).Position)if ak(X.Z,Y.Z,Z.Z,_.Z)>0 then
V.PointA=aj(Y.X,Y.Y)V.PointB=aj(X.X,X.Y)V.PointC=aj(_.X,_.Y)V.PointD=aj(Z.X,Z.Y)
V.Color=Options['esp.figure.color'].Value V.Visible=true else V.Visible=false
end else V.Visible=false end end function I.destroy(T)I.attached[T.instance]=nil
al.destroy(T)end end do local ac=CFrame.new(0,0,1)local ad=u.
WorldToViewportPoint local ae=Vector2.new local af=math.min local ag=r J=
setmetatable({},{__index=ag})J.__index=J function J.__tostring(ah)return
'DoorComponent - '..ah.instance:GetFullName()end J.attached={}function J.new(ah,
...)local ai=setmetatable({},J)ai=ai:constructor(ah,...)or ai ai:run()return ai
end function J.constructor(ah,ai,aj)ag.constructor(ah,ai)ah.id=aj or 0 local ak=
ai.Size*0.5 local al=ai.CFrame*ac ah.tl=(al*CFrame.new(ak.X,ak.Y,0)).Position ah
.tr=(al*CFrame.new(-ak.X,ak.Y,0)).Position ah.bl=(al*CFrame.new(ak.X,-ak.Y,0)).
Position ah.br=(al*CFrame.new(-ak.X,-ak.Y,0)).Position ah.quad=Drawing.new'Quad'
ah._maid:add(ah.quad,'Remove')end function J.onStart(ah)J.attached[ah.instance]=
ah ag.onStart(ah)local ai=ah.quad ai.Visible=false ai.Thickness=2 end function J
.onRender(ah,ai)local aj=ah.quad if Toggles['esp.door.enabled'].Value then local
ak=ad(u,ah.tl)local al=ad(u,ah.tr)local T=ad(u,ah.br)local U=ad(u,ah.bl)if af(ak
.Z,al.Z,T.Z,U.Z)>0 then aj.PointA=ae(al.X,al.Y)aj.PointB=ae(ak.X,ak.Y)aj.PointC=
ae(U.X,U.Y)aj.PointD=ae(T.X,T.Y)local V=ah.id-v.LatestRoom.Value if V==0 then aj
.Color=Options['esp.door.target-color'].Value else aj.Color=Options[
'esp.door.default-color'].Value if V<0 then aj.Transparency=0.5 else aj.
Transparency=1 end end aj.Visible=true else aj.Visible=false end else aj.Visible
=false end end function J.destroy(ah)J.attached[ah.instance]=nil ag.destroy(ah)
end end do local ac=Vector3.new(6.4,9.5,0)local ad=Vector3.new(0,0,-0.5)local ae
,af,ag,ah=CFrame.new(ad.X-(ac.X/2),ad.Y+(ac.Y/2),ad.Z),CFrame.new(ad.X+(ac.X/2),
ad.Y+(ac.Y/2),ad.Z),CFrame.new(ad.X-(ac.X/2),ad.Y-(ac.Y/2),ad.Z),CFrame.new(ad.X
+(ac.X/2),ad.Y-(ac.Y/2),ad.Z)local ai=u.WorldToViewportPoint local aj=Vector2.
new local ak=math.min local al=r K=setmetatable({},{__index=al})K.__index=K
function K.__tostring(T)return'WardrobeComponent - '..T.instance:GetFullName()
end K.attached={}function K.new(T,...)local U=setmetatable({},K)U=U:constructor(
T,...)or U U:run()return U end function K.constructor(T,U,V)al.constructor(T,U)T
.id=V T.root=U:WaitForChild('Main',5)T.occupant=U:WaitForChild('HiddenPlayer',5)
T.quad=Drawing.new'Quad'T._maid:add(T.quad,'Remove')end function K.onStart(T)K.
attached[T.instance]=T al.onStart(T)local U=T.quad U.Visible=false U.Thickness=2
end function K.onRender(T,U)local V=T.quad if Toggles['esp.wardrobe.enabled'].
Value then local W=T.root.CFrame local X=ai(u,(W*ae).Position)local Y=ai(u,(W*af
).Position)local Z=ai(u,(W*ah).Position)local _=ai(u,(W*ag).Position)if ak(X.Z,Y
.Z,Z.Z,_.Z)>0 then V.PointA=aj(Y.X,Y.Y)V.PointB=aj(X.X,X.Y)V.PointC=aj(_.X,_.Y)V
.PointD=aj(Z.X,Z.Y)V.Color=Options['esp.wardrobe.color'].Value if T.occupant.
Value then V.Transparency=0.1 elseif v.LatestRoom.Value-T.id>1 then V.
Transparency=0.25 else V.Transparency=0.6 end V.Visible=true else V.Visible=
false end else V.Visible=false end end function K.destroy(T)K.attached[T.
instance]=nil al.destroy(T)end end do local ac=u.WorldToViewportPoint local ad=
Vector2.new local ae=ad(0,3)local af=r L=setmetatable({},{__index=af})L.__index=
L function L.__tostring(ag)return'InteractableComponent - '..ag.instance:
GetFullName()end L.attached={}function L.new(ag,ah,...)local ai=setmetatable({},
L)ai=ai:constructor(ag,ah,...)or ai ai:run()return ai end function L.constructor
(ag,ah,ai)af.constructor(ag,ah)ag.name=ai ag.label=Drawing.new'Text'ag.circle=
Drawing.new'Circle'ag.outline=Drawing.new'Circle'ag._maid:add(ag.label,'Remove')
ag._maid:add(ag.circle,'Remove')ag._maid:add(ag.outline,'Remove')ag._maid:add(ah
.AncestryChanged:Connect(function(aj,ak)if ak==nil then ag:destroy()end end))end
function L.onStart(ag)L.attached[ag.instance]=ag af.onStart(ag)local ah,ai,aj=ag
.label,ag.circle,ag.outline ah.Text=ag.name ah.Size=18 ah.Center=true ah.Outline
=true ah.Visible=false ai.Thickness=1 ai.NumSides=6 ai.Radius=5 ai.Filled=true
ai.Visible=false aj.Color=Color3.new()aj.Thickness=1.5 aj.NumSides=6 aj.Radius=5
aj.Filled=false aj.Visible=false aj.ZIndex=2 end function L.onRender(ag,ah)local
ai,aj,ak=ag.label,ag.circle,ag.outline if ag:isVisualEnabled()then local al=ac(u
,ag.instance.Position)local T=al.Z>0 if T then local U=ad(al.X,al.Y)ai.Position=
U+ae aj.Position=U ak.Position=U local V=ag:getColor()ai.Color=V aj.Color=V end
ai.Visible=T aj.Visible=T ak.Visible=T else ai.Visible=false aj.Visible=false ak
.Visible=false end end function L.isVisualEnabled(ag)return Toggles[
'esp.interactable.enabled'].Value end function L.getColor(ag)return Options[
'esp.interactable.color'].Value end function L.destroy(ag)L.attached[ag.instance
]=nil af.destroy(ag)end end do local ac=L M=setmetatable({},{__index=ac})M.
__index=M function M.__tostring(ad)return'ObtainableComponent - '..ad.instance:
GetFullName()end M.attached={}function M.new(ad,ae,...)local af=setmetatable({},
M)af=af:constructor(ad,ae,...)or af af:run()return af end function M.constructor
(ad,ae,af)ac.constructor(ad,ae,af)end function M.onStart(ad)M.attached[ad.
instance]=ad ac.onStart(ad)local ae,af,ag=ad.label,ad.circle,ad.outline af.
NumSides=5 ag.NumSides=5 end function M.isVisualEnabled(ad)return Toggles[
'esp.obtainable.enabled'].Value end function M.getColor(ad)return Options[
'esp.obtainable.color'].Value end function M.destroy(ad)M.attached[ad.instance]=
nil ac.destroy(ad)end end do local ac=M N=setmetatable({},{__index=ac})N.__index
=N function N.__tostring(ad)return'GoldComponent - '..ad.instance:GetFullName()
end function N.new(ad,...)local ae=setmetatable({},N)ae=ae:constructor(ad,...)or
ae ae:run()return ae end function N.constructor(ad,ae)ac.constructor(ad,ae,
'Gold')ad.denomination=0 end function N.onStart(ad)ac.onStart(ad)ad:
onDenominationChanged()ad.instance:GetAttributeChangedSignal'GoldValue':Connect(
function()ad:onDenominationChanged()end)end function N.onRender(ad,ae)ad.label.
Text=Options['esp.gold.format'].Value:gsub('{amount}',tostring(ad.denomination))
ac.onRender(ad,ae)end function N.onDenominationChanged(ad)ad.denomination=ad.
instance.Parent:GetAttribute'GoldValue'or 0 end function N.isVisualEnabled(ad)
return Toggles['esp.gold.enabled'].Value and ad.denomination>=Options[
'esp.gold.minimum'].Value end function N.getColor(ad)return Options[
'esp.gold.color'].Value end end do local ac=r O=setmetatable({},{__index=ac})O.
__index=O function O.__tostring(ad)return'RoomComponent - '..ad.instance:
GetFullName()end O.attached={}function O.new(ad,...)local ae=setmetatable({},O)
ae=ae:constructor(ad,...)or ae ae:run()return ae end function O.constructor(ad,
ae)ac.constructor(ad,ae)ad.id=tonumber(ae.Name)ad.assets=ae:WaitForChild(
'Assets',5)end function O.onStart(ad)O.attached[ad.instance]=ad ac.onStart(ad)if
ad.id==50 or ad.id==100 then task.defer(ad.onFigure,ad)end local ae=ad.instance:
WaitForChild('RoomExit',5)if ae then J.new(ae,ad.id)end ad._maid:add(ad.instance
.DescendantAdded:Connect(function(af)ad:onDescendant(af)end))for af,ag in
ipairs(ad.instance:GetDescendants())do ad:onDescendant(ag)if af%1000==0 then
task.wait()end end end function O.onDescendant(ad,ae)local af=ae.Parent local ag
=af.Name local ah=ae.Name if ah=='Main'then if ag=='LeverForGate'then L.new(ae,
'Lever')elseif ag=='Lighter'then M.new(ae,'Lighter')elseif ag=='Vitamins'then M.
new(ae,'Vitamins')elseif ag=='Lockpick'then M.new(ae,'Lockpicks')elseif ag==
'Bandage'then M.new(ae,'Bandages')elseif ag=='Battery'then M.new(ae,'Batteries')
end elseif ah=='Base'then if ag=='LiveHintBook'then M.new(ae,'Book')elseif ag==
'LiveBreakerPolePickup'then M.new(ae,'Fuse')end elseif ah=='Holder'then if ag==
'CrucifixWall'then M.new(ae,'Crucifix')end elseif ah=='Lock'then if ag=='Door'
then L.new(ae,'Lock')end elseif ag=='KeyObtain'then if ah=='Hitbox'then M.new(ae
,'Key')end elseif ah=='Wardrobe'then K.new(ae,ad.id)elseif ah=='Toolshed'then K.
new(ae,ad.id)elseif ah=='Hitbox'then if ag=='GoldPile'then N.new(ae)end end end
function O.onFigure(ad)local ae=ad.instance:WaitForChild('FigureSetup',5)I.new(
ae)end function O.destroy(ad)O.attached[ad.instance]=nil ac.destroy(ad)end end n
:SetWatermark'Linoria Community (TerminalVibes)'n:Notify'Loading UI...'do local
ac=n:CreateWindow(h..' ('..i..')')do local ad=ac:AddTab'Gameplay'do local ae=ad:
AddLeftGroupbox'Character Mods'ae:AddToggle('character.sprint.enabled',{Text=
'Sprint Enabled',Default=false,Tooltip=
'Enables Sprinting by pressing the Keybind'}):AddKeyPicker(
'character.sprint.keybind',{Text='Sprint',Default='LeftShift'})ae:AddSlider(
'character.sprint.speed',{Text='Sprint Boost (in seconds)',Min=0,Max=7.5,Default
=0,Rounding=1,Suffix=' studs'})ae:AddToggle('character.glow.enabled',{Text=
'Body Glow',Default=false,Tooltip='Adds a subtle glow for better vision'})ae:
AddSlider('character.glow.brightness',{Text='Glow Brightness',Min=0,Max=100,
Default=0,Rounding=0,Suffix=''})end do local ae=ad:AddLeftGroupbox
'Gameplay Mods'ae:AddToggle('gameplay.heartbeat.enabled',{Text=
'Automated Heartbeat',Default=false,Tooltip=
[[Automatically does Heartbeat inputs for you. (Room 50 & 100)]]})ae:AddToggle(
'gameplay.parser.enabled',{Text='Library Code',Default=false,Tooltip=
[[Automatically parses the Library padlock code as you obtain clues. (Paper & Hints required)]]
}):AddKeyPicker('gameplay.parser.keybind',{Default='P',NoUI=true,Mode='Toggle'})
ae:AddToggle('gameplay.breaker.enabled',{Text='Breaker Code',Default=false,
Tooltip='Notifies you of Electrical Breaker code when it generates.'}):
AddKeyPicker('gameplay.breaker.keybind',{Default='B',NoUI=true,Mode='Toggle'})
end do local ae=ad:AddRightTabbox'Alerts'local af=ae:AddTab'Alerts'af:AddToggle(
'alerts.enabled',{Text='Alerts Enabled',Default=true,Tooltip=
'Master toggle for all script alerts.'})af:AddToggle('alerts.drawing',{Text=
'Use Drawing API',Default=true,Tooltip=
'Enables the drawing API for script alerts.'})af:AddToggle('alerts.audio',{Text=
'Enable Sound',Default=true,Tooltip=
'Plays a sound when an important alert is triggered.'})local ag=ae:AddTab
'Advanced'ag:AddToggle('alerts.debug',{Text='Debug Alerts',Default=true,Tooltip=
'Enabled alerts related to script status.'})ag:AddToggle('alerts.entity',{Text=
'Entity Alerts',Default=true,Tooltip='Enabled alerts about entities spawning.'})
end end do local ad=ac:AddTab'Blatant'end do local ad=ac:AddTab'Visuals'do local
ae=ad:AddLeftTabbox'ESP'local af=ae:AddTab'Entity ESP'do af:AddToggle(
'esp.player.enabled',{Text='Player ESP',Default=true,Tooltip=
'ESP for other players'}):AddColorPicker('esp.player.color',{Title=
'Player ESP Color',Default=Color3.new(1,1,1)})af:AddToggle('esp.screech.enabled'
,{Text='Screech ESP',Default=true,Tooltip='Tracer ESP for Screech entities'}):
AddColorPicker('esp.screech.color',{Title='Screech ESP Color',Default=Color3.
new(1,0,0)})af:AddToggle('esp.rush.enabled',{Text='Rush/Ambush ESP',Default=true
,Tooltip='ESP for both Rush and Ambush entities'}):AddColorPicker(
'esp.rush.rush-color',{Title='Rush ESP Color',Default=Color3.new(1,0,0)}):
AddColorPicker('esp.rush.ambush-color',{Title='Ambush ESP Color',Default=Color3.
new(0,1,0)})af:AddToggle('esp.figure.enabled',{Text='Figure ESP',Default=true,
Tooltip='ESP for the Figure entity'}):AddColorPicker('esp.figure.color',{Title=
'Figure ESP Color',Default=Color3.new(0.75,0.25,0.25)})af:AddToggle(
'esp.snare.enabled',{Text='Snare ESP',Default=true,Tooltip='ESP for snare traps'
}):AddColorPicker('esp.snare.color',{Title='Snare ESP Color',Default=Color3.new(
1,0,0)})end local ag=ae:AddTab'Object ESP'do ag:AddToggle('esp.door.enabled',{
Text='Door ESP',Default=false,Tooltip='ESP for doors'}):AddColorPicker(
'esp.door.default-color',{Title='Other Doors ESP Color',Default=Color3.new(0,0.3
,0.75)}):AddColorPicker('esp.door.target-color',{Title='Current Door ESP Color',
Default=Color3.new(0,1,0)})ag:AddToggle('esp.wardrobe.enabled',{Text=
'Wardrobe ESP',Default=false,Tooltip='ESP for Wardrobe'}):AddColorPicker(
'esp.wardrobe.color',{Title='Wardrobe ESP Color',Default=Color3.new(0,1,0.9)})ag
:AddToggle('esp.interactable.enabled',{Text='Interactable ESP',Default=true,
Tooltip='ESP for interactable items'}):AddColorPicker('esp.interactable.color',{
Title='Interactable ESP Color',Default=Color3.new(1,1,1)})ag:AddToggle(
'esp.obtainable.enabled',{Text='Obtainable ESP',Default=true,Tooltip=
'ESP for items that can be picked up'}):AddColorPicker('esp.obtainable.color',{
Title='Obtainable ESP Color',Default=Color3.new(1,1,0)})end end do local ae=ad:
AddLeftGroupbox'Gold ESP'ae:AddToggle('esp.gold.enabled',{Text='Gold ESP',
Default=true,Tooltip='ESP for items that can be picked up'}):AddColorPicker(
'esp.gold.color',{Title='Gold ESP Color',Default=Color3.new(1,1,0)})ae:AddInput(
'esp.gold.format',{Text='Custom Label',Default='Gold [{amount}]',Placeholder=
'Label Text',Tooltip=
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
LoadAutoloadConfig()local ac=function()u=f.CurrentCamera or u end f:
GetPropertyChangedSignal'CurrentCamera':Connect(ac)local ad=function(ad)if ad.
Name=='Screech'then G.new(ad)end end u.ChildAdded:Connect(ad)local ae=function(
ae)local af=ae.Name if af=='RushMoving'or ae.Name=='AmbushMoving'then H.new(ae)
elseif af=='Eyes'then ab(Toggles['alerts.entity'].Value,{message=
'Eyes spawned, look away from it!',audio=true,duration=5})end end f.ChildAdded:
Connect(ae)local af=function(af)O.new(af)end f.CurrentRooms.ChildAdded:Connect(
af)for ag,ah in ipairs(f.CurrentRooms:GetChildren())do af(ah)end local ai=
function()ab(Toggles['alerts.entity'].Value,{message=
'Screech spawned, turn around and look at it!',audio=true,duration=5})end w.
Screech.OnClientEvent:Connect(ai)local aj=function(aj,ak)if aj and ak then y[aj]
=tostring(ak)end end w.PadlockHint.OnClientEvent:Connect(aj)local ak=function(
...)B:destroy()if not Toggles['gameplay.heartbeat.enabled'].Value then return
end local ak=t:WaitForChild('MainUI',1):WaitForChild('MainFrame',1):
WaitForChild('Heartbeat',1)local al=ak:WaitForChild('Heart',1)assert(ak and al,
'Heartbeat frame not found')local T=al.AbsolutePosition.X B:add(al.ChildAdded:
Connect(function(U)if U.Name=='LiveHalf'then local V=U.Image==
'rbxassetid://8428304451'local W=math.random(10,25)local X=0 repeat d.
RenderStepped:Wait()X=math.abs(U.AbsolutePosition.X-T)until X<=W local Y=V and
Enum.KeyCode.Q or Enum.KeyCode.E g:SendKeyEvent(true,Y,false,game)task.wait()g:
SendKeyEvent(false,Y,false,game)ab(Toggles['alerts.debug'].Value,{message=
'Simulated Heartbeat input: '..Y.Name,duration=2.5})end end))B:add(ak:
GetPropertyChangedSignal'Visible':Connect(function()if not ak.Visible then B:
destroy()end end))end w.ClutchHeartbeat.OnClientEvent:Connect(ak)local al=
function(al)for T,U in ipairs(P)do for V,W in pairs(U.attached)do W:onTick(al)
end end end local T=function(T)for U,V in ipairs(Q)do for W,X in pairs(V.
attached)do X:onRender(T)end end end local U=function(U,V)for W,X in ipairs(R)do
for Y,Z in pairs(X.attached)do Z:onPhysics(U,V)end end local Y=D.attached if Y
then Y:onPhysics(U,V)end end d.Heartbeat:Connect(al)d.RenderStepped:Connect(T)d.
Stepped:Connect(U)Options['gameplay.parser.keybind']:OnClick(function()if v.
LatestRoom.Value==50 then local V=''for W=1,5 do local X=y[z[W]]V=V..(X~=nil and
X or'_')end ab(Toggles['gameplay.parser.enabled'].Value,{message=
'[Code Parser]: '..V,audio=false,duration=7.5})end end)Options[
'gameplay.breaker.keybind']:OnClick(function()local V=''for W=1,#A do local X,Y=
unpack(A[W])if Y then V=V..tostring(X)..' 'end end ab(Toggles[
'gameplay.breaker.enabled'].Value,{message='[Breaker Code]: '..V,audio=false,
duration=7.5})end)task.defer(function()local V repeat task.wait(0.5)for W,X in
pairs(getconnections(w.EngageMinigame.OnClientEvent))do local Y=X.Function if Y
then local Z=getfenv(Y).script if Z.Name=='MinigameHandler'then local _=debug.
getupvalue(Y,1)if type(_)=='function'then V=_ end end end if W%2000==0 then task
.wait()end end until V~=nil local W repeat task.wait()W=debug.getupvalue(V,7)
until W~=nil local X=(syn and syn.set_thread_identity)or setidentity debug.
setupvalue(V,7,function(Y,...)local Z=W(Y,...)A=Y task.delay(0.1,function()X(7)
local _=''for am=1,#A do local an,ao=unpack(A[am])ab(true,{message=tostring(an)
..' = '..tostring(ao)})if ao then _=_..tostring(an)..' 'end end ab(Toggles[
'gameplay.breaker.enabled'].Value,{message='[Breaker Code]: '.._,audio=false,
duration=7.5})X(2)end)return Z end)end)table.insert(Q,E)table.insert(Q,G)table.
insert(Q,H)table.insert(Q,I)table.insert(Q,J)table.insert(Q,K)table.insert(Q,L)x
.Name='Main'x.SoundId='rbxassetid://6026984224'x.Volume=6 x.Parent=e do local am
=game.PlaceId local an=game.PlaceVersion local ao=l[am]if an>ao then n:Notify
[[Game has been updated! Please be careful when using this script.]]n:Notify
'The place ID and Version has been copied to your clipboard.'setclipboard('['..
tostring(am)..'] = '..tostring(an)..',')end end return n:Notify('['..h..
'] Loaded! ('..i..')')
