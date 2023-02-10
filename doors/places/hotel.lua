local a=game:GetService'Lighting'local b=game:GetService'Players'local c=game:
GetService'ReplicatedStorage'local d=game:GetService'RunService'local e=game:
GetService'SoundService'local f=game:GetService'Workspace'local g=game:
GetService'VirtualInputManager'local h='Doors'local i='Hotel v5.4'local j=
'TerminalVibes/doors'local k='hotel'local l={[6839171747]=5938}local m=0.2 local
n={['Knobs']=true,['ChestBox']=true,['RolltopContainer']=true}local o={[
'Vitamins']=true,['Lockpick']=true,['Candle']=true,['Lighter']=true,['Crucifix']
=true,['CrucifixWall']=true,['SkeletonKey']=true,['PickupItem']=true}local p={[
'Battery']=true,['Bandage']=true}do local q=game.PlaceId local r=game.
PlaceVersion local s=l[q]if not s then warn
'Script does not support this place instance.'warn
[[The PlaceID and version has been set to your clipboard. Please report this to the developer.]]
return setclipboard('['..tostring(q)..'] = '..tostring(r)..',')end end do local
q=k..i if getgenv()[q]then return end getgenv()[q]=true end local q=
[[https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/]]local r=
loadstring(game:HttpGet(q..'Library.lua'))()local s=loadstring(game:HttpGet(q..
'addons/SaveManager.lua'))()local t=loadstring(game:HttpGet(q..
'addons/ThemeManager.lua'))()local u do local v,w=type,typeof u=setmetatable({},
{__tostring=function()return'Bin'end})u.__index=u function u.new(...)local x=
setmetatable({},u)return x:constructor(...)or x end function u.constructor(x)end
function u.add(x,y,z)local A={item=y,method=z}if x.head==nil then x.head=A end
if x.tail then x.tail.next=A end x.tail=A return y end function u.destroy(x)
while x.head do local y=x.head.item local z=x.head.method if z then y[z](y)
elseif v(y)=='function'then y()elseif w(y)=='RBXScriptConnection'then y:
Disconnect()elseif v(y)=='thread'then task.cancel(y)elseif y.destroy~=nil then y
:destroy()elseif y.Destroy~=nil then y:Destroy()end x.head=x.head.next end end
function u.isEmpty(x)return x.head==nil end end local v do v={}v.__index=v
function v.__tostring(w)return'BaseComponent - '..w.instance:GetFullName()end
local w,x,y=setmetatable,assert,task.defer function v.new(z,...)local A=w({},v)A
=A:constructor(z,...)or A A:run()return A end function v.constructor(z,A,...)z.
instance=A z.running=false z.destructed=false z._maid=u.new()z._maid:add(A.
Destroying:Connect(function()if not z.destructed then z:destroy()end end))end
function v.onStart(z)end function v.run(z)x(not z.running,'['..z:__tostring()..
'] is already running')y(function()z.running=true if not z.destructed then z:
onStart()end end)end function v.destroy(z)x(not z.destructed,'['..z:__tostring()
..'] is already destroyed')z.running=false z.destructed=true z._maid:destroy()
end end local w=b.LocalPlayer local x=w:WaitForChild'PlayerGui'local y=f.
CurrentCamera local z=c:WaitForChild'GameData'local A={}do local B=c:
WaitForChild'EntityInfo'local C={PadlockHint=B:WaitForChild'PadlockHint',
EngageMinigame=B:WaitForChild'EngageMinigame',ClutchHeartbeat=B:WaitForChild
'ClutchHeartbeat',Screech=B:WaitForChild'Screech',SpiderJumpscare=B:WaitForChild
'SpiderJumpscare'}for D,E in pairs(C)do A[D]=E end end local B=Instance.new
'Sound'local C={}local D={}local E={}local F=u.new()local G=u.new()local H local
I local J local K local L local M local N local O local P local Q local R local
S local T local U local V={}local W={}local X={}local Y={}local aa=function(Z,_)
local aa=0.12 local ab=u.new()local ac=Drawing.new'Text'local ad=Drawing.new
'Square'local ae=Drawing.new'Square'ab:add(ac,'Remove')ab:add(ad,'Remove')ab:
add(ae,'Remove')ac.Text=Z or''ac.Color=Color3.fromRGB(255,255,255)ac.ZIndex=3 ad
.Color=Color3.fromRGB(25,25,25)ad.Filled=true ad.Thickness=0 ad.Size=ac.
TextBounds+Vector2.new(10,8)ad.ZIndex=2 ae.Color=Color3.fromRGB(0,100,255)ae.
Filled=true ae.Thickness=0 ae.Size=Vector2.new(2,24)ae.ZIndex=1 local af=0 for
ag in pairs(Y)do af=math.max(af,ag+1)end Y[af]=ab local ah=0 local ai,aj,ak=
pairs(Y)ab:add(d.RenderStepped:Connect(function(al)ah+=al local am,an=ai(aj,ak)
local ao=am or 0 while am~=nil do ao=math.min(ao,am)am,an=ai(aj,am)end local ap=
af-ao local aq=5 if ah<=aa then aq=-(ad.Size.X+2)+(ah/aa)*(ad.Size.X+7)elseif ah
>=_-aa then aq=5-(ah-(_-aa))/aa*(ad.Size.X+7)end local ar=Vector2.new(aq,40+(ap*
25))ac.Position=ar+Vector2.new(7,4)ad.Position=ar+Vector2.new(2,0)ae.Position=ar
end))ab:add(d.RenderStepped:Once(function(al)ac.Visible=true ad.Visible=true ae.
Visible=true end))task.delay(_,function()ab:destroy()Y[af]=nil end)end local ab=
function(ab,ac)if ab and Toggles['alerts.enabled'].Value then local ad={message=
ac.message or'',audio=ac.audio or false,duration=ac.duration or 5}if Toggles[
'alerts.drawing'].Value then aa(ad.message,ad.duration)else r:Notify(ad.message,
ad.duration)end if ad.audio and Toggles['alerts.audio'].Value then B.
TimePosition=0.25 B:Play()end end end local ac=function(ac)local ad={}for ae,af
in ipairs(getconnections(A.Screech.OnClientEvent))do local ag=af.Function if ag
then local ah=getfenv(ag).script if ah and ah.Name=='RemoteListener'then table.
insert(ad,af)end end end if ac then for ag,ah in ipairs(ad)do ah:Disable()end
else for ag,ah in ipairs(ad)do ah:Enable()end end end local ad=function(ad)local
ae={}for af,ag in ipairs(getconnections(A.SpiderJumpscare.OnClientEvent))do
local ah=ag.Function if ah then local ai=getfenv(ah).script if ai and ai.Name==
'RemoteListener'then table.insert(ae,ag)end end end if ad then for ah,ai in
ipairs(ae)do ai:Disable()end else for ah,ai in ipairs(ae)do ai:Enable()end end
end do local ae=v H=setmetatable({},{__index=ae})H.__index=H function H.
__tostring(af)return'CharacterComponent - '..af.instance:GetFullName()end H.
attached={}function H.new(af,...)local ag=setmetatable({},H)ag=ag:constructor(af
,...)or ag ag:run()return ag end function H.constructor(af,ag)ae.constructor(af,
ag)af.client=K.attached[b:GetPlayerFromCharacter(ag)]af.root=ag:WaitForChild(
'HumanoidRootPart',5)af.humanoid=ag:WaitForChild('Humanoid',5)assert(af.client~=
nil,'['..af:__tostring().."] is not a client's character")assert(af.root~=nil,
'['..af:__tostring()..'] is missing a HumanoidRootPart')assert(af.humanoid~=nil,
'['..af:__tostring()..'] is missing a Humanoid')af._maid:add(ag.AncestryChanged:
Connect(function(ah,ai)if ai==nil then af:destroy()end end))end function H.
onStart(af)H.attached[af.instance]=af ae.onStart(af)end function H.destroy(af)H.
attached[af.instance]=nil ae.destroy(af)end end do local ae=Vector3.new(1,0,1)
local af=H I=setmetatable({},{__index=af})I.__index=I function I.__tostring(ag)
return'AvatarComponent - '..ag.instance:GetFullName()end I.attached=nil function
I.new(ag,...)local ah=setmetatable({},I)ah=ah:constructor(ag,...)or ah ah:run()
return ah end function I.constructor(ag,ah)af.constructor(ag,ah)ag.parts={ag.
_maid:add(Instance.new'Part'),ag._maid:add(Instance.new'Part'),ag._maid:add(
Instance.new'Part'),ag._maid:add(Instance.new'Part')}ag.lights={ag._maid:add(
Instance.new'PointLight'),ag._maid:add(Instance.new'PointLight'),ag._maid:add(
Instance.new'PointLight'),ag._maid:add(Instance.new'PointLight'),ag._maid:add(
Instance.new'PointLight')}end function I.onStart(ag)I.attached=ag af.onStart(ag)
for ah,ai in ipairs(ag.lights)do ai.Enabled=false ai.Range=60 ai.Color=Color3.
new(1,1,1)ai.Shadows=false end for aj,ak in ipairs(ag.parts)do local al=ak local
am=ag._maid:add(Instance.new'WeldConstraint')local an=ag.lights[aj]al.Size=
Vector3.zero al.Massless=true al.CanCollide=false al.CanTouch=false al.CanQuery=
false am.Part0=ag.root am.Part1=al local ao=(aj-1)*math.pi/2 al.Position=ag.root
.Position+Vector3.new(math.cos(ao)*25,5,math.sin(ao)*25)am.Parent=al an.Parent=
al al.Parent=f end ag.lights[5].Parent=ag.root while ag.running do for al,am in
ipairs(ag.lights)do am.Enabled=Toggles['character.glow.enabled'].Value am.
Brightness=Options['character.glow.brightness'].Value/50 end task.wait(0.3)end
end function I.onPhysics(ag,aj,ak)local al=Options['character.sprint.speed'].
Value if al>0 and Toggles['character.sprint.enabled'].Value and Options[
'character.sprint.keybind']:GetState()then local am=ag.humanoid.MoveDirection*ae
if am.Magnitude>0 then ag.instance:TranslateBy(am*al*ak)end end end function I.
destroy(ag)I.attached=nil af.destroy(ag)end end do local ae=Vector3.new(5,7,0)
local af=Vector3.new(0,-0.25,0)local ag,aj,ak,al=CFrame.new(af.X-(ae.X/2),af.Y+(
ae.Y/2),af.Z),CFrame.new(af.X+(ae.X/2),af.Y+(ae.Y/2),af.Z),CFrame.new(af.X-(ae.X
/2),af.Y-(ae.Y/2),af.Z),CFrame.new(af.X+(ae.X/2),af.Y-(ae.Y/2),af.Z)local am=y.
WorldToViewportPoint local an=Vector2.new local ao=math.min local ap=H J=
setmetatable({},{__index=ap})J.__index=J function J.__tostring(aq)return
'FriendComponent - '..aq.instance:GetFullName()end J.attached={}function J.new(
aq,...)local ar=setmetatable({},J)ar=ar:constructor(aq,...)or ar ar:run()return
ar end function J.constructor(aq,ar)ap.constructor(aq,ar)aq.quad=Drawing.new
'Quad'aq._maid:add(aq.quad,'Remove')end function J.onStart(aq)J.attached[aq.
instance]=aq ap.onStart(aq)local ar=aq.quad ar.Visible=false ar.Thickness=1 ar.
Transparency=0.75 end function J.onRender(aq,ar)local Z=aq.quad if Toggles[
'esp.player.enabled'].Value then local _=aq.root.CFrame local as=am(y,(_*ag).
Position)local at=am(y,(_*aj).Position)local au=am(y,(_*al).Position)local av=
am(y,(_*ak).Position)if ao(as.Z,at.Z,au.Z,av.Z)>0 then Z.PointA=an(at.X,at.Y)Z.
PointB=an(as.X,as.Y)Z.PointC=an(av.X,av.Y)Z.PointD=an(au.X,au.Y)Z.Color=Options[
'esp.player.color'].Value Z.Visible=true else Z.Visible=false end else Z.Visible
=false end end function J.destroy(aq)J.attached[aq.instance]=nil ap.destroy(aq)
end end do local ae=v K=setmetatable({},{__index=ae})K.__index=K function K.
__tostring(af)return'ClientComponent - '..af.instance:GetFullName()end K.
attached={}function K.new(af,...)local ag=setmetatable({},K)ag=ag:constructor(af
,...)or ag ag:run()return ag end function K.constructor(af,ag)ae.constructor(af,
ag)end function K.onStart(af)K.attached[af.instance]=af ae.onStart(af)af._maid:
add(af.instance.CharacterAdded:Connect(function(ag)af:onCharacter(ag)end))af.
_maid:add(af.instance.Backpack.ChildAdded:Connect(function(ag)if ag:IsA'Tool'
then af:onTool(ag)end end))task.defer(function()local ag=af.instance.Character
if ag then af:onCharacter(ag)end end)task.defer(function()for ag,aj in ipairs(af
.instance.Backpack:GetChildren())do if aj:IsA'Tool'then af:onTool(aj)end end end
)end function K.onCharacter(af,ag)if af.instance==w then af.character=I.new(ag)
else af.character=J.new(ag)end end function K.onTool(af,ag)if ag.Name==
'LibraryHintPaper'then local aj=ag:WaitForChild('UI',1)if aj then local ak={}for
al=1,5 do local am=aj:FindFirstChild(tostring(al))if am then local an=am.
ImageRectOffset.X/50 ak[al]=an end end D=ak end end end function K.destroy(af)K.
attached[af.instance]=nil ae.destroy(af)end local af=function(af)K.new(af)end b.
PlayerAdded:Connect(af)for ag,aj in ipairs(b:GetPlayers())do task.defer(af,aj)
end end do local ae=y.WorldToViewportPoint local af,ag,aj=Vector2.new,Vector3.
new,CFrame.Angles local ak=v L=setmetatable({},{__index=ak})L.__index=L function
L.__tostring(al)return'ScreechComponent - '..al.instance:GetFullName()end L.
attached={}function L.new(al,...)local am=setmetatable({},L)am=am:constructor(al
,...)or am am:run()return am end function L.constructor(al,am)ak.constructor(al,
am)al.root=am:WaitForChild'Root'al.line=Drawing.new'Line'al.outline=Drawing.new
'Line'al._maid:add(al.line,'Remove')al._maid:add(al.outline,'Remove')end
function L.onStart(al)L.attached[al.instance]=al ak.onStart(al)local am,an=al.
line,al.outline am.Visible=false am.Color=Options['esp.screech.color'].Value am.
ZIndex=1 am.Thickness=1 an.Visible=false an.Color=Color3.new()an.ZIndex=0 an.
Thickness=2 end function L.onRender(al,am)local an=Toggles['esp.screech.enabled'
].Value local ao,ap=al.line,al.outline if an then local aq=al.root.Position
local ar=ae(y,aq)if ar.Z<0 then local as=y.CFrame:PointToObjectSpace(aq)local at
=math.atan2(as.Y,as.X)+math.pi as=aj(0,0,at):VectorToWorldSpace((aj(0,math.rad(
89.9),0):VectorToWorldSpace(ag(0,0,-1))))ar=ae(y,y.CFrame:PointToWorldSpace(as))
end local as=y.ViewportSize ao.From=af(as.X/2,as.Y*0.75)ao.To=af(ar.X,ar.Y)ap.
From=ao.From ap.To=ao.To end ao.Visible=an ap.Visible=an end function L.destroy(
al)L.attached[al.instance]=nil ak.destroy(al)end end do local ae=Vector3.new(4,6
,0)local af=Vector3.new(0,0,0)local ag,aj,ak,al=CFrame.new(af.X-(ae.X/2),af.Y+(
ae.Y/2),af.Z),CFrame.new(af.X+(ae.X/2),af.Y+(ae.Y/2),af.Z),CFrame.new(af.X-(ae.X
/2),af.Y-(ae.Y/2),af.Z),CFrame.new(af.X+(ae.X/2),af.Y-(ae.Y/2),af.Z)local am=y.
WorldToViewportPoint local an=Vector2.new local ao=math.min local ap=v M=
setmetatable({},{__index=ap})M.__index=M function M.__tostring(aq)return
'RushComponent - '..aq.instance:GetFullName()end M.attached={}function M.new(aq,
...)local ar=setmetatable({},M)ar=ar:constructor(aq,...)or ar ar:run()return ar
end function M.constructor(aq,ar)ap.constructor(aq,ar)aq.root=ar.PrimaryPart or
ar:WaitForChild('RushNew',5)assert(aq.root,'['..aq:__tostring()..
'] is missing a root part!')aq.name=aq.instance.Name=='RushMoving'and'Rush'or
'Ambush'aq.quad=Drawing.new'Quad'aq._maid:add(aq.quad,'Remove')end function M.
onStart(aq)M.attached[aq.instance]=aq ap.onStart(aq)local ar=aq.quad ar.Visible=
false ar.Thickness=1 ar.Color=aq.name=='Rush'and Options['esp.rush.rush-color'].
Value or Options['esp.rush.ambush-color'].Value task.delay(0.5,function()local
as=(I.attached.root.Position-aq.root.Position).Magnitude if as<=750 then ab(
Toggles['alerts.entity'].Value,{message=aq.name=='Rush'and
'Rush spawned, hide in a Wardrobe or get behind cover!'or
[[Ambush spawned, hide in a Wardrobe or get behind cover! Ambush can return up to 4 times.]]
,audio=true,duration=10})else aq:destroy()end end)end function M.onRender(aq,ar)
local as=aq.quad if Toggles['esp.rush.enabled'].Value then local at=aq.root.
CFrame local au=am(y,(at*ag).Position)local av=am(y,(at*aj).Position)local Z=am(
y,(at*al).Position)local _=am(y,(at*ak).Position)if ao(au.Z,av.Z,Z.Z,_.Z)>0 then
as.PointA=an(av.X,av.Y)as.PointB=an(au.X,au.Y)as.PointC=an(_.X,_.Y)as.PointD=an(
Z.X,Z.Y)as.Visible=true else as.Visible=false end else as.Visible=false end end
function M.destroy(aq)M.attached[aq.instance]=nil ap.destroy(aq)end end do local
ae=Vector3.new(6,13,0)local af=Vector3.new(0,-1,0)local ag,aj,ak,al=CFrame.new(
af.X-(ae.X/2),af.Y+(ae.Y/2),af.Z),CFrame.new(af.X+(ae.X/2),af.Y+(ae.Y/2),af.Z),
CFrame.new(af.X-(ae.X/2),af.Y-(ae.Y/2),af.Z),CFrame.new(af.X+(ae.X/2),af.Y-(ae.Y
/2),af.Z)local am=y.WorldToViewportPoint local an=Vector2.new local ao=math.min
local ap=v N=setmetatable({},{__index=ap})N.__index=N function N.__tostring(aq)
return'FigureComponent - '..aq.instance:GetFullName()end N.attached={}function N
.new(aq,...)local ar=setmetatable({},N)ar=ar:constructor(aq,...)or ar ar:run()
return ar end function N.constructor(aq,ar)ap.constructor(aq,ar)aq.ragdoll=ar:
WaitForChild('FigureRagdoll',2.5)assert(aq.ragdoll~=nil,'['..aq:__tostring()..
'] is missing its ragdoll!')aq.root=aq.ragdoll:WaitForChild('Root',2.5)assert(aq
.root~=nil,'['..aq:__tostring()..'] is missing its root part!')aq.quad=Drawing.
new'Quad'aq._maid:add(aq.quad,'Remove')end function N.onStart(aq)N.attached[aq.
instance]=aq ap.onStart(aq)local ar=aq.quad ar.Visible=false ar.Thickness=2 end
function N.onRender(aq,ar)local as=aq.quad if Toggles['esp.figure.enabled'].
Value then local at=aq.root.CFrame local au=am(y,(at*ag).Position)local av=am(y,
(at*aj).Position)local Z=am(y,(at*al).Position)local _=am(y,(at*ak).Position)if
ao(au.Z,av.Z,Z.Z,_.Z)>0 then as.PointA=an(av.X,av.Y)as.PointB=an(au.X,au.Y)as.
PointC=an(_.X,_.Y)as.PointD=an(Z.X,Z.Y)as.Color=Options['esp.figure.color'].
Value as.Visible=true else as.Visible=false end else as.Visible=false end end
function N.destroy(aq)N.attached[aq.instance]=nil ap.destroy(aq)end end do local
ae=y.WorldToViewportPoint local af=Vector2.new local ag,aj,ak=af(-8,-6),af(8,-6)
,af(0,8)local al=v O=setmetatable({},{__index=al})O.__index=O function O.
__tostring(am)return'SnareComponent - '..am.instance:GetFullName()end O.attached
={}function O.new(am,...)local an=setmetatable({},O)an=an:constructor(am,...)or
an an:run()return an end function O.constructor(am,an)al.constructor(am,an)am.
root=an:WaitForChild('Base',2.5)am.triangle=Drawing.new'Triangle'am.outline=
Drawing.new'Triangle'am._maid:add(am.triangle,'Remove')am._maid:add(am.outline,
'Remove')end function O.onStart(am)O.attached[am.instance]=am al.onStart(am)
local an,ao=am.triangle,am.outline an.Thickness=1 an.Filled=true an.Visible=
false ao.Color=Color3.new()ao.Thickness=1.5 ao.Filled=false ao.Visible=false ao.
ZIndex=2 end function O.onRender(am,an)local ao,ap=am.triangle,am.outline if
Toggles['esp.snare.enabled'].Value then local aq=ae(y,am.root.Position)local ar=
aq.Z>0 if ar then local as=af(aq.X,aq.Y)ao.PointA=as+ag ao.PointB=as+aj ao.
PointC=as+ak ap.PointA=ao.PointA ap.PointB=ao.PointB ap.PointC=ao.PointC ao.
Color=Options['esp.snare.color'].Value end ao.Visible=ar ap.Visible=ar else ao.
Visible=false ap.Visible=false end end function O.destroy(am)O.attached[am.
instance]=nil al.destroy(am)end end do local ae=CFrame.new(0,0,1)local af=y.
WorldToViewportPoint local ag=Vector2.new local aj=math.min local ak=v P=
setmetatable({},{__index=ak})P.__index=P function P.__tostring(al)return
'DoorComponent - '..al.instance:GetFullName()end P.attached={}function P.new(al,
...)local am=setmetatable({},P)am=am:constructor(al,...)or am am:run()return am
end function P.constructor(al,am,an)ak.constructor(al,am)al.id=an or 0 local ao=
am.Size*0.5 local ap=am.CFrame*ae al.tl=(ap*CFrame.new(ao.X,ao.Y,0)).Position al
.tr=(ap*CFrame.new(-ao.X,ao.Y,0)).Position al.bl=(ap*CFrame.new(ao.X,-ao.Y,0)).
Position al.br=(ap*CFrame.new(-ao.X,-ao.Y,0)).Position al.quad=Drawing.new'Quad'
al._maid:add(al.quad,'Remove')end function P.onStart(al)P.attached[al.instance]=
al ak.onStart(al)local am=al.quad am.Visible=false am.Thickness=2 end function P
.onRender(al,am)local an=al.quad if Toggles['esp.door.enabled'].Value then local
ao=af(y,al.tl)local ap=af(y,al.tr)local aq=af(y,al.br)local ar=af(y,al.bl)if aj(
ao.Z,ap.Z,aq.Z,ar.Z)>0 then an.PointA=ag(ap.X,ap.Y)an.PointB=ag(ao.X,ao.Y)an.
PointC=ag(ar.X,ar.Y)an.PointD=ag(aq.X,aq.Y)local as=al.id-z.LatestRoom.Value if
as==0 then an.Color=Options['esp.door.target-color'].Value else an.Color=Options
['esp.door.default-color'].Value if as<0 then an.Transparency=0.5 else an.
Transparency=1 end end an.Visible=true else an.Visible=false end else an.Visible
=false end end function P.destroy(al)P.attached[al.instance]=nil ak.destroy(al)
end end do local ae=Vector3.new(6.4,9.5,0)local af=Vector3.new(0,0,-0.5)local ag
,aj,ak,al=CFrame.new(af.X-(ae.X/2),af.Y+(ae.Y/2),af.Z),CFrame.new(af.X+(ae.X/2),
af.Y+(ae.Y/2),af.Z),CFrame.new(af.X-(ae.X/2),af.Y-(ae.Y/2),af.Z),CFrame.new(af.X
+(ae.X/2),af.Y-(ae.Y/2),af.Z)local am=y.WorldToViewportPoint local an=Vector2.
new local ao=math.min local ap=v Q=setmetatable({},{__index=ap})Q.__index=Q
function Q.__tostring(aq)return'WardrobeComponent - '..aq.instance:GetFullName()
end Q.attached={}function Q.new(aq,...)local ar=setmetatable({},Q)ar=ar:
constructor(aq,...)or ar ar:run()return ar end function Q.constructor(aq,ar,as)
ap.constructor(aq,ar)aq.id=as aq.root=ar:WaitForChild('Main',5)aq.occupant=ar:
WaitForChild('HiddenPlayer',5)aq.quad=Drawing.new'Quad'aq._maid:add(aq.quad,
'Remove')end function Q.onStart(aq)Q.attached[aq.instance]=aq ap.onStart(aq)
local ar=aq.quad ar.Visible=false ar.Thickness=2 end function Q.onRender(aq,ar)
local as=aq.quad if Toggles['esp.wardrobe.enabled'].Value then local at=aq.root.
CFrame local au=am(y,(at*ag).Position)local av=am(y,(at*aj).Position)local Z=am(
y,(at*al).Position)local _=am(y,(at*ak).Position)if ao(au.Z,av.Z,Z.Z,_.Z)>0 then
as.PointA=an(av.X,av.Y)as.PointB=an(au.X,au.Y)as.PointC=an(_.X,_.Y)as.PointD=an(
Z.X,Z.Y)as.Color=Options['esp.wardrobe.color'].Value if aq.occupant.Value then
as.Transparency=0.1 elseif z.LatestRoom.Value-aq.id>1 then as.Transparency=0.25
else as.Transparency=0.6 end as.Visible=true else as.Visible=false end else as.
Visible=false end end function Q.destroy(aq)Q.attached[aq.instance]=nil ap.
destroy(aq)end end do local ae=y.WorldToViewportPoint local af=Vector2.new local
ag=af(0,3)local aj=v R=setmetatable({},{__index=aj})R.__index=R function R.
__tostring(ak)return'InteractableComponent - '..ak.instance:GetFullName()end R.
attached={}function R.new(ak,al,...)local am=setmetatable({},R)am=am:
constructor(ak,al,...)or am am:run()return am end function R.constructor(ak,al,
am)aj.constructor(ak,al)ak.name=am ak.label=Drawing.new'Text'ak.circle=Drawing.
new'Circle'ak.outline=Drawing.new'Circle'ak._maid:add(ak.label,'Remove')ak._maid
:add(ak.circle,'Remove')ak._maid:add(ak.outline,'Remove')ak._maid:add(al.
AncestryChanged:Connect(function(an,ao)if ao==nil then ak:destroy()end end))end
function R.onStart(ak)R.attached[ak.instance]=ak aj.onStart(ak)local al,am,an=ak
.label,ak.circle,ak.outline al.Text=ak.name al.Size=18 al.Center=true al.Outline
=true al.Visible=false am.Thickness=1 am.NumSides=6 am.Radius=5 am.Filled=true
am.Visible=false an.Color=Color3.new()an.Thickness=1.5 an.NumSides=6 an.Radius=5
an.Filled=false an.Visible=false an.ZIndex=2 end function R.onRender(ak,al)local
am,an,ao=ak.label,ak.circle,ak.outline if ak:isVisualEnabled()then local ap=ae(y
,ak.instance.Position)local aq=ap.Z>0 if aq then local ar=af(ap.X,ap.Y)am.
Position=ar+ag an.Position=ar ao.Position=ar local as=ak:getColor()am.Color=as
an.Color=as end am.Visible=aq an.Visible=aq ao.Visible=aq else am.Visible=false
an.Visible=false ao.Visible=false end end function R.isVisualEnabled(ak)return
Toggles['esp.interactable.enabled'].Value end function R.getColor(ak)return
Options['esp.interactable.color'].Value end function R.destroy(ak)R.attached[ak.
instance]=nil aj.destroy(ak)end end do local ae=R S=setmetatable({},{__index=ae}
)S.__index=S function S.__tostring(af)return'ObtainableComponent - '..af.
instance:GetFullName()end S.attached={}function S.new(af,ag,...)local aj=
setmetatable({},S)aj=aj:constructor(af,ag,...)or aj aj:run()return aj end
function S.constructor(af,ag,aj)ae.constructor(af,ag,aj)end function S.onStart(
af)S.attached[af.instance]=af ae.onStart(af)local ag,aj,ak=af.label,af.circle,af
.outline aj.NumSides=5 ak.NumSides=5 end function S.isVisualEnabled(af)return
Toggles['esp.obtainable.enabled'].Value end function S.getColor(af)return
Options['esp.obtainable.color'].Value end function S.destroy(af)S.attached[af.
instance]=nil ae.destroy(af)end end do local ae=S T=setmetatable({},{__index=ae}
)T.__index=T function T.__tostring(af)return'GoldComponent - '..af.instance:
GetFullName()end function T.new(af,...)local ag=setmetatable({},T)ag=ag:
constructor(af,...)or ag ag:run()return ag end function T.constructor(af,ag)ae.
constructor(af,ag,'Gold')af.denomination=0 end function T.onStart(af)ae.onStart(
af)af:onDenominationChanged()af.instance:GetAttributeChangedSignal'GoldValue':
Connect(function()af:onDenominationChanged()end)end function T.onRender(af,ag)af
.label.Text=Options['esp.gold.format'].Value:gsub('{amount}',tostring(af.
denomination))ae.onRender(af,ag)end function T.onDenominationChanged(af)af.
denomination=af.instance.Parent:GetAttribute'GoldValue'or 0 end function T.
isVisualEnabled(af)return Toggles['esp.gold.enabled'].Value and af.denomination
>=Options['esp.gold.minimum'].Value end function T.getColor(af)return Options[
'esp.gold.color'].Value end end do local ae=function()return Toggles[
'auto-loot.enabled'].Value and Options['auto-loot.keybind']:GetState()end local
af=v U=setmetatable({},{__index=af})U.__index=U function U.__tostring(ag)return
'RoomComponent - '..ag.instance:GetFullName()end U.attached={}function U.new(ag,
...)local aj=setmetatable({},U)aj=aj:constructor(ag,...)or aj aj:run()return aj
end function U.constructor(ag,aj)af.constructor(ag,aj)ag.id=tonumber(aj.Name)ag.
assets=aj:WaitForChild('Assets',5)end function U.onStart(ag)U.attached[ag.
instance]=ag af.onStart(ag)if ag.id==50 or ag.id==100 then task.defer(ag.
onFigure,ag)end local aj=ag.instance:WaitForChild('RoomExit',5)if aj then P.new(
aj,ag.id)end ag._maid:add(ag.instance.DescendantAdded:Connect(function(ak)ag:
onDescendant(ak)end))for ak,al in ipairs(ag.instance:GetDescendants())do task.
spawn(ag.onDescendant,ag,al)end end function U.onDescendant(ag,aj)local ak=aj.
Parent local al=ak.Name local am=aj.Name if am=='Main'then if al=='LeverForGate'
then R.new(aj,'Lever')elseif al=='Bandage'then S.new(aj,'Bandages')elseif al==
'Battery'then S.new(aj,'Batteries')elseif al=='ChestBox'then R.new(aj,'Chest')
elseif al=='ChestBoxLocked'then R.new(aj,'Chest [Locked]')end elseif am==
'Handle'then if al=='Lighter'then S.new(aj,'Lighter')elseif al=='Vitamins'then S
.new(aj,'Vitamins')elseif al=='Lockpick'then S.new(aj,'Lockpicks')elseif al==
'Candle'then S.new(aj,'Candle')elseif al=='CrucifixWall'then S.new(aj,'Crucifix'
)elseif al=='SkeletonKey'then S.new(aj,'Skeleton Key')end elseif am=='Base'then
if al=='LiveHintBook'then S.new(aj,'Book')elseif al=='LiveBreakerPolePickup'then
S.new(aj,'Fuse')elseif al=='Snare'then O.new(ak)end elseif am=='Lock'then if al
=='Door'then R.new(aj,'Lock')end elseif al=='KeyObtain'then if am=='Hitbox'then
S.new(aj,'Key')end elseif am=='Wardrobe'then Q.new(aj,ag.id)elseif am==
'Toolshed'then Q.new(aj,ag.id)elseif am=='Hitbox'then if al=='GoldPile'then T.
new(aj)end end if ag.id~=52 and aj:IsA'ProximityPrompt'then local an=u.new()ag.
_maid:add(an)local ao local ap=aj local aq=os.clock()local ar=ap.
MaxActivationDistance+5 if n[al]then ao=al=='Knobs'and ak or ak:WaitForChild(
'Main',5)end if al=='GoldPile'or al=='KeyObtain'then ao=ak:WaitForChild('Hitbox'
,5)end if o[al]then ao=ak:WaitForChild('Handle',5)elseif p[al]then ao=ak:
WaitForChild('Main',5)end if al=='LiveHintBook'or al=='LiveBreakerPolePickup'
then ao=ak:WaitForChild('Base',5)end if al=='VentGrate'then ao=ak:WaitForChild(
'SquareGrate',5)elseif al=='Lock'and am=='UnlockPrompt'then ao=ak elseif al==
'LeverForGate'then ao=ak:WaitForChild('Main',5)end if ao then an:add(d.Heartbeat
:Connect(function()if not ap:IsDescendantOf(ag.instance)then return an:destroy()
end local as=ap:GetAttribute'Interactions'if as then return an:destroy()end if
not ae()then return end local at=os.clock()if at-aq<m then return end local au=I
.attached local av=(ao.Position-au.root.Position).Magnitude if av<=ar then
fireproximityprompt(ap)aq=at end end))end return end end function U.onFigure(ag)
local aj=ag.instance:WaitForChild('FigureSetup',5)N.new(aj)end function U.
destroy(ag)U.attached[ag.instance]=nil af.destroy(ag)end local ag=function(ag)U.
new(ag)end F:add(f.CurrentRooms.ChildAdded:Connect(ag))for aj,ak in ipairs(f.
CurrentRooms:GetChildren())do task.defer(ag,ak)end end r:SetWatermark
'Linoria Community (TerminalVibes)'r:Notify'Loading UI...'do local ae=r:
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
'Enables the drawing API for script alerts.'})aj:AddToggle('alerts.audio',{Text=
'Enable Sound',Default=true,Tooltip=
'Plays a sound when an important alert is triggered.'})local ak=ag:AddTab
'Advanced'ak:AddToggle('alerts.debug',{Text='Debug Alerts',Default=false,Tooltip
='Enabled alerts related to script status.'})ak:AddToggle('alerts.entity',{Text=
'Entity Alerts',Default=true,Tooltip='Enabled alerts about entities spawning.'})
end end do local af=ae:AddTab'Blatant'do local ag=af:AddRightGroupbox'Auto Loot'
ag:AddToggle('auto-loot.enabled',{Text='Enabled',Default=false,Tooltip=
'Automatically loots items for you.'}):AddKeyPicker('auto-loot.keybind',{Text=
'Auto-loot',Default='F'})ag:AddDropdown('auto-loot.filter',{Text=
'Loot Filter (Work In Progress)',Tooltip=
'Selected items will be ignored by the auto-loot.',Values={''},Default=1,Multi=
true})end do local ag=af:AddRightGroupbox'Entity Hooks'ag:AddToggle(
'blatant.timothy.remove',{Text='Remove Timothy',Default=false,Tooltip=
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
Ambient=Color3.fromRGB(200,200,200)a.Brightness=1 a.ClockTime=12 F:add(a:
GetPropertyChangedSignal'Ambient':Connect(function()local aj=Color3.fromRGB(200,
200,200)if a.Ambient~=aj then a.Ambient=aj end end))F:add(a:
GetPropertyChangedSignal'Brightness':Connect(function()if a.Brightness~=1 then a
.Brightness=1 end end))F:add(a:GetPropertyChangedSignal'ClockTime':Connect(
function()if a.ClockTime~=12 then a.ClockTime=12 end end))end}end end do local
af=ae:AddTab'Credits'local ag=af:AddLeftGroupbox'Credits'ag:AddLabel
'TerminalVibes - Creator'ag:AddLabel'Inori @v3rm - UI Library'ag:AddDivider()ag:
AddLabel'Contributors:'ag:AddLabel'> reversing#2937 @discord'ag:AddLabel
'> yuuiz#1336 @discord'ag:AddLabel'> Ferris#8276 @discord'ag:AddLabel
'> Lythicals#0001 @discord'ag:AddLabel'> brickmane @v3rm'ag:AddLabel
'> BlockOfGaming'local aj=af:AddRightGroupbox'Socials'aj:AddButton{Text=
'Discord Server',Func=function()setclipboard'https://discord.gg/8PATx7UKXZ'end}
end do local af=ae:AddTab'Settings't:SetLibrary(r)s:SetLibrary(r)t:SetFolder(j)s
:SetFolder(j..'/'..k)s:IgnoreThemeSettings()s:SetIgnoreIndexes{'MenuKeybind'}s:
BuildConfigSection(af)t:ApplyToTab(af)local ag=af:AddLeftGroupbox'Menu'ag:
AddButton('Unload',function()r:Unload()end)ag:AddLabel'Menu bind':AddKeyPicker(
'MenuKeybind',{Default='End',NoUI=true,Text='Menu keybind'})ag:AddToggle(
'Keybinds',{Text='Show Keybinds Menu',Default=true}):OnChanged(function()r.
KeybindFrame.Visible=Toggles.Keybinds.Value end)ag:AddToggle('Watermark',{Text=
'Show Watermark',Default=true}):OnChanged(function()r:SetWatermarkVisibility(
Toggles.Watermark.Value)end)end end r:Notify
'UI Built! [Right Ctrl or Right Shift]'s:LoadAutoloadConfig()local ae=function()
y=f.CurrentCamera or y end F:add(f:GetPropertyChangedSignal'CurrentCamera':
Connect(ae))local af=function(af)if af.Name=='Screech'then L.new(af)end end F:
add(y.ChildAdded:Connect(af))local ag=function(ag)local aj=ag.Name if aj==
'RushMoving'or ag.Name=='AmbushMoving'then M.new(ag)elseif aj=='Eyes'then ab(
Toggles['alerts.entity'].Value,{message='Eyes spawned, look away from it!',audio
=true,duration=5})end end F:add(f.ChildAdded:Connect(ag))local aj=function()if
Toggles['blatant.screech.remove'].Value then ab(Toggles['alerts.debug'],{message
='Screech was eaten by TerminalVibes',duration=4})task.wait(1)return A.Screech:
FireServer(true)end ab(Toggles['alerts.entity'].Value,{message=
'Screech spawned, turn around and look at it!',audio=true,duration=5})end F:add(
A.Screech.OnClientEvent:Connect(aj))local ak=function(ak,al)if ak and al then C[
ak]=tostring(al)end end F:add(A.PadlockHint.OnClientEvent:Connect(ak))local al=
function(...)G:destroy()if not Toggles['gameplay.heartbeat.enabled'].Value then
return end local al=x:WaitForChild('MainUI',1):WaitForChild('MainFrame',1):
WaitForChild('Heartbeat',1)local am=al:WaitForChild('Heart',1)assert(al and am,
'Heartbeat frame not found')local an=am.AbsolutePosition.X G:add(am.ChildAdded:
Connect(function(ao)if ao.Name=='LiveHalf'then local ap=ao.Image==
'rbxassetid://8428304451'local aq=math.random(10,25)local ar=0 repeat d.
RenderStepped:Wait()ar=math.abs(ao.AbsolutePosition.X-an)until ar<=aq local as=
ap and Enum.KeyCode.Q or Enum.KeyCode.E g:SendKeyEvent(true,as,false,game)task.
wait()g:SendKeyEvent(false,as,false,game)ab(Toggles['alerts.debug'].Value,{
message='Simulated Heartbeat input: '..as.Name,duration=2.5})end end))G:add(al:
GetPropertyChangedSignal'Visible':Connect(function()if not al.Visible then G:
destroy()end end))end F:add(A.ClutchHeartbeat.OnClientEvent:Connect(al))local am
=function(am)for an,ao in ipairs(V)do for ap,aq in pairs(ao.attached)do aq:
onTick(am)end end end local an=function(an)for ao,ap in ipairs(W)do for aq,ar in
pairs(ap.attached)do ar:onRender(an)end end end local ao=function(ao,ap)for aq,
ar in ipairs(X)do for as,at in pairs(ar.attached)do at:onPhysics(ao,ap)end end
local as=I.attached if as then as:onPhysics(ao,ap)end end F:add(d.Heartbeat:
Connect(am))F:add(d.RenderStepped:Connect(an))F:add(d.Stepped:Connect(ao))
Options['gameplay.parser.keybind']:OnClick(function()if z.LatestRoom.Value==50
then local ap=''for aq=1,5 do local ar=C[D[aq]]ap=ap..(ar~=nil and ar or'_')end
ab(Toggles['gameplay.parser.enabled'].Value,{message='[Code Parser]: '..ap,audio
=false,duration=7.5})end end)Options['gameplay.breaker.keybind']:OnClick(
function()local ap=''for aq=1,#E do local ar,as=unpack(E[aq])if as then ap=ap..
tostring(ar)..' 'end end ab(Toggles['gameplay.breaker.enabled'].Value,{message=
'[Breaker Code]: '..ap,audio=false,duration=7.5})end)Toggles[
'blatant.screech.remove']:OnChanged(function()ac(Toggles[
'blatant.screech.remove'].Value)end)Toggles['blatant.timothy.remove']:OnChanged(
function()ad(Toggles['blatant.timothy.remove'].Value)end)r:OnUnload(function()F:
destroy()getgenv()[k..i]=nil local ap={J,K,L,M,N,O,P,Q,R,S,U}for aq,ar in
ipairs(ap)do for as,at in pairs(ar.attached)do at:destroy()end end if I.attached
then I.attached:destroy()end end)task.defer(function()local ap repeat task.wait(
0.5)for aq,ar in pairs(getconnections(A.EngageMinigame.OnClientEvent))do local
as=ar.Function if as then local at=getfenv(as).script if at.Name==
'MinigameHandler'then local au=debug.getupvalue(as,1)if type(au)=='function'then
ap=au end end end if aq%2000==0 then task.wait()end end until ap~=nil local aq
repeat task.wait()aq=debug.getupvalue(ap,7)until aq~=nil local ar=(syn and syn.
set_thread_identity)or setidentity debug.setupvalue(ap,7,function(as,...)local
at=aq(as,...)E=as task.delay(0.1,function()ar(7)local au=''for av=1,#E do local
Z,_=unpack(E[av])ab(true,{message=tostring(Z)..' = '..tostring(_)})if _ then au=
au..tostring(Z)..' 'end end ab(Toggles['gameplay.breaker.enabled'].Value,{
message='[Breaker Code]: '..au,audio=false,duration=7.5})ar(2)end)return at end)
F:add(function()debug.setupvalue(ap,7,aq)end)end)table.insert(W,J)table.insert(W
,L)table.insert(W,M)table.insert(W,N)table.insert(W,O)table.insert(W,P)table.
insert(W,Q)table.insert(W,R)B.Name='Main'B.SoundId='rbxassetid://6026984224'B.
Volume=6 B.Parent=e task.delay(10,function()ac(Toggles['blatant.screech.remove']
.Value)ad(Toggles['blatant.timothy.remove'].Value)end)do local ap=game.PlaceId
local aq=game.PlaceVersion local ar=l[ap]if aq>ar then r:Notify
[[Game has been updated! Please be careful when using this script.]]r:Notify
'The place ID and Version has been copied to your clipboard.'setclipboard('['..
tostring(ap)..'] = '..tostring(aq)..',')end end return r:Notify('['..h..
'] Loaded! ('..i..')')
