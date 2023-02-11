local a=game:GetService'Lighting'local b=game:GetService'Players'local c=game:
GetService'ReplicatedStorage'local d=game:GetService'RunService'local e=game:
GetService'SoundService'local f=game:GetService'Workspace'local g=game:
GetService'VirtualInputManager'local h='Doors'local i='Hotel v5.4'local j=
'TerminalVibes/doors'local k='hotel'local l={[6839171747]=5938}local m={['Knobs'
]=true,['ChestBox']=true,['RolltopContainer']=true}local n={['Candle']=true,[
'Lighter']=true,['Flashlight']=true,['Vitamins']=true,['Lockpick']=true,[
'Crucifix']=true,['CrucifixWall']=true,['SkeletonKey']=true,['PickupItem']=true}
local o={['Candle']='Candle',['Lighter']='Lighter',['Flashlight']='Flashlight',[
'Vitamins']='Vitamins',['Lockpick']='Lockpick',['Crucifix']='Crucifix',[
'CrucifixWall']='Crucifix',['SkeletonKey']='Skeleton Key',['PickupItem']=
'Library Paper'}local p={['Battery']=true,['Bandage']=true}local q={['Battery']=
'Battery',['Bandage']='Bandage'}do local r=game.PlaceId local s=game.
PlaceVersion local t=l[r]if not t then warn
'Script does not support this place instance.'warn
[[The PlaceID and version has been set to your clipboard. Please report this to the developer.]]
return setclipboard('['..tostring(r)..'] = '..tostring(s)..',')end end do local
r=k..i if getgenv()[r]then return end getgenv()[r]=true end local r=
[[https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/]]local s=
loadstring(game:HttpGet(r..'Library.lua'))()local t=loadstring(game:HttpGet(r..
'addons/SaveManager.lua'))()local u=loadstring(game:HttpGet(r..
'addons/ThemeManager.lua'))()local v do local w,x=type,typeof v=setmetatable({},
{__tostring=function()return'Bin'end})v.__index=v function v.new(...)local y=
setmetatable({},v)return y:constructor(...)or y end function v.constructor(y)end
function v.add(y,z,A)local B={item=z,method=A}if y.head==nil then y.head=B end
if y.tail then y.tail.next=B end y.tail=B return z end function v.destroy(y)
while y.head do local z=y.head.item local A=y.head.method if A then z[A](z)
elseif w(z)=='function'then z()elseif x(z)=='RBXScriptConnection'then z:
Disconnect()elseif w(z)=='thread'then task.cancel(z)elseif z.destroy~=nil then z
:destroy()elseif z.Destroy~=nil then z:Destroy()end y.head=y.head.next end end
function v.isEmpty(y)return y.head==nil end end local w do w={}w.__index=w
function w.__tostring(x)return'BaseComponent - '..x.instance:GetFullName()end
local x,y,z=setmetatable,assert,task.defer function w.new(A,...)local B=x({},w)B
=B:constructor(A,...)or B B:run()return B end function w.constructor(A,B,...)A.
instance=B A.running=false A.destructed=false A._maid=v.new()A._maid:add(B.
Destroying:Connect(function()if not A.destructed then A:destroy()end end))end
function w.onStart(A)end function w.run(A)y(not A.running,'['..A:__tostring()..
'] is already running')z(function()A.running=true if not A.destructed then A:
onStart()end end)end function w.destroy(A)y(not A.destructed,'['..A:__tostring()
..'] is already destroyed')A.running=false A.destructed=true A._maid:destroy()
end end local x=b.LocalPlayer local y=x:WaitForChild'PlayerGui'local z=f.
CurrentCamera local A=c:WaitForChild'GameData'local B={}do local C=c:
WaitForChild'EntityInfo'local D={PadlockHint=C:WaitForChild'PadlockHint',
EngageMinigame=C:WaitForChild'EngageMinigame',ClutchHeartbeat=C:WaitForChild
'ClutchHeartbeat',Screech=C:WaitForChild'Screech',SpiderJumpscare=C:WaitForChild
'SpiderJumpscare'}for E,F in pairs(D)do B[E]=F end end local C=Instance.new
'Sound'local D={}local E={}local F={}local G=v.new()local H=v.new()local I local
J local K local L local M local N local O local P local Q local R local S local
T local U local V local W={}local X={}local Y={}local Z={}local aa=function(_,aa
)local ab=0.12 local ac=v.new()local ad=Drawing.new'Text'local ae=Drawing.new
'Square'local af=Drawing.new'Square'ac:add(ad,'Remove')ac:add(ae,'Remove')ac:
add(af,'Remove')ad.Text=_ or''ad.Color=Color3.fromRGB(255,255,255)ad.ZIndex=3 ae
.Color=Color3.fromRGB(25,25,25)ae.Filled=true ae.Thickness=0 ae.Size=ad.
TextBounds+Vector2.new(10,8)ae.ZIndex=2 af.Color=Color3.fromRGB(0,100,255)af.
Filled=true af.Thickness=0 af.Size=Vector2.new(2,24)af.ZIndex=1 local ag=0 for
ah in pairs(Z)do ag=math.max(ag,ah+1)end Z[ag]=ac local ai=0 local aj,ak,al=
pairs(Z)ac:add(d.RenderStepped:Connect(function(am)ai+=am local an,ao=aj(ak,al)
local ap=an or 0 while an~=nil do ap=math.min(ap,an)an,ao=aj(ak,an)end local aq=
ag-ap local ar=5 if ai<=ab then ar=-(ae.Size.X+2)+(ai/ab)*(ae.Size.X+7)elseif ai
>=aa-ab then ar=5-(ai-(aa-ab))/ab*(ae.Size.X+7)end local as=Vector2.new(ar,40+(
aq*25))ad.Position=as+Vector2.new(7,4)ae.Position=as+Vector2.new(2,0)af.Position
=as end))ac:add(d.RenderStepped:Once(function(am)ad.Visible=true ae.Visible=true
af.Visible=true end))task.delay(aa,function()ac:destroy()Z[ag]=nil end)end local
ab=function(ab,ac)if ab and Toggles['alerts.enabled'].Value then local ad={
message=ac.message or'',audio=ac.audio or false,duration=ac.duration or 5}if
Toggles['alerts.drawing'].Value then aa(ad.message,ad.duration)else s:Notify(ad.
message,ad.duration)end if ad.audio and Toggles['alerts.audio.enabled'].Value
then C.TimePosition=0.25 C:Play()end end end local ac=function(ac)local ad={}for
ae,af in ipairs(getconnections(B.Screech.OnClientEvent))do local ag=af.Function
if ag then local ah=getfenv(ag).script if ah and ah.Name=='RemoteListener'then
table.insert(ad,af)end end end if ac then for ag,ah in ipairs(ad)do ah:Disable()
end else for ag,ah in ipairs(ad)do ah:Enable()end end end local ad=function(ad)
local ae={}for af,ag in ipairs(getconnections(B.SpiderJumpscare.OnClientEvent))
do local ah=ag.Function if ah then local ai=getfenv(ah).script if ai and ai.Name
=='RemoteListener'then table.insert(ae,ag)end end end if ad then for ah,ai in
ipairs(ae)do ai:Disable()end else for ah,ai in ipairs(ae)do ai:Enable()end end
end do local ae=w I=setmetatable({},{__index=ae})I.__index=I function I.
__tostring(af)return'CharacterComponent - '..af.instance:GetFullName()end I.
attached={}function I.new(af,...)local ag=setmetatable({},I)ag=ag:constructor(af
,...)or ag ag:run()return ag end function I.constructor(af,ag)ae.constructor(af,
ag)af.client=L.attached[b:GetPlayerFromCharacter(ag)]af.root=ag:WaitForChild(
'HumanoidRootPart',5)af.humanoid=ag:WaitForChild('Humanoid',5)assert(af.client~=
nil,'['..af:__tostring().."] is not a client's character")assert(af.root~=nil,
'['..af:__tostring()..'] is missing a HumanoidRootPart')assert(af.humanoid~=nil,
'['..af:__tostring()..'] is missing a Humanoid')af._maid:add(ag.AncestryChanged:
Connect(function(ah,ai)if ai==nil then af:destroy()end end))end function I.
onStart(af)I.attached[af.instance]=af ae.onStart(af)end function I.destroy(af)I.
attached[af.instance]=nil ae.destroy(af)end end do local ae=Vector3.new(1,0,1)
local af=I J=setmetatable({},{__index=af})J.__index=J function J.__tostring(ag)
return'AvatarComponent - '..ag.instance:GetFullName()end J.attached=nil function
J.new(ag,...)local ah=setmetatable({},J)ah=ah:constructor(ag,...)or ah ah:run()
return ah end function J.constructor(ag,ah)af.constructor(ag,ah)ag.parts={ag.
_maid:add(Instance.new'Part'),ag._maid:add(Instance.new'Part'),ag._maid:add(
Instance.new'Part'),ag._maid:add(Instance.new'Part')}ag.lights={ag._maid:add(
Instance.new'PointLight'),ag._maid:add(Instance.new'PointLight'),ag._maid:add(
Instance.new'PointLight'),ag._maid:add(Instance.new'PointLight'),ag._maid:add(
Instance.new'PointLight')}end function J.onStart(ag)J.attached=ag af.onStart(ag)
for ah,ai in ipairs(ag.lights)do ai.Enabled=false ai.Range=60 ai.Color=Color3.
new(1,1,1)ai.Shadows=false end for aj,ak in ipairs(ag.parts)do local al=ak local
am=ag._maid:add(Instance.new'WeldConstraint')local an=ag.lights[aj]al.Size=
Vector3.zero al.Massless=true al.CanCollide=false al.CanTouch=false al.CanQuery=
false am.Part0=ag.root am.Part1=al local ao=(aj-1)*math.pi/2 al.Position=ag.root
.Position+Vector3.new(math.cos(ao)*25,5,math.sin(ao)*25)am.Parent=al an.Parent=
al al.Parent=f end ag.lights[5].Parent=ag.root while ag.running do for al,am in
ipairs(ag.lights)do am.Enabled=Toggles['character.glow.enabled'].Value am.
Brightness=Options['character.glow.brightness'].Value/50 end task.wait(0.3)end
end function J.onPhysics(ag,aj,ak)local al=Options['character.sprint.speed'].
Value if al>0 and Toggles['character.sprint.enabled'].Value and Options[
'character.sprint.keybind']:GetState()then local am=ag.humanoid.MoveDirection*ae
if am.Magnitude>0 then ag.instance:TranslateBy(am*al*ak)end end end function J.
destroy(ag)J.attached=nil af.destroy(ag)end end do local ae=Vector3.new(5,7,0)
local af=Vector3.new(0,-0.25,0)local ag,aj,ak,al=CFrame.new(af.X-(ae.X/2),af.Y+(
ae.Y/2),af.Z),CFrame.new(af.X+(ae.X/2),af.Y+(ae.Y/2),af.Z),CFrame.new(af.X-(ae.X
/2),af.Y-(ae.Y/2),af.Z),CFrame.new(af.X+(ae.X/2),af.Y-(ae.Y/2),af.Z)local am=z.
WorldToViewportPoint local an=Vector2.new local ao=math.min local ap=I K=
setmetatable({},{__index=ap})K.__index=K function K.__tostring(aq)return
'FriendComponent - '..aq.instance:GetFullName()end K.attached={}function K.new(
aq,...)local ar=setmetatable({},K)ar=ar:constructor(aq,...)or ar ar:run()return
ar end function K.constructor(aq,ar)ap.constructor(aq,ar)aq.quad=Drawing.new
'Quad'aq._maid:add(aq.quad,'Remove')end function K.onStart(aq)K.attached[aq.
instance]=aq ap.onStart(aq)local ar=aq.quad ar.Visible=false ar.Thickness=1 ar.
Transparency=0.75 end function K.onRender(aq,ar)local as=aq.quad if Toggles[
'esp.player.enabled'].Value then local _=aq.root.CFrame local at=am(z,(_*ag).
Position)local au=am(z,(_*aj).Position)local av=am(z,(_*al).Position)local aw=
am(z,(_*ak).Position)if ao(at.Z,au.Z,av.Z,aw.Z)>0 then as.PointA=an(au.X,au.Y)as
.PointB=an(at.X,at.Y)as.PointC=an(aw.X,aw.Y)as.PointD=an(av.X,av.Y)as.Color=
Options['esp.player.color'].Value as.Visible=true else as.Visible=false end else
as.Visible=false end end function K.destroy(aq)K.attached[aq.instance]=nil ap.
destroy(aq)end end do local ae=w L=setmetatable({},{__index=ae})L.__index=L
function L.__tostring(af)return'ClientComponent - '..af.instance:GetFullName()
end L.attached={}function L.new(af,...)local ag=setmetatable({},L)ag=ag:
constructor(af,...)or ag ag:run()return ag end function L.constructor(af,ag)ae.
constructor(af,ag)end function L.onStart(af)L.attached[af.instance]=af ae.
onStart(af)af._maid:add(af.instance.CharacterAdded:Connect(function(ag)af:
onCharacter(ag)end))af._maid:add(af.instance.Backpack.ChildAdded:Connect(
function(ag)if ag:IsA'Tool'then af:onTool(ag)end end))task.defer(function()local
ag=af.instance.Character if ag then af:onCharacter(ag)end end)task.defer(
function()for ag,aj in ipairs(af.instance.Backpack:GetChildren())do if aj:IsA
'Tool'then af:onTool(aj)end end end)end function L.onCharacter(af,ag)if af.
instance==x then af.character=J.new(ag)else af.character=K.new(ag)end end
function L.onTool(af,ag)if ag.Name=='LibraryHintPaper'then local aj=ag:
WaitForChild('UI',1)if aj then local ak={}for al=1,5 do local am=aj:
FindFirstChild(tostring(al))if am then local an=am.ImageRectOffset.X/50 ak[al]=
an end end E=ak end end end function L.destroy(af)L.attached[af.instance]=nil ae
.destroy(af)end local af=function(af)L.new(af)end b.PlayerAdded:Connect(af)for
ag,aj in ipairs(b:GetPlayers())do task.defer(af,aj)end end do local ae=z.
WorldToViewportPoint local af,ag,aj=Vector2.new,Vector3.new,CFrame.Angles local
ak=w M=setmetatable({},{__index=ak})M.__index=M function M.__tostring(al)return
'ScreechComponent - '..al.instance:GetFullName()end M.attached={}function M.new(
al,...)local am=setmetatable({},M)am=am:constructor(al,...)or am am:run()return
am end function M.constructor(al,am)ak.constructor(al,am)al.root=am:WaitForChild
'Root'al.line=Drawing.new'Line'al.outline=Drawing.new'Line'al._maid:add(al.line,
'Remove')al._maid:add(al.outline,'Remove')end function M.onStart(al)M.attached[
al.instance]=al ak.onStart(al)local am,an=al.line,al.outline am.Visible=false am
.Color=Options['esp.screech.color'].Value am.ZIndex=1 am.Thickness=1 an.Visible=
false an.Color=Color3.new()an.ZIndex=0 an.Thickness=2 end function M.onRender(al
,am)local an=Toggles['esp.screech.enabled'].Value local ao,ap=al.line,al.outline
if an then local aq=al.root.Position local ar=ae(z,aq)if ar.Z<0 then local as=z.
CFrame:PointToObjectSpace(aq)local at=math.atan2(as.Y,as.X)+math.pi as=aj(0,0,at
):VectorToWorldSpace((aj(0,math.rad(89.9),0):VectorToWorldSpace(ag(0,0,-1))))ar=
ae(z,z.CFrame:PointToWorldSpace(as))end local as=z.ViewportSize ao.From=af(as.X/
2,as.Y*0.75)ao.To=af(ar.X,ar.Y)ap.From=ao.From ap.To=ao.To end ao.Visible=an ap.
Visible=an end function M.destroy(al)M.attached[al.instance]=nil ak.destroy(al)
end end do local ae=Vector3.new(4,6,0)local af=Vector3.new(0,0,0)local ag,aj,ak,
al=CFrame.new(af.X-(ae.X/2),af.Y+(ae.Y/2),af.Z),CFrame.new(af.X+(ae.X/2),af.Y+(
ae.Y/2),af.Z),CFrame.new(af.X-(ae.X/2),af.Y-(ae.Y/2),af.Z),CFrame.new(af.X+(ae.X
/2),af.Y-(ae.Y/2),af.Z)local am=z.WorldToViewportPoint local an=Vector2.new
local ao=math.min local ap=w N=setmetatable({},{__index=ap})N.__index=N function
N.__tostring(aq)return'RushComponent - '..aq.instance:GetFullName()end N.
attached={}function N.new(aq,...)local ar=setmetatable({},N)ar=ar:constructor(aq
,...)or ar ar:run()return ar end function N.constructor(aq,ar)ap.constructor(aq,
ar)aq.root=ar.PrimaryPart or ar:WaitForChild('RushNew',5)assert(aq.root,'['..aq:
__tostring()..'] is missing a root part!')aq.name=aq.instance.Name=='RushMoving'
and'Rush'or'Ambush'aq.quad=Drawing.new'Quad'aq._maid:add(aq.quad,'Remove')end
function N.onStart(aq)N.attached[aq.instance]=aq ap.onStart(aq)local ar=aq.quad
ar.Visible=false ar.Thickness=1 ar.Color=aq.name=='Rush'and Options[
'esp.rush.rush-color'].Value or Options['esp.rush.ambush-color'].Value task.
delay(0.5,function()local as=(J.attached.root.Position-aq.root.Position).
Magnitude if as<=750 then ab(Toggles['alerts.entity'].Value,{message=aq.name==
'Rush'and'Rush spawned, hide in a Wardrobe or get behind cover!'or
[[Ambush spawned, hide in a Wardrobe or get behind cover! Ambush can return up to 4 times.]]
,audio=true,duration=10})else aq:destroy()end end)end function N.onRender(aq,ar)
local as=aq.quad if Toggles['esp.rush.enabled'].Value then local at=aq.root.
CFrame local au=am(z,(at*ag).Position)local av=am(z,(at*aj).Position)local aw=
am(z,(at*al).Position)local _=am(z,(at*ak).Position)if ao(au.Z,av.Z,aw.Z,_.Z)>0
then as.PointA=an(av.X,av.Y)as.PointB=an(au.X,au.Y)as.PointC=an(_.X,_.Y)as.
PointD=an(aw.X,aw.Y)as.Visible=true else as.Visible=false end else as.Visible=
false end end function N.destroy(aq)N.attached[aq.instance]=nil ap.destroy(aq)
end end do local ae=Vector3.new(6,13,0)local af=Vector3.new(0,-1,0)local ag,aj,
ak,al=CFrame.new(af.X-(ae.X/2),af.Y+(ae.Y/2),af.Z),CFrame.new(af.X+(ae.X/2),af.Y
+(ae.Y/2),af.Z),CFrame.new(af.X-(ae.X/2),af.Y-(ae.Y/2),af.Z),CFrame.new(af.X+(ae
.X/2),af.Y-(ae.Y/2),af.Z)local am=z.WorldToViewportPoint local an=Vector2.new
local ao=math.min local ap=w O=setmetatable({},{__index=ap})O.__index=O function
O.__tostring(aq)return'FigureComponent - '..aq.instance:GetFullName()end O.
attached={}function O.new(aq,...)local ar=setmetatable({},O)ar=ar:constructor(aq
,...)or ar ar:run()return ar end function O.constructor(aq,ar)ap.constructor(aq,
ar)aq.ragdoll=ar:WaitForChild('FigureRagdoll',2.5)assert(aq.ragdoll~=nil,'['..aq
:__tostring()..'] is missing its ragdoll!')aq.root=aq.ragdoll:WaitForChild(
'Root',2.5)assert(aq.root~=nil,'['..aq:__tostring()..
'] is missing its root part!')aq.quad=Drawing.new'Quad'aq._maid:add(aq.quad,
'Remove')end function O.onStart(aq)O.attached[aq.instance]=aq ap.onStart(aq)
local ar=aq.quad ar.Visible=false ar.Thickness=2 end function O.onRender(aq,ar)
local as=aq.quad if Toggles['esp.figure.enabled'].Value then local at=aq.root.
CFrame local au=am(z,(at*ag).Position)local av=am(z,(at*aj).Position)local aw=
am(z,(at*al).Position)local _=am(z,(at*ak).Position)if ao(au.Z,av.Z,aw.Z,_.Z)>0
then as.PointA=an(av.X,av.Y)as.PointB=an(au.X,au.Y)as.PointC=an(_.X,_.Y)as.
PointD=an(aw.X,aw.Y)as.Color=Options['esp.figure.color'].Value as.Visible=true
else as.Visible=false end else as.Visible=false end end function O.destroy(aq)O.
attached[aq.instance]=nil ap.destroy(aq)end end do local ae=z.
WorldToViewportPoint local af=Vector2.new local ag,aj,ak=af(-8,-6),af(8,-6),af(0
,8)local al=w P=setmetatable({},{__index=al})P.__index=P function P.__tostring(
am)return'SnareComponent - '..am.instance:GetFullName()end P.attached={}function
P.new(am,...)local an=setmetatable({},P)an=an:constructor(am,...)or an an:run()
return an end function P.constructor(am,an)al.constructor(am,an)am.root=an:
WaitForChild('Base',2.5)am.triangle=Drawing.new'Triangle'am.outline=Drawing.new
'Triangle'am._maid:add(am.triangle,'Remove')am._maid:add(am.outline,'Remove')end
function P.onStart(am)P.attached[am.instance]=am al.onStart(am)local an,ao=am.
triangle,am.outline an.Thickness=1 an.Filled=true an.Visible=false ao.Color=
Color3.new()ao.Thickness=1.5 ao.Filled=false ao.Visible=false ao.ZIndex=2 end
function P.onRender(am,an)local ao,ap=am.triangle,am.outline if Toggles[
'esp.snare.enabled'].Value then local aq=ae(z,am.root.Position)local ar=aq.Z>0
if ar then local as=af(aq.X,aq.Y)ao.PointA=as+ag ao.PointB=as+aj ao.PointC=as+ak
ap.PointA=ao.PointA ap.PointB=ao.PointB ap.PointC=ao.PointC ao.Color=Options[
'esp.snare.color'].Value end ao.Visible=ar ap.Visible=ar else ao.Visible=false
ap.Visible=false end end function P.destroy(am)P.attached[am.instance]=nil al.
destroy(am)end end do local ae=CFrame.new(0,0,1)local af=z.WorldToViewportPoint
local ag=Vector2.new local aj=math.min local ak=w Q=setmetatable({},{__index=ak}
)Q.__index=Q function Q.__tostring(al)return'DoorComponent - '..al.instance:
GetFullName()end Q.attached={}function Q.new(al,...)local am=setmetatable({},Q)
am=am:constructor(al,...)or am am:run()return am end function Q.constructor(al,
am,an)ak.constructor(al,am)al.id=an or 0 local ao=am.Size*0.5 local ap=am.CFrame
*ae al.tl=(ap*CFrame.new(ao.X,ao.Y,0)).Position al.tr=(ap*CFrame.new(-ao.X,ao.Y,
0)).Position al.bl=(ap*CFrame.new(ao.X,-ao.Y,0)).Position al.br=(ap*CFrame.new(-
ao.X,-ao.Y,0)).Position al.quad=Drawing.new'Quad'al._maid:add(al.quad,'Remove')
end function Q.onStart(al)Q.attached[al.instance]=al ak.onStart(al)local am=al.
quad am.Visible=false am.Thickness=2 end function Q.onRender(al,am)local an=al.
quad if Toggles['esp.door.enabled'].Value then local ao=af(z,al.tl)local ap=af(z
,al.tr)local aq=af(z,al.br)local ar=af(z,al.bl)if aj(ao.Z,ap.Z,aq.Z,ar.Z)>0 then
an.PointA=ag(ap.X,ap.Y)an.PointB=ag(ao.X,ao.Y)an.PointC=ag(ar.X,ar.Y)an.PointD=
ag(aq.X,aq.Y)local as=al.id-A.LatestRoom.Value if as==0 then an.Color=Options[
'esp.door.target-color'].Value else an.Color=Options['esp.door.default-color'].
Value if as<0 then an.Transparency=0.5 else an.Transparency=1 end end an.Visible
=true else an.Visible=false end else an.Visible=false end end function Q.destroy
(al)Q.attached[al.instance]=nil ak.destroy(al)end end do local ae=Vector3.new(
6.4,9.5,0)local af=Vector3.new(0,0,-0.5)local ag,aj,ak,al=CFrame.new(af.X-(ae.X/
2),af.Y+(ae.Y/2),af.Z),CFrame.new(af.X+(ae.X/2),af.Y+(ae.Y/2),af.Z),CFrame.new(
af.X-(ae.X/2),af.Y-(ae.Y/2),af.Z),CFrame.new(af.X+(ae.X/2),af.Y-(ae.Y/2),af.Z)
local am=z.WorldToViewportPoint local an=Vector2.new local ao=math.min local ap=
w R=setmetatable({},{__index=ap})R.__index=R function R.__tostring(aq)return
'WardrobeComponent - '..aq.instance:GetFullName()end R.attached={}function R.new
(aq,...)local ar=setmetatable({},R)ar=ar:constructor(aq,...)or ar ar:run()return
ar end function R.constructor(aq,ar,as)ap.constructor(aq,ar)aq.id=as aq.root=ar:
WaitForChild('Main',5)aq.occupant=ar:WaitForChild('HiddenPlayer',5)aq.quad=
Drawing.new'Quad'aq._maid:add(aq.quad,'Remove')end function R.onStart(aq)R.
attached[aq.instance]=aq ap.onStart(aq)local ar=aq.quad ar.Visible=false ar.
Thickness=2 end function R.onRender(aq,ar)local as=aq.quad if Toggles[
'esp.wardrobe.enabled'].Value then local at=aq.root.CFrame local au=am(z,(at*ag)
.Position)local av=am(z,(at*aj).Position)local aw=am(z,(at*al).Position)local _=
am(z,(at*ak).Position)if ao(au.Z,av.Z,aw.Z,_.Z)>0 then as.PointA=an(av.X,av.Y)as
.PointB=an(au.X,au.Y)as.PointC=an(_.X,_.Y)as.PointD=an(aw.X,aw.Y)as.Color=
Options['esp.wardrobe.color'].Value if aq.occupant.Value then as.Transparency=
0.1 elseif A.LatestRoom.Value-aq.id>1 then as.Transparency=0.25 else as.
Transparency=0.6 end as.Visible=true else as.Visible=false end else as.Visible=
false end end function R.destroy(aq)R.attached[aq.instance]=nil ap.destroy(aq)
end end do local ae=z.WorldToViewportPoint local af=Vector2.new local ag=af(0,3)
local aj=w S=setmetatable({},{__index=aj})S.__index=S function S.__tostring(ak)
return'InteractableComponent - '..ak.instance:GetFullName()end S.attached={}
function S.new(ak,al,...)local am=setmetatable({},S)am=am:constructor(ak,al,...)
or am am:run()return am end function S.constructor(ak,al,am)aj.constructor(ak,al
)ak.name=am ak.label=Drawing.new'Text'ak.circle=Drawing.new'Circle'ak.outline=
Drawing.new'Circle'ak._maid:add(ak.label,'Remove')ak._maid:add(ak.circle,
'Remove')ak._maid:add(ak.outline,'Remove')ak._maid:add(al.AncestryChanged:
Connect(function(an,ao)if ao==nil then ak:destroy()end end))end function S.
onStart(ak)S.attached[ak.instance]=ak aj.onStart(ak)local al,am,an=ak.label,ak.
circle,ak.outline al.Text=ak.name al.Size=18 al.Center=true al.Outline=true al.
Visible=false am.Thickness=1 am.NumSides=6 am.Radius=5 am.Filled=true am.Visible
=false an.Color=Color3.new()an.Thickness=1.5 an.NumSides=6 an.Radius=5 an.Filled
=false an.Visible=false an.ZIndex=2 end function S.onRender(ak,al)local am,an,ao
=ak.label,ak.circle,ak.outline if ak:isVisualEnabled()then local ap=ae(z,ak.
instance.Position)local aq=ap.Z>0 if aq then local ar=af(ap.X,ap.Y)am.Position=
ar+ag an.Position=ar ao.Position=ar local as=ak:getColor()am.Color=as an.Color=
as end am.Visible=aq an.Visible=aq ao.Visible=aq else am.Visible=false an.
Visible=false ao.Visible=false end end function S.isVisualEnabled(ak)return
Toggles['esp.interactable.enabled'].Value end function S.getColor(ak)return
Options['esp.interactable.color'].Value end function S.destroy(ak)S.attached[ak.
instance]=nil aj.destroy(ak)end end do local ae=S T=setmetatable({},{__index=ae}
)T.__index=T function T.__tostring(af)return'ObtainableComponent - '..af.
instance:GetFullName()end T.attached={}function T.new(af,ag,...)local aj=
setmetatable({},T)aj=aj:constructor(af,ag,...)or aj aj:run()return aj end
function T.constructor(af,ag,aj)ae.constructor(af,ag,aj)end function T.onStart(
af)T.attached[af.instance]=af ae.onStart(af)local ag,aj,ak=af.label,af.circle,af
.outline aj.NumSides=5 ak.NumSides=5 end function T.isVisualEnabled(af)return
Toggles['esp.obtainable.enabled'].Value end function T.getColor(af)return
Options['esp.obtainable.color'].Value end function T.destroy(af)T.attached[af.
instance]=nil ae.destroy(af)end end do local ae=T U=setmetatable({},{__index=ae}
)U.__index=U function U.__tostring(af)return'GoldComponent - '..af.instance:
GetFullName()end function U.new(af,...)local ag=setmetatable({},U)ag=ag:
constructor(af,...)or ag ag:run()return ag end function U.constructor(af,ag)ae.
constructor(af,ag,'Gold')af.denomination=0 end function U.onStart(af)ae.onStart(
af)af:onDenominationChanged()af.instance:GetAttributeChangedSignal'GoldValue':
Connect(function()af:onDenominationChanged()end)end function U.onRender(af,ag)af
.label.Text=Options['esp.gold.format'].Value:gsub('{amount}',tostring(af.
denomination))ae.onRender(af,ag)end function U.onDenominationChanged(af)af.
denomination=af.instance.Parent:GetAttribute'GoldValue'or 0 end function U.
isVisualEnabled(af)return Toggles['esp.gold.enabled'].Value and af.denomination
>=Options['esp.gold.minimum'].Value end function U.getColor(af)return Options[
'esp.gold.color'].Value end end do local ae=function()return Toggles[
'interact.enabled'].Value and Options['interact.keybind']:GetState()end local af
=w V=setmetatable({},{__index=af})V.__index=V function V.__tostring(ag)return
'RoomComponent - '..ag.instance:GetFullName()end V.attached={}function V.new(ag,
...)local aj=setmetatable({},V)aj=aj:constructor(ag,...)or aj aj:run()return aj
end function V.constructor(ag,aj)af.constructor(ag,aj)ag.id=tonumber(aj.Name)ag.
assets=aj:WaitForChild('Assets',5)end function V.onStart(ag)V.attached[ag.
instance]=ag af.onStart(ag)if ag.id==50 or ag.id==100 then task.defer(ag.
onFigure,ag)end local aj=ag.instance:WaitForChild('RoomExit',5)if aj then Q.new(
aj,ag.id)end ag._maid:add(ag.instance.DescendantAdded:Connect(function(ak)ag:
onDescendant(ak)end))for ak,al in ipairs(ag.instance:GetDescendants())do task.
spawn(ag.onDescendant,ag,al)end end function V.onDescendant(ag,aj)local ak=aj.
Parent local al=ak.Name local am=aj.Name if am=='Main'then if p[al]then T.new(aj
,q[al])elseif al=='LeverForGate'then S.new(aj,'Lever')elseif al=='ChestBox'then
S.new(aj,'Chest')elseif al=='ChestBoxLocked'then S.new(aj,'Chest [Locked]')end
elseif am=='Handle'then if n[al]then T.new(aj,o[al])end elseif am=='Base'then if
al=='LiveHintBook'then T.new(aj,'Book')elseif al=='LiveBreakerPolePickup'then T.
new(aj,'Fuse')elseif al=='Snare'then P.new(ak)end elseif am=='Lock'then if al==
'Door'then S.new(aj,'Lock')end elseif al=='KeyObtain'then if am=='Hitbox'then T.
new(aj,'Key')end elseif am=='Wardrobe'then R.new(aj,ag.id)elseif am=='Toolshed'
then R.new(aj,ag.id)elseif am=='Hitbox'then if al=='GoldPile'then U.new(aj)end
end if ag.id~=52 and aj:IsA'ProximityPrompt'then local an=v.new()ag._maid:add(an
)local ao local ap=aj local aq=os.clock()local ar=''local as=0.2 local at=1
local au=ap.MaxActivationDistance+5 if m[al]then ar='Containers'ao=al=='Knobs'
and ak or ak:WaitForChild('Main',5)end if al=='GoldPile'then ar='Gold'ao=ak:
WaitForChild('Hitbox',5)end if al=='KeyObtain'then ar='Keys'ao=ak:WaitForChild(
'Hitbox',5)end if n[al]then ar=o[al]as=0.5 at=math.huge ao=ak:WaitForChild(
'Handle',5)elseif p[al]then ar=q[al]as=0.5 at=math.huge ao=ak:WaitForChild(
'Main',5)end if al=='LiveHintBook'then ar='Books'ao=ak:WaitForChild('Base',5)
elseif al=='LiveBreakerPolePickup'then ar='Fuses'ao=ak:WaitForChild('Base',5)end
if al=='VentGrate'then ar='Vents'ao=ak:WaitForChild('SquareGrate',5)elseif al==
'Lock'and am=='UnlockPrompt'then ar='Locks'as=0.5 at=math.huge ao=ak elseif al==
'LeverForGate'then ar='Levers'ao=ak:WaitForChild('Main',5)end if ao then local
av=game.IsDescendantOf local aw=function()if not ag.destructed and av(ap,ag.
instance)then local aw=ap:GetAttribute'Interactions'if not aw or aw<at then
return true end end return false end local _=function()if ae()then local _=
Options['interact.filter'].Value return _[ar]==nil end return false end an:add(d
.Heartbeat:Connect(function()if not aw()then return an:destroy()end if not _()
then return end local ax=os.clock()if ax-aq>=as then local ay=J.attached local
az=(ao.Position-ay.root.Position).Magnitude if az<=au then fireproximityprompt(
ap)aq=ax end end end))end return end end function V.onFigure(ag)local aj=ag.
instance:WaitForChild('FigureSetup',5)O.new(aj)end function V.destroy(ag)V.
attached[ag.instance]=nil af.destroy(ag)end local ag=function(ag)V.new(ag)end G:
add(f.CurrentRooms.ChildAdded:Connect(ag))for aj,ak in ipairs(f.CurrentRooms:
GetChildren())do task.defer(ag,ak)end end s:SetWatermark
'Linoria Community (TerminalVibes)'s:Notify'Loading UI...'do local ae=s:
CreateWindow(h..' ('..i..')')do local af=ae:AddTab'Gameplay'do local ag=af:
AddLeftGroupbox'Character Mods'ag:AddToggle('character.sprint.enabled',{Text=
'Sprint Enabled',Default=false,Tooltip=
'Enables Sprinting by pressing the Keybind'}):AddKeyPicker(
'character.sprint.keybind',{Text='Sprint',Default='LeftShift'})ag:AddSlider(
'character.sprint.speed',{Text='Sprint Boost (in seconds)',Min=0,Max=7.5,Default
=0,Rounding=1,Suffix=' studs'})ag:AddToggle('character.glow.enabled',{Text=
'Body Glow',Default=false,Tooltip='Adds a subtle glow for better vision'})ag:
AddSlider('character.glow.brightness',{Text='Glow Brightness',Min=0,Max=100,
Default=0,Rounding=0,Suffix=''})end do local ag=af:AddLeftGroupbox
'Gameplay Mods'ag:AddToggle('gameplay.heartbeat.enabled',{Text=
'Automated Heartbeat',Default=false,Tooltip=
[[Automatically does Heartbeat inputs for you. (Room 50 & 100)]]})ag:AddToggle(
'gameplay.parser.enabled',{Text='Library Code',Default=false,Tooltip=
[[Automatically parses the Library padlock code as you obtain clues. (Paper & Hints required)]]
}):AddKeyPicker('gameplay.parser.keybind',{Default='P',NoUI=true,Mode='Toggle'})
ag:AddToggle('gameplay.breaker.enabled',{Text='Breaker Code',Default=false,
Tooltip='Notifies you of Electrical Breaker code when it generates.'}):
AddKeyPicker('gameplay.breaker.keybind',{Default='B',NoUI=true,Mode='Toggle'})
end do local ag=af:AddRightTabbox'Alerts'local aj=ag:AddTab'Alerts'aj:AddToggle(
'alerts.enabled',{Text='Alerts Enabled',Default=true,Tooltip=
'Master toggle for all script alerts.'})aj:AddToggle('alerts.drawing',{Text=
'Use Drawing API',Default=true,Tooltip=
'Enables the drawing API for script alerts.'})aj:AddToggle(
'alerts.audio.enabled',{Text='Enable Sound',Default=true,Tooltip=
'Plays a sound when an important alert is triggered.'})aj:AddSlider(
'alerts.audio.volume',{Text='Alert Volume',Min=1,Max=10,Default=6,Rounding=0,
Suffix=''})aj:AddButton{Text='Test Alert',Func=function()ab(true,{message=
'This is a test alert!',duration=4,audio=true})end}local ak=ag:AddTab'Advanced'
ak:AddToggle('alerts.debug',{Text='Debug Alerts',Default=false,Tooltip=
'Enabled alerts related to script status.'})ak:AddToggle('alerts.entity',{Text=
'Entity Alerts',Default=true,Tooltip='Enabled alerts about entities spawning.'})
end end do local af=ae:AddTab'Blatant'do local ag=af:AddRightGroupbox
'Auto Interact'ag:AddToggle('interact.enabled',{Text='Enabled',Default=false,
Tooltip='Automatically loots items for you.'}):AddKeyPicker('interact.keybind',{
Text='Auto-Interact',Default='F'})ag:AddDropdown('interact.filter',{Text=
'Interact Filter (Work In Progress)',Tooltip=
'Selected items will be ignored by the auto-loot.',Values={'Gold','Containers',
'Candle','Lighter','Flashlight','Vitamins','Lockpick','Crucifix','Skeleton Key',
'Battery','Bandage','Keys','Books','Library Paper','Fuses','Vents','Locks',
'Levers'},Default={},Multi=true})end do local ag=af:AddRightGroupbox
'Entity Hooks'ag:AddToggle('blatant.timothy.remove',{Text='Remove Timothy',
Default=false,Tooltip=
[[Timothy will no longer jumpscare you (You will still take damage).]]})ag:
AddToggle('blatant.screech.remove',{Text='Remove Screech',Default=false,Tooltip=
'Screech will no longer spawn for you.'})end end do local af=ae:AddTab'Visuals'
do local ag=af:AddLeftTabbox'ESP'local aj=ag:AddTab'Entity ESP'do aj:AddToggle(
'esp.player.enabled',{Text='Player ESP',Default=true,Tooltip=
'ESP for other players'}):AddColorPicker('esp.player.color',{Title=
'Player ESP Color',Default=Color3.new(1,1,1)})aj:AddToggle('esp.screech.enabled'
,{Text='Screech ESP',Default=true,Tooltip='Tracer ESP for Screech entities'}):
AddColorPicker('esp.screech.color',{Title='Screech ESP Color',Default=Color3.
new(1,0,0)})aj:AddToggle('esp.rush.enabled',{Text='Rush/Ambush ESP',Default=true
,Tooltip='ESP for both Rush and Ambush entities'}):AddColorPicker(
'esp.rush.rush-color',{Title='Rush ESP Color',Default=Color3.new(1,0,0)}):
AddColorPicker('esp.rush.ambush-color',{Title='Ambush ESP Color',Default=Color3.
new(0,1,0)})aj:AddToggle('esp.figure.enabled',{Text='Figure ESP',Default=true,
Tooltip='ESP for the Figure entity'}):AddColorPicker('esp.figure.color',{Title=
'Figure ESP Color',Default=Color3.new(0.75,0.25,0.25)})aj:AddToggle(
'esp.snare.enabled',{Text='Snare ESP',Default=true,Tooltip='ESP for snare traps'
}):AddColorPicker('esp.snare.color',{Title='Snare ESP Color',Default=Color3.new(
1,0,0)})end local ak=ag:AddTab'Object ESP'do ak:AddToggle('esp.door.enabled',{
Text='Door ESP',Default=false,Tooltip='ESP for doors'}):AddColorPicker(
'esp.door.default-color',{Title='Other Doors ESP Color',Default=Color3.new(0,0.3
,0.75)}):AddColorPicker('esp.door.target-color',{Title='Current Door ESP Color',
Default=Color3.new(0,1,0)})ak:AddToggle('esp.wardrobe.enabled',{Text=
'Wardrobe ESP',Default=false,Tooltip='ESP for Wardrobe'}):AddColorPicker(
'esp.wardrobe.color',{Title='Wardrobe ESP Color',Default=Color3.new(0,1,0.9)})ak
:AddToggle('esp.interactable.enabled',{Text='Interactable ESP',Default=true,
Tooltip='ESP for interactable items'}):AddColorPicker('esp.interactable.color',{
Title='Interactable ESP Color',Default=Color3.new(1,1,1)})ak:AddToggle(
'esp.obtainable.enabled',{Text='Obtainable ESP',Default=true,Tooltip=
'ESP for items that can be picked up'}):AddColorPicker('esp.obtainable.color',{
Title='Obtainable ESP Color',Default=Color3.new(1,1,0)})end end do local ag=af:
AddLeftGroupbox'Gold ESP'ag:AddToggle('esp.gold.enabled',{Text='Gold ESP',
Default=true,Tooltip='ESP for items that can be picked up'}):AddColorPicker(
'esp.gold.color',{Title='Gold ESP Color',Default=Color3.new(1,1,0)})ag:AddInput(
'esp.gold.format',{Text='Custom Label',Default='Gold [{amount}]',Placeholder=
'Label Text',Tooltip=
[[Custom text to display for gold. {amount} will be replaced with the amount of gold.]]
})ag:AddSlider('esp.gold.minimum',{Text='Minimum Gold',Default=10,Min=0,Max=100,
Rounding=0,Tooltip='Minimum amount of gold to display'})end do local ag=af:
AddRightGroupbox'Lighting'ag:AddButton{Text='Full Bright',Func=function()a.
Ambient=Color3.fromRGB(200,200,200)a.Brightness=1 a.ClockTime=12 G:add(a:
GetPropertyChangedSignal'Ambient':Connect(function()local aj=Color3.fromRGB(200,
200,200)if a.Ambient~=aj then a.Ambient=aj end end))G:add(a:
GetPropertyChangedSignal'Brightness':Connect(function()if a.Brightness~=1 then a
.Brightness=1 end end))G:add(a:GetPropertyChangedSignal'ClockTime':Connect(
function()if a.ClockTime~=12 then a.ClockTime=12 end end))end}end end do local
af=ae:AddTab'Credits'local ag=af:AddLeftGroupbox'Credits'ag:AddLabel
'TerminalVibes - Creator'ag:AddLabel'Inori @v3rm - UI Library'ag:AddDivider()ag:
AddLabel'Contributors:'ag:AddLabel'> reversing#2937 @discord'ag:AddLabel
'> yuuiz#1336 @discord'ag:AddLabel'> Ferris#8276 @discord'ag:AddLabel
'> Lythicals#0001 @discord'ag:AddLabel'> brickmane @v3rm'ag:AddLabel
'> BlockOfGaming'local aj=af:AddRightGroupbox'Socials'aj:AddButton{Text=
'Discord Server',Func=function()setclipboard'https://discord.gg/8PATx7UKXZ'end}
end do local af=ae:AddTab'Settings'u:SetLibrary(s)t:SetLibrary(s)u:SetFolder(j)t
:SetFolder(j..'/'..k)t:IgnoreThemeSettings()t:SetIgnoreIndexes{'MenuKeybind'}t:
BuildConfigSection(af)u:ApplyToTab(af)local ag=af:AddLeftGroupbox'Menu'ag:
AddButton('Unload',function()s:Unload()end)ag:AddLabel'Menu bind':AddKeyPicker(
'MenuKeybind',{Default='End',NoUI=true,Text='Menu keybind'})ag:AddToggle(
'Keybinds',{Text='Show Keybinds Menu',Default=true}):OnChanged(function()s.
KeybindFrame.Visible=Toggles.Keybinds.Value end)ag:AddToggle('Watermark',{Text=
'Show Watermark',Default=true}):OnChanged(function()s:SetWatermarkVisibility(
Toggles.Watermark.Value)end)end end s:Notify
'UI Built! [Right Ctrl or Right Shift]'t:LoadAutoloadConfig()local ae=function()
z=f.CurrentCamera or z end G:add(f:GetPropertyChangedSignal'CurrentCamera':
Connect(ae))local af=function(af)if af.Name=='Screech'then M.new(af)end end G:
add(z.ChildAdded:Connect(af))local ag=function(ag)local aj=ag.Name if aj==
'RushMoving'or ag.Name=='AmbushMoving'then N.new(ag)elseif aj=='Eyes'then ab(
Toggles['alerts.entity'].Value,{message='Eyes spawned, look away from it!',audio
=true,duration=5})end end G:add(f.ChildAdded:Connect(ag))local aj=function()if
Toggles['blatant.screech.remove'].Value then ab(Toggles['alerts.debug'],{message
='Screech was eaten by TerminalVibes',duration=4})task.wait(1)return B.Screech:
FireServer(true)end ab(Toggles['alerts.entity'].Value,{message=
'Screech spawned, turn around and look at it!',audio=true,duration=5})end G:add(
B.Screech.OnClientEvent:Connect(aj))local ak=function(ak,al)if ak and al then D[
ak]=tostring(al)end end G:add(B.PadlockHint.OnClientEvent:Connect(ak))local al=
function(...)H:destroy()if not Toggles['gameplay.heartbeat.enabled'].Value then
return end local al=y:WaitForChild('MainUI',1):WaitForChild('MainFrame',1):
WaitForChild('Heartbeat',1)local am=al:WaitForChild('Heart',1)assert(al and am,
'Heartbeat frame not found')local an=am.AbsolutePosition.X H:add(am.ChildAdded:
Connect(function(ao)if ao.Name=='LiveHalf'then local ap=ao.Image==
'rbxassetid://8428304451'local aq=math.random(10,25)local ar=0 repeat d.
RenderStepped:Wait()ar=math.abs(ao.AbsolutePosition.X-an)until ar<=aq local as=
ap and Enum.KeyCode.Q or Enum.KeyCode.E g:SendKeyEvent(true,as,false,game)task.
wait()g:SendKeyEvent(false,as,false,game)ab(Toggles['alerts.debug'].Value,{
message='Simulated Heartbeat input: '..as.Name,duration=2.5})end end))H:add(al:
GetPropertyChangedSignal'Visible':Connect(function()if not al.Visible then H:
destroy()end end))end G:add(B.ClutchHeartbeat.OnClientEvent:Connect(al))local am
=function(am)for an,ao in ipairs(W)do for ap,aq in pairs(ao.attached)do aq:
onTick(am)end end end local an=function(an)for ao,ap in ipairs(X)do for aq,ar in
pairs(ap.attached)do ar:onRender(an)end end end local ao=function(ao,ap)for aq,
ar in ipairs(Y)do for as,at in pairs(ar.attached)do at:onPhysics(ao,ap)end end
local as=J.attached if as then as:onPhysics(ao,ap)end end G:add(d.Heartbeat:
Connect(am))G:add(d.RenderStepped:Connect(an))G:add(d.Stepped:Connect(ao))
Options['gameplay.parser.keybind']:OnClick(function()if A.LatestRoom.Value==50
then local ap=''for aq=1,5 do local ar=D[E[aq]]ap=ap..(ar~=nil and ar or'_')end
ab(Toggles['gameplay.parser.enabled'].Value,{message='[Code Parser]: '..ap,audio
=false,duration=7.5})end end)Options['gameplay.breaker.keybind']:OnClick(
function()local ap=''for aq=1,#F do local ar,as=unpack(F[aq])if as then ap=ap..
tostring(ar)..' 'end end ab(Toggles['gameplay.breaker.enabled'].Value,{message=
'[Breaker Code]: '..ap,audio=false,duration=7.5})end)Options[
'alerts.audio.volume']:OnChanged(function()C.Volume=Options[
'alerts.audio.volume'].Value end)Toggles['blatant.screech.remove']:OnChanged(
function()ac(Toggles['blatant.screech.remove'].Value)end)Toggles[
'blatant.timothy.remove']:OnChanged(function()ad(Toggles[
'blatant.timothy.remove'].Value)end)s:OnUnload(function()G:destroy()getgenv()[k
..i]=nil local ap={K,L,M,N,O,P,Q,R,S,T,V}for aq,ar in ipairs(ap)do for as,at in
pairs(ar.attached)do at:destroy()end end if J.attached then J.attached:destroy()
end end)task.defer(function()local ap repeat task.wait(0.5)for aq,ar in pairs(
getconnections(B.EngageMinigame.OnClientEvent))do local as=ar.Function if as
then local at=getfenv(as).script if at.Name=='MinigameHandler'then local au=
debug.getupvalue(as,1)if type(au)=='function'then ap=au end end end if aq%2000==
0 then task.wait()end end until ap~=nil local aq repeat task.wait()aq=debug.
getupvalue(ap,7)until aq~=nil local ar=(syn and syn.set_thread_identity)or
setidentity debug.setupvalue(ap,7,function(as,...)local at=aq(as,...)F=as task.
delay(0.1,function()ar(7)local au=''for av=1,#F do local aw,ax=unpack(F[av])ab(
true,{message=tostring(aw)..' = '..tostring(ax)})if ax then au=au..tostring(aw)
..' 'end end ab(Toggles['gameplay.breaker.enabled'].Value,{message=
'[Breaker Code]: '..au,audio=false,duration=7.5})ar(2)end)return at end)G:add(
function()debug.setupvalue(ap,7,aq)end)end)table.insert(X,K)table.insert(X,M)
table.insert(X,N)table.insert(X,O)table.insert(X,P)table.insert(X,Q)table.
insert(X,R)table.insert(X,S)C.Name='Main'C.SoundId='rbxassetid://6026984224'C.
Volume=6 C.Parent=e task.delay(10,function()ac(Toggles['blatant.screech.remove']
.Value)ad(Toggles['blatant.timothy.remove'].Value)end)do local ap=game.PlaceId
local aq=game.PlaceVersion local ar=l[ap]if aq>ar then s:Notify
[[Game has been updated! Please be careful when using this script.]]s:Notify
'The place ID and Version has been copied to your clipboard.'setclipboard('['..
tostring(ap)..'] = '..tostring(aq)..',')end end return s:Notify('['..h..
'] Loaded! ('..i..')')
