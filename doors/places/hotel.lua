local a=game:GetService'Players'local b=game:GetService'ReplicatedStorage'local
c=game:GetService'RunService'local d=game:GetService'SoundService'local e=game:
GetService'Workspace'local f=game:GetService'VirtualInputManager'local g='Doors'
local h='Hotel v5.3'local i='TerminalVibes/doors'local j='hotel'local k={[
6839171747]=5902}do local l=game.PlaceId local m=game.PlaceVersion local n=k[l]
if not n then warn'Script does not support this place instance.'warn
[[The PlaceID and version has been set to your clipboard. Please report this to the developer.]]
return setclipboard('['..tostring(l)..'] = '..tostring(m)..',')end end do local
l=j..h if getgenv()[l]then return end getgenv()[l]=true end local l=
[[https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/]]local m=
loadstring(game:HttpGet(l..'Library.lua'))()local n=loadstring(game:HttpGet(l..
'addons/SaveManager.lua'))()local o=loadstring(game:HttpGet(l..
'addons/ThemeManager.lua'))()local p do local q,r=type,typeof p=setmetatable({},
{__tostring=function()return'Bin'end})p.__index=p function p.new(...)local s=
setmetatable({},p)return s:constructor(...)or s end function p.constructor(s)end
function p.add(s,t,u)local v={item=t,method=u}if s.head==nil then s.head=v end
if s.tail then s.tail.next=v end s.tail=v return t end function p.destroy(s)
while s.head do local t=s.head.item local u=s.head.method if u then t[u](t)
elseif q(t)=='function'then t()elseif r(t)=='RBXScriptConnection'then t:
Disconnect()elseif q(t)=='thread'then task.cancel(t)elseif t.destroy~=nil then t
:destroy()elseif t.Destroy~=nil then t:Destroy()end s.head=s.head.next end end
function p.isEmpty(s)return s.head==nil end end local q do q={}q.__index=q
function q.__tostring(r)return'BaseComponent - '..r.instance:GetFullName()end
local r,s,t=setmetatable,assert,task.defer function q.new(u,...)local v=r({},q)v
=v:constructor(u,...)or v v:run()return v end function q.constructor(u,v,...)u.
instance=v u.running=false u.destructed=false u._maid=p.new()u._maid:add(v.
Destroying:Connect(function()if not u.destructed then u:destroy()end end))end
function q.onStart(u)end function q.run(u)s(not u.running,'['..u:__tostring()..
'] is already running')t(function()u.running=true if not u.destructed then u:
onStart()end end)end function q.destroy(u)s(not u.destructed,'['..u:__tostring()
..'] is already destroyed')u.running=false u.destructed=true u._maid:destroy()
end end local r=a.LocalPlayer local s=r:WaitForChild'PlayerGui'local t=e.
CurrentCamera local u=b:WaitForChild'GameData'local v={}do local w=b:
WaitForChild'EntityInfo'local x={PadlockHint=w:WaitForChild'PadlockHint',
EngageMinigame=w:WaitForChild'EngageMinigame',ClutchHeartbeat=w:WaitForChild
'ClutchHeartbeat',Screech=w:WaitForChild'Screech',SpiderJumpscare=w:WaitForChild
'SpiderJumpscare'}for y,z in pairs(x)do v[y]=z end end local w=Instance.new
'Sound'local x={}local y={}local z={}local A=p.new()local B=p.new()local C local
D local E local F local G local H local I local J local K local L local M local
N local O local P local Q={}local R={}local S={}local T={}local aa=function(U,V)
local W=0.12 local X=p.new()local Y=Drawing.new'Text'local Z=Drawing.new'Square'
local _=Drawing.new'Square'X:add(Y,'Remove')X:add(Z,'Remove')X:add(_,'Remove')Y.
Text=U or''Y.Color=Color3.fromRGB(255,255,255)Y.ZIndex=3 Z.Color=Color3.fromRGB(
25,25,25)Z.Filled=true Z.Thickness=0 Z.Size=Y.TextBounds+Vector2.new(10,8)Z.
ZIndex=2 _.Color=Color3.fromRGB(0,100,255)_.Filled=true _.Thickness=0 _.Size=
Vector2.new(2,24)_.ZIndex=1 local aa=0 for ab in pairs(T)do aa=math.max(aa,ab+1)
end T[aa]=X local ac=0 local ad,ae,af=pairs(T)X:add(c.RenderStepped:Connect(
function(ag)ac+=ag local ah,ai=ad(ae,af)local aj=ah or 0 while ah~=nil do aj=
math.min(aj,ah)ah,ai=ad(ae,ah)end local ak=aa-aj local al=5 if ac<=W then al=-(Z
.Size.X+2)+(ac/W)*(Z.Size.X+7)elseif ac>=V-W then al=5-(ac-(V-W))/W*(Z.Size.X+7)
end local am=Vector2.new(al,40+(ak*25))Y.Position=am+Vector2.new(7,4)Z.Position=
am+Vector2.new(2,0)_.Position=am end))X:add(c.RenderStepped:Once(function(ag)Y.
Visible=true Z.Visible=true _.Visible=true end))task.delay(V,function()X:
destroy()T[aa]=nil end)end local ab=function(ab,ac)if ab and Toggles[
'alerts.enabled'].Value then local ad={message=ac.message or'',audio=ac.audio or
false,duration=ac.duration or 5}if Toggles['alerts.drawing'].Value then aa(ad.
message,ad.duration)else m:Notify(ad.message,ad.duration)end if ad.audio and
Toggles['alerts.audio'].Value then w.TimePosition=0.25 w:Play()end end end do
local ac=q C=setmetatable({},{__index=ac})C.__index=C function C.__tostring(ad)
return'CharacterComponent - '..ad.instance:GetFullName()end C.attached={}
function C.new(ad,...)local ae=setmetatable({},C)ae=ae:constructor(ad,...)or ae
ae:run()return ae end function C.constructor(ad,ae)ac.constructor(ad,ae)ad.
client=F.attached[a:GetPlayerFromCharacter(ae)]ad.root=ae:WaitForChild(
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
return af end function D.constructor(ae,af)ad.constructor(ae,af)ae.parts={ae.
_maid:add(Instance.new'Part'),ae._maid:add(Instance.new'Part'),ae._maid:add(
Instance.new'Part'),ae._maid:add(Instance.new'Part')}ae.lights={ae._maid:add(
Instance.new'PointLight'),ae._maid:add(Instance.new'PointLight'),ae._maid:add(
Instance.new'PointLight'),ae._maid:add(Instance.new'PointLight')}end function D.
onStart(ae)D.attached=ae ad.onStart(ae)for af=1,4 do local ag=ae.parts[af]local
ah=ae.lights[af]local ai=ae._maid:add(Instance.new'WeldConstraint')ag.Size=
Vector3.zero ag.Massless=true ag.CanCollide=false ag.CanTouch=false ag.CanQuery=
false ah.Enabled=false ah.Range=60 ah.Color=Color3.new(1,1,1)ah.Shadows=false ai
.Part0=ae.root ai.Part1=ag ag.Parent=e ah.Parent=ag ai.Parent=ag end for af,ag
in ipairs(ae.parts)do local ah=(af-1)*math.pi/2 ag.Position=ae.root.Position+
Vector3.new(math.cos(ah)*25,5,math.sin(ah)*25)end while ae.running do for ah=1,4
do local ai=ae.lights[ah]ai.Enabled=Toggles['character.glow.enabled'].Value ai.
Brightness=Options['character.glow.brightness'].Value/50 end task.wait(0.5)end
end function D.onPhysics(ae,af,ag)local ah=Options['character.sprint.speed'].
Value if ah>0 and Toggles['character.sprint.enabled'].Value and Options[
'character.sprint.keybind']:GetState()then local ai=ae.humanoid.MoveDirection*ac
if ai.Magnitude>0 then ae.instance:TranslateBy(ai*ah*ag)end end end function D.
destroy(ae)D.attached=nil ad.destroy(ae)end end do local ac=Vector3.new(5,7,0)
local ad=Vector3.new(0,-0.25,0)local ae,af,ag,ah=CFrame.new(ad.X-(ac.X/2),ad.Y+(
ac.Y/2),ad.Z),CFrame.new(ad.X+(ac.X/2),ad.Y+(ac.Y/2),ad.Z),CFrame.new(ad.X-(ac.X
/2),ad.Y-(ac.Y/2),ad.Z),CFrame.new(ad.X+(ac.X/2),ad.Y-(ac.Y/2),ad.Z)local ai=t.
WorldToViewportPoint local aj=Vector2.new local ak=math.min local al=C E=
setmetatable({},{__index=al})E.__index=E function E.__tostring(am)return
'FriendComponent - '..am.instance:GetFullName()end E.attached={}function E.new(
am,...)local U=setmetatable({},E)U=U:constructor(am,...)or U U:run()return U end
function E.constructor(am,U)al.constructor(am,U)am.quad=Drawing.new'Quad'am.
_maid:add(am.quad,'Remove')end function E.onStart(am)E.attached[am.instance]=am
al.onStart(am)local U=am.quad U.Visible=false U.Thickness=1 U.Transparency=0.75
end function E.onRender(am,U)local V=am.quad if Toggles['esp.player.enabled'].
Value then local W=am.root.CFrame local X=ai(t,(W*ae).Position)local Y=ai(t,(W*
af).Position)local Z=ai(t,(W*ah).Position)local _=ai(t,(W*ag).Position)if ak(X.Z
,Y.Z,Z.Z,_.Z)>0 then V.PointA=aj(Y.X,Y.Y)V.PointB=aj(X.X,X.Y)V.PointC=aj(_.X,_.Y
)V.PointD=aj(Z.X,Z.Y)V.Color=Options['esp.player.color'].Value V.Visible=true
else V.Visible=false end else V.Visible=false end end function E.destroy(am)E.
attached[am.instance]=nil al.destroy(am)end end do local ac=q F=setmetatable({},
{__index=ac})F.__index=F function F.__tostring(ad)return'ClientComponent - '..ad
.instance:GetFullName()end F.attached={}function F.new(ad,...)local ae=
setmetatable({},F)ae=ae:constructor(ad,...)or ae ae:run()return ae end function
F.constructor(ad,ae)ac.constructor(ad,ae)end function F.onStart(ad)F.attached[ad
.instance]=ad ac.onStart(ad)ad._maid:add(ad.instance.CharacterAdded:Connect(
function(ae)ad:onCharacter(ae)end))ad._maid:add(ad.instance.Backpack.ChildAdded:
Connect(function(ae)if ae:IsA'Tool'then ad:onTool(ae)end end))task.defer(
function()local ae=ad.instance.Character if ae then ad:onCharacter(ae)end end)
task.defer(function()for ae,af in ipairs(ad.instance.Backpack:GetChildren())do
if af:IsA'Tool'then ad:onTool(af)end end end)end function F.onCharacter(ad,ae)if
ad.instance==r then ad.character=D.new(ae)else ad.character=E.new(ae)end end
function F.onTool(ad,ae)if ae.Name=='LibraryHintPaper'then local af=ae:
WaitForChild('UI',1)if af then local ag={}for ah=1,5 do local ai=af:
FindFirstChild(tostring(ah))if ai then local aj=ai.ImageRectOffset.X/50 ag[ah]=
aj end end y=ag end end end function F.destroy(ad)F.attached[ad.instance]=nil ac
.destroy(ad)end local ad=function(ad)F.new(ad)end a.PlayerAdded:Connect(ad)for
ae,af in ipairs(a:GetPlayers())do task.defer(ad,af)end end do local ac=t.
WorldToViewportPoint local ad,ae,af=Vector2.new,Vector3.new,CFrame.Angles local
ag=q G=setmetatable({},{__index=ag})G.__index=G function G.__tostring(ah)return
'ScreechComponent - '..ah.instance:GetFullName()end G.attached={}function G.new(
ah,...)local ai=setmetatable({},G)ai=ai:constructor(ah,...)or ai ai:run()return
ai end function G.constructor(ah,ai)ag.constructor(ah,ai)ah.root=ai:WaitForChild
'Root'ah.line=Drawing.new'Line'ah.outline=Drawing.new'Line'ah._maid:add(ah.line,
'Remove')ah._maid:add(ah.outline,'Remove')end function G.onStart(ah)G.attached[
ah.instance]=ah ag.onStart(ah)local ai,aj=ah.line,ah.outline ai.Visible=false ai
.Color=Options['esp.screech.color'].Value ai.ZIndex=1 ai.Thickness=1 aj.Visible=
false aj.Color=Color3.new()aj.ZIndex=0 aj.Thickness=2 end function G.onRender(ah
,ai)local aj=Toggles['esp.screech.enabled'].Value local ak,al=ah.line,ah.outline
if aj then local am=ah.root.Position local U=ac(t,am)if U.Z<0 then local V=t.
CFrame:PointToObjectSpace(am)local W=math.atan2(V.Y,V.X)+math.pi V=af(0,0,W):
VectorToWorldSpace((af(0,math.rad(89.9),0):VectorToWorldSpace(ae(0,0,-1))))U=ac(
t,t.CFrame:PointToWorldSpace(V))end local V=t.ViewportSize ak.From=ad(V.X/2,V.Y*
0.75)ak.To=ad(U.X,U.Y)al.From=ak.From al.To=ak.To end ak.Visible=aj al.Visible=
aj end function G.destroy(ah)G.attached[ah.instance]=nil ag.destroy(ah)end end
do local ac=Vector3.new(4,6,0)local ad=Vector3.new(0,0,0)local ae,af,ag,ah=
CFrame.new(ad.X-(ac.X/2),ad.Y+(ac.Y/2),ad.Z),CFrame.new(ad.X+(ac.X/2),ad.Y+(ac.Y
/2),ad.Z),CFrame.new(ad.X-(ac.X/2),ad.Y-(ac.Y/2),ad.Z),CFrame.new(ad.X+(ac.X/2),
ad.Y-(ac.Y/2),ad.Z)local ai=t.WorldToViewportPoint local aj=Vector2.new local ak
=math.min local al=q H=setmetatable({},{__index=al})H.__index=H function H.
__tostring(am)return'RushComponent - '..am.instance:GetFullName()end H.attached=
{}function H.new(am,...)local U=setmetatable({},H)U=U:constructor(am,...)or U U:
run()return U end function H.constructor(am,U)al.constructor(am,U)am.root=U.
PrimaryPart or U:WaitForChild('RushNew',5)assert(am.root,'['..am:__tostring()..
'] is missing a root part!')am.name=am.instance.Name=='RushMoving'and'Rush'or
'Ambush'am.quad=Drawing.new'Quad'am._maid:add(am.quad,'Remove')end function H.
onStart(am)H.attached[am.instance]=am al.onStart(am)local U=am.quad U.Visible=
false U.Thickness=1 U.Color=am.name=='Rush'and Options['esp.rush.rush-color'].
Value or Options['esp.rush.ambush-color'].Value task.delay(0.5,function()local V
=(D.attached.root.Position-am.root.Position).Magnitude if V<=750 then ab(Toggles
['alerts.entity'].Value,{message=am.name=='Rush'and
'Rush spawned, hide in a Wardrobe or get behind cover!'or
[[Ambush spawned, hide in a Wardrobe or get behind cover! Ambush can return up to 4 times.]]
,audio=true,duration=10})else am:destroy()end end)end function H.onRender(am,U)
local V=am.quad if Toggles['esp.rush.enabled'].Value then local W=am.root.CFrame
local X=ai(t,(W*ae).Position)local Y=ai(t,(W*af).Position)local Z=ai(t,(W*ah).
Position)local _=ai(t,(W*ag).Position)if ak(X.Z,Y.Z,Z.Z,_.Z)>0 then V.PointA=aj(
Y.X,Y.Y)V.PointB=aj(X.X,X.Y)V.PointC=aj(_.X,_.Y)V.PointD=aj(Z.X,Z.Y)V.Visible=
true else V.Visible=false end else V.Visible=false end end function H.destroy(am
)H.attached[am.instance]=nil al.destroy(am)end end do local ac=Vector3.new(6,13,
0)local ad=Vector3.new(0,-1,0)local ae,af,ag,ah=CFrame.new(ad.X-(ac.X/2),ad.Y+(
ac.Y/2),ad.Z),CFrame.new(ad.X+(ac.X/2),ad.Y+(ac.Y/2),ad.Z),CFrame.new(ad.X-(ac.X
/2),ad.Y-(ac.Y/2),ad.Z),CFrame.new(ad.X+(ac.X/2),ad.Y-(ac.Y/2),ad.Z)local ai=t.
WorldToViewportPoint local aj=Vector2.new local ak=math.min local al=q I=
setmetatable({},{__index=al})I.__index=I function I.__tostring(am)return
'FigureComponent - '..am.instance:GetFullName()end I.attached={}function I.new(
am,...)local U=setmetatable({},I)U=U:constructor(am,...)or U U:run()return U end
function I.constructor(am,U)al.constructor(am,U)am.ragdoll=U:WaitForChild(
'FigureRagdoll',2.5)assert(am.ragdoll~=nil,'['..am:__tostring()..
'] is missing its ragdoll!')am.root=am.ragdoll:WaitForChild('Root',2.5)assert(am
.root~=nil,'['..am:__tostring()..'] is missing its root part!')am.quad=Drawing.
new'Quad'am._maid:add(am.quad,'Remove')end function I.onStart(am)I.attached[am.
instance]=am al.onStart(am)local U=am.quad U.Visible=false U.Thickness=2 end
function I.onRender(am,U)local V=am.quad if Toggles['esp.figure.enabled'].Value
then local W=am.root.CFrame local X=ai(t,(W*ae).Position)local Y=ai(t,(W*af).
Position)local Z=ai(t,(W*ah).Position)local _=ai(t,(W*ag).Position)if ak(X.Z,Y.Z
,Z.Z,_.Z)>0 then V.PointA=aj(Y.X,Y.Y)V.PointB=aj(X.X,X.Y)V.PointC=aj(_.X,_.Y)V.
PointD=aj(Z.X,Z.Y)V.Color=Options['esp.figure.color'].Value V.Visible=true else
V.Visible=false end else V.Visible=false end end function I.destroy(am)I.
attached[am.instance]=nil al.destroy(am)end end do local ac=t.
WorldToViewportPoint local ad=Vector2.new local ae,af,ag=ad(-8,-6),ad(8,-6),ad(0
,8)local ah=q J=setmetatable({},{__index=ah})J.__index=J function J.__tostring(
ai)return'SnareComponent - '..ai.instance:GetFullName()end J.attached={}function
J.new(ai,...)local aj=setmetatable({},J)aj=aj:constructor(ai,...)or aj aj:run()
return aj end function J.constructor(ai,aj)ah.constructor(ai,aj)ai.root=aj:
WaitForChild('Base',2.5)ai.triangle=Drawing.new'Triangle'ai.outline=Drawing.new
'Triangle'ai._maid:add(ai.triangle,'Remove')ai._maid:add(ai.outline,'Remove')end
function J.onStart(ai)J.attached[ai.instance]=ai ah.onStart(ai)local aj,ak=ai.
triangle,ai.outline aj.Thickness=1 aj.Filled=true aj.Visible=false ak.Color=
Color3.new()ak.Thickness=1.5 ak.Filled=false ak.Visible=false ak.ZIndex=2 end
function J.onRender(ai,aj)local ak,al=ai.triangle,ai.outline if Toggles[
'esp.snare.enabled'].Value then local am=ac(t,ai.root.Position)local U=am.Z>0 if
U then local V=ad(am.X,am.Y)ak.PointA=V+ae ak.PointB=V+af ak.PointC=V+ag al.
PointA=ak.PointA al.PointB=ak.PointB al.PointC=ak.PointC ak.Color=Options[
'esp.snare.color'].Value end ak.Visible=U al.Visible=U else ak.Visible=false al.
Visible=false end end function J.destroy(ai)J.attached[ai.instance]=nil ah.
destroy(ai)end end do local ac=CFrame.new(0,0,1)local ad=t.WorldToViewportPoint
local ae=Vector2.new local af=math.min local ag=q K=setmetatable({},{__index=ag}
)K.__index=K function K.__tostring(ah)return'DoorComponent - '..ah.instance:
GetFullName()end K.attached={}function K.new(ah,...)local ai=setmetatable({},K)
ai=ai:constructor(ah,...)or ai ai:run()return ai end function K.constructor(ah,
ai,aj)ag.constructor(ah,ai)ah.id=aj or 0 local ak=ai.Size*0.5 local al=ai.CFrame
*ac ah.tl=(al*CFrame.new(ak.X,ak.Y,0)).Position ah.tr=(al*CFrame.new(-ak.X,ak.Y,
0)).Position ah.bl=(al*CFrame.new(ak.X,-ak.Y,0)).Position ah.br=(al*CFrame.new(-
ak.X,-ak.Y,0)).Position ah.quad=Drawing.new'Quad'ah._maid:add(ah.quad,'Remove')
end function K.onStart(ah)K.attached[ah.instance]=ah ag.onStart(ah)local ai=ah.
quad ai.Visible=false ai.Thickness=2 end function K.onRender(ah,ai)local aj=ah.
quad if Toggles['esp.door.enabled'].Value then local ak=ad(t,ah.tl)local al=ad(t
,ah.tr)local am=ad(t,ah.br)local U=ad(t,ah.bl)if af(ak.Z,al.Z,am.Z,U.Z)>0 then
aj.PointA=ae(al.X,al.Y)aj.PointB=ae(ak.X,ak.Y)aj.PointC=ae(U.X,U.Y)aj.PointD=ae(
am.X,am.Y)local V=ah.id-u.LatestRoom.Value if V==0 then aj.Color=Options[
'esp.door.target-color'].Value else aj.Color=Options['esp.door.default-color'].
Value if V<0 then aj.Transparency=0.5 else aj.Transparency=1 end end aj.Visible=
true else aj.Visible=false end else aj.Visible=false end end function K.destroy(
ah)K.attached[ah.instance]=nil ag.destroy(ah)end end do local ac=Vector3.new(6.4
,9.5,0)local ad=Vector3.new(0,0,-0.5)local ae,af,ag,ah=CFrame.new(ad.X-(ac.X/2),
ad.Y+(ac.Y/2),ad.Z),CFrame.new(ad.X+(ac.X/2),ad.Y+(ac.Y/2),ad.Z),CFrame.new(ad.X
-(ac.X/2),ad.Y-(ac.Y/2),ad.Z),CFrame.new(ad.X+(ac.X/2),ad.Y-(ac.Y/2),ad.Z)local
ai=t.WorldToViewportPoint local aj=Vector2.new local ak=math.min local al=q L=
setmetatable({},{__index=al})L.__index=L function L.__tostring(am)return
'WardrobeComponent - '..am.instance:GetFullName()end L.attached={}function L.new
(am,...)local U=setmetatable({},L)U=U:constructor(am,...)or U U:run()return U
end function L.constructor(am,U,V)al.constructor(am,U)am.id=V am.root=U:
WaitForChild('Main',5)am.occupant=U:WaitForChild('HiddenPlayer',5)am.quad=
Drawing.new'Quad'am._maid:add(am.quad,'Remove')end function L.onStart(am)L.
attached[am.instance]=am al.onStart(am)local U=am.quad U.Visible=false U.
Thickness=2 end function L.onRender(am,U)local V=am.quad if Toggles[
'esp.wardrobe.enabled'].Value then local W=am.root.CFrame local X=ai(t,(W*ae).
Position)local Y=ai(t,(W*af).Position)local Z=ai(t,(W*ah).Position)local _=ai(t,
(W*ag).Position)if ak(X.Z,Y.Z,Z.Z,_.Z)>0 then V.PointA=aj(Y.X,Y.Y)V.PointB=aj(X.
X,X.Y)V.PointC=aj(_.X,_.Y)V.PointD=aj(Z.X,Z.Y)V.Color=Options[
'esp.wardrobe.color'].Value if am.occupant.Value then V.Transparency=0.1 elseif
u.LatestRoom.Value-am.id>1 then V.Transparency=0.25 else V.Transparency=0.6 end
V.Visible=true else V.Visible=false end else V.Visible=false end end function L.
destroy(am)L.attached[am.instance]=nil al.destroy(am)end end do local ac=t.
WorldToViewportPoint local ad=Vector2.new local ae=ad(0,3)local af=q M=
setmetatable({},{__index=af})M.__index=M function M.__tostring(ag)return
'InteractableComponent - '..ag.instance:GetFullName()end M.attached={}function M
.new(ag,ah,...)local ai=setmetatable({},M)ai=ai:constructor(ag,ah,...)or ai ai:
run()return ai end function M.constructor(ag,ah,ai)af.constructor(ag,ah)ag.name=
ai ag.label=Drawing.new'Text'ag.circle=Drawing.new'Circle'ag.outline=Drawing.new
'Circle'ag._maid:add(ag.label,'Remove')ag._maid:add(ag.circle,'Remove')ag._maid:
add(ag.outline,'Remove')ag._maid:add(ah.AncestryChanged:Connect(function(aj,ak)
if ak==nil then ag:destroy()end end))end function M.onStart(ag)M.attached[ag.
instance]=ag af.onStart(ag)local ah,ai,aj=ag.label,ag.circle,ag.outline ah.Text=
ag.name ah.Size=18 ah.Center=true ah.Outline=true ah.Visible=false ai.Thickness=
1 ai.NumSides=6 ai.Radius=5 ai.Filled=true ai.Visible=false aj.Color=Color3.new(
)aj.Thickness=1.5 aj.NumSides=6 aj.Radius=5 aj.Filled=false aj.Visible=false aj.
ZIndex=2 end function M.onRender(ag,ah)local ai,aj,ak=ag.label,ag.circle,ag.
outline if ag:isVisualEnabled()then local al=ac(t,ag.instance.Position)local am=
al.Z>0 if am then local U=ad(al.X,al.Y)ai.Position=U+ae aj.Position=U ak.
Position=U local V=ag:getColor()ai.Color=V aj.Color=V end ai.Visible=am aj.
Visible=am ak.Visible=am else ai.Visible=false aj.Visible=false ak.Visible=false
end end function M.isVisualEnabled(ag)return Toggles['esp.interactable.enabled']
.Value end function M.getColor(ag)return Options['esp.interactable.color'].Value
end function M.destroy(ag)M.attached[ag.instance]=nil af.destroy(ag)end end do
local ac=M N=setmetatable({},{__index=ac})N.__index=N function N.__tostring(ad)
return'ObtainableComponent - '..ad.instance:GetFullName()end N.attached={}
function N.new(ad,ae,...)local af=setmetatable({},N)af=af:constructor(ad,ae,...)
or af af:run()return af end function N.constructor(ad,ae,af)ac.constructor(ad,ae
,af)end function N.onStart(ad)N.attached[ad.instance]=ad ac.onStart(ad)local ae,
af,ag=ad.label,ad.circle,ad.outline af.NumSides=5 ag.NumSides=5 end function N.
isVisualEnabled(ad)return Toggles['esp.obtainable.enabled'].Value end function N
.getColor(ad)return Options['esp.obtainable.color'].Value end function N.destroy
(ad)N.attached[ad.instance]=nil ac.destroy(ad)end end do local ac=N O=
setmetatable({},{__index=ac})O.__index=O function O.__tostring(ad)return
'GoldComponent - '..ad.instance:GetFullName()end function O.new(ad,...)local ae=
setmetatable({},O)ae=ae:constructor(ad,...)or ae ae:run()return ae end function
O.constructor(ad,ae)ac.constructor(ad,ae,'Gold')ad.denomination=0 end function O
.onStart(ad)ac.onStart(ad)ad:onDenominationChanged()ad.instance:
GetAttributeChangedSignal'GoldValue':Connect(function()ad:onDenominationChanged(
)end)end function O.onRender(ad,ae)ad.label.Text=Options['esp.gold.format'].
Value:gsub('{amount}',tostring(ad.denomination))ac.onRender(ad,ae)end function O
.onDenominationChanged(ad)ad.denomination=ad.instance.Parent:GetAttribute
'GoldValue'or 0 end function O.isVisualEnabled(ad)return Toggles[
'esp.gold.enabled'].Value and ad.denomination>=Options['esp.gold.minimum'].Value
end function O.getColor(ad)return Options['esp.gold.color'].Value end end do
local ac=function()return Toggles['auto-loot.enabled'].Value and Options[
'auto-loot.keybind']:GetState()end local ad=q P=setmetatable({},{__index=ad})P.
__index=P function P.__tostring(ae)return'RoomComponent - '..ae.instance:
GetFullName()end P.attached={}function P.new(ae,...)local af=setmetatable({},P)
af=af:constructor(ae,...)or af af:run()return af end function P.constructor(ae,
af)ad.constructor(ae,af)ae.id=tonumber(af.Name)ae.assets=af:WaitForChild(
'Assets',5)end function P.onStart(ae)P.attached[ae.instance]=ae ad.onStart(ae)if
ae.id==50 or ae.id==100 then task.defer(ae.onFigure,ae)end local af=ae.instance:
WaitForChild('RoomExit',5)if af then K.new(af,ae.id)end ae._maid:add(ae.instance
.DescendantAdded:Connect(function(ag)ae:onDescendant(ag)end))for ag,ah in
ipairs(ae.instance:GetDescendants())do task.defer(ae.onDescendant,ah)end end
function P.onDescendant(ae,af)local ag=af.Parent local ah=ag.Name local ai=af.
Name if ai=='Main'then if ah=='LeverForGate'then M.new(af,'Lever')elseif ah==
'Lighter'then N.new(af,'Lighter')elseif ah=='Vitamins'then N.new(af,'Vitamins')
elseif ah=='Lockpick'then N.new(af,'Lockpicks')elseif ah=='Bandage'then N.new(af
,'Bandages')elseif ah=='Battery'then N.new(af,'Batteries')elseif ah==
'CrucifixWall'then N.new(af,'Crucifix')elseif ah=='ChestBox'then M.new(af,
'Chest')elseif ah=='ChestBoxLocked'then M.new(af,'Chest [Locked]')end elseif ai
=='Handle'then if ah=='Candle'then N.new(af,'Candle')end elseif ai=='Base'then
if ah=='LiveHintBook'then N.new(af,'Book')elseif ah=='LiveBreakerPolePickup'then
N.new(af,'Fuse')elseif ah=='Snare'then J.new(ag)end elseif ai=='Lock'then if ah
=='Door'then M.new(af,'Lock')end elseif ah=='KeyObtain'then if ai=='Hitbox'then
N.new(af,'Key')end elseif ai=='Wardrobe'then L.new(af,ae.id)elseif ai==
'Toolshed'then L.new(af,ae.id)elseif ai=='Hitbox'then if ah=='GoldPile'then O.
new(af)end end local aj=D.attached do local ak=ai=='DrawerContainer'local al=ai
=='ChestBox'local am=ai=='RolltopContainer'if ak or al or am then local U=af:
WaitForChild('Main',4)local V if ak then V=af:WaitForChild('Knobs',2):
WaitForChild('ActivateEventPrompt',2)else V=af:WaitForChild(
'ActivateEventPrompt',2)end if U and V then local W=V.MaxActivationDistance+3
local X=V:GetAttribute'Interactions'while ae.running and X==nil do if ac()then
local Y=(U.Position-aj.root.Position).Magnitude if Y<=W then
fireproximityprompt(V)task.wait(0.1)end end X=V:GetAttribute'Interactions'task.
wait()end end end if ai=='Hitbox'and ah=='GoldPile'then local U=ag:WaitForChild
'LootPrompt'local V=U:GetAttribute'Interactions'local W=U.MaxActivationDistance+
3 while ae.running and V==nil do if ac()then local X=(af.Position-aj.root.
Position).Magnitude if X<=W then fireproximityprompt(U)task.wait(0.1)end end V=U
:GetAttribute'Interactions'task.wait()end end end end function P.onFigure(ae)
local af=ae.instance:WaitForChild('FigureSetup',5)I.new(af)end function P.
destroy(ae)P.attached[ae.instance]=nil ad.destroy(ae)end end m:SetWatermark
'Linoria Community (TerminalVibes)'m:Notify'Loading UI...'do local ac=m:
CreateWindow(g..' ('..h..')')do local ad=ac:AddTab'Gameplay'do local ae=ad:
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
end end do local ad=ac:AddTab'Blatant'do local ae=ad:AddLeftGroupbox'Auto Loot'
ae:AddToggle('auto-loot.enabled',{Text='Enabled',Default=false,Tooltip=
'Automatically loots items for you.'}):AddKeyPicker('auto-loot.keybind',{Text=
'Keybind',Default='F'})end do local ae=ad:AddLeftGroupbox'Entity Hooks'ae:
AddToggle('blatant.timothy.remove',{Text='Remove Timothy',Default=false,Tooltip=
[[Timothy will no longer jumpscare you (You will still take damage).]]})ae:
AddToggle('blatant.screech.remove',{Text='Remove Screech',Default=false,Tooltip=
'Screech will no longer spawn for you.'})end end do local ad=ac:AddTab'Visuals'
do local ae=ad:AddLeftTabbox'ESP'local af=ae:AddTab'Entity ESP'do af:AddToggle(
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
'https://discord.gg/8PATx7UKXZ'end}end do local ad=ac:AddTab'Settings'o:
SetLibrary(m)n:SetLibrary(m)o:SetFolder(i)n:SetFolder(i..'/'..j)n:
IgnoreThemeSettings()n:SetIgnoreIndexes{'MenuKeybind'}n:BuildConfigSection(ad)o:
ApplyToTab(ad)local ae=ad:AddLeftGroupbox'Menu'ae:AddButton('Unload',function()m
:Unload()end)ae:AddLabel'Menu bind':AddKeyPicker('MenuKeybind',{Default='End',
NoUI=true,Text='Menu keybind'})ae:AddToggle('Keybinds',{Text=
'Show Keybinds Menu',Default=true}):OnChanged(function()m.KeybindFrame.Visible=
Toggles.Keybinds.Value end)ae:AddToggle('Watermark',{Text='Show Watermark',
Default=true}):OnChanged(function()m:SetWatermarkVisibility(Toggles.Watermark.
Value)end)end end m:Notify'UI Built! [Right Ctrl or Right Shift]'n:
LoadAutoloadConfig()local ac=function()t=e.CurrentCamera or t end A:add(e:
GetPropertyChangedSignal'CurrentCamera':Connect(ac))local ad=function(ad)if ad.
Name=='Screech'then G.new(ad)end end A:add(t.ChildAdded:Connect(ad))local ae=
function(ae)local af=ae.Name if af=='RushMoving'or ae.Name=='AmbushMoving'then H
.new(ae)elseif af=='Eyes'then ab(Toggles['alerts.entity'].Value,{message=
'Eyes spawned, look away from it!',audio=true,duration=5})end end A:add(e.
ChildAdded:Connect(ae))local af=function(af)P.new(af)end A:add(e.CurrentRooms.
ChildAdded:Connect(af))for ag,ah in ipairs(e.CurrentRooms:GetChildren())do af(ah
)end local ai=function()if Toggles['blatant.screech.remove'].Value then ab(
Toggles['alerts.debug'],{message='Screech was eaten by TerminalVibes',duration=4
})task.wait(1)return v.Screech:FireServer(true)end ab(Toggles['alerts.entity'].
Value,{message='Screech spawned, turn around and look at it!',audio=true,
duration=5})end A:add(v.Screech.OnClientEvent:Connect(ai))local aj=function(aj,
ak)if aj and ak then x[aj]=tostring(ak)end end A:add(v.PadlockHint.OnClientEvent
:Connect(aj))local ak=function(...)B:destroy()if not Toggles[
'gameplay.heartbeat.enabled'].Value then return end local ak=s:WaitForChild(
'MainUI',1):WaitForChild('MainFrame',1):WaitForChild('Heartbeat',1)local al=ak:
WaitForChild('Heart',1)assert(ak and al,'Heartbeat frame not found')local am=al.
AbsolutePosition.X B:add(al.ChildAdded:Connect(function(U)if U.Name=='LiveHalf'
then local V=U.Image=='rbxassetid://8428304451'local W=math.random(10,25)local X
=0 repeat c.RenderStepped:Wait()X=math.abs(U.AbsolutePosition.X-am)until X<=W
local Y=V and Enum.KeyCode.Q or Enum.KeyCode.E f:SendKeyEvent(true,Y,false,game)
task.wait()f:SendKeyEvent(false,Y,false,game)ab(Toggles['alerts.debug'].Value,{
message='Simulated Heartbeat input: '..Y.Name,duration=2.5})end end))B:add(ak:
GetPropertyChangedSignal'Visible':Connect(function()if not ak.Visible then B:
destroy()end end))end A:add(v.ClutchHeartbeat.OnClientEvent:Connect(ak))local al
=function(al)for am,U in ipairs(Q)do for V,W in pairs(U.attached)do W:onTick(al)
end end end local am=function(am)for U,V in ipairs(R)do for W,X in pairs(V.
attached)do X:onRender(am)end end end local U=function(U,V)for W,X in ipairs(S)
do for Y,Z in pairs(X.attached)do Z:onPhysics(U,V)end end local Y=D.attached if
Y then Y:onPhysics(U,V)end end A:add(c.Heartbeat:Connect(al))A:add(c.
RenderStepped:Connect(am))A:add(c.Stepped:Connect(U))Options[
'gameplay.parser.keybind']:OnClick(function()if u.LatestRoom.Value==50 then
local V=''for W=1,5 do local X=x[y[W]]V=V..(X~=nil and X or'_')end ab(Toggles[
'gameplay.parser.enabled'].Value,{message='[Code Parser]: '..V,audio=false,
duration=7.5})end end)Options['gameplay.breaker.keybind']:OnClick(function()
local V=''for W=1,#z do local X,Y=unpack(z[W])if Y then V=V..tostring(X)..' 'end
end ab(Toggles['gameplay.breaker.enabled'].Value,{message='[Breaker Code]: '..V,
audio=false,duration=7.5})end)Toggles['blatant.timothy.remove']:OnChanged(
function()local V={}for W,X in ipairs(getconnections(v.SpiderJumpscare.
OnClientEvent))do local Y=X.Function if Y then local Z=getfenv(Y).script if Z
and Z.Name=='RemoteListener'then table.insert(V,X)end end end if Toggles[
'blatant.screech.remove'].Value then for Y,Z in ipairs(V)do Z:Disable()end else
for Y,Z in ipairs(V)do Z:Enable()end end end)Toggles['blatant.screech.remove']:
OnChanged(function()local V={}for W,X in ipairs(getconnections(v.Screech.
OnClientEvent))do local Y=X.Function if Y then local Z=getfenv(Y).script if Z
and Z.Name=='RemoteListener'then table.insert(V,X)end end end if Toggles[
'blatant.screech.remove'].Value then for Y,Z in ipairs(V)do Z:Disable()end else
for Y,Z in ipairs(V)do Z:Enable()end end end)m:OnUnload(function()A:destroy()
getgenv()[j..h]=nil local V={E,F,G,H,I,J,K,L,M,N,P}for W,X in ipairs(V)do for Y,
Z in pairs(X.attached)do Z:destroy()end end if D.attached then D.attached:
destroy()end end)task.defer(function()local V repeat task.wait(0.5)for W,X in
pairs(getconnections(v.EngageMinigame.OnClientEvent))do local Y=X.Function if Y
then local Z=getfenv(Y).script if Z.Name=='MinigameHandler'then local _=debug.
getupvalue(Y,1)if type(_)=='function'then V=_ end end end if W%2000==0 then task
.wait()end end until V~=nil local W repeat task.wait()W=debug.getupvalue(V,7)
until W~=nil local X=(syn and syn.set_thread_identity)or setidentity debug.
setupvalue(V,7,function(Y,...)local Z=W(Y,...)z=Y task.delay(0.1,function()X(7)
local _=''for an=1,#z do local ao,ap=unpack(z[an])ab(true,{message=tostring(ao)
..' = '..tostring(ap)})if ap then _=_..tostring(ao)..' 'end end ab(Toggles[
'gameplay.breaker.enabled'].Value,{message='[Breaker Code]: '.._,audio=false,
duration=7.5})X(2)end)return Z end)A:add(function()debug.setupvalue(V,7,W)end)
end)table.insert(R,E)table.insert(R,G)table.insert(R,H)table.insert(R,I)table.
insert(R,J)table.insert(R,K)table.insert(R,L)table.insert(R,M)w.Name='Main'w.
SoundId='rbxassetid://6026984224'w.Volume=6 w.Parent=d do local an=game.PlaceId
local ao=game.PlaceVersion local ap=k[an]if ao>ap then m:Notify
[[Game has been updated! Please be careful when using this script.]]m:Notify
'The place ID and Version has been copied to your clipboard.'setclipboard('['..
tostring(an)..'] = '..tostring(ao)..',')end end return m:Notify('['..g..
'] Loaded! ('..h..')')
