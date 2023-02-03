local a=game:GetService"HttpService"
local b=game:GetService"Players"
local c=game:GetService"ReplicatedStorage"
local d=game:GetService"RunService"
local e=game:GetService"SoundService"
local f=game:GetService"Workspace"







local g="Doors"
local h="Hotel v5.1"
local i="TerminalVibes/doors"
local j="hotel"

local k={[6839171747]=5898}







do
local l=game.PlaceId
local m=game.PlaceVersion
local n=k[l]
if not n then
warn"Script does not support this place instance."
warn"The PlaceID and version has been set to your clipboard. Please report this to the developer."
return setclipboard("["..tostring(l).."] = "..tostring(m)..",")
end
end
do
local l=j..h
if getgenv()[l]then
return
end
getgenv()[l]=true
end







local l="https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/"

local m=loadstring(game:HttpGet(l.."Library.lua"))()
local n=loadstring(game:HttpGet(l.."addons/SaveManager.lua"))()
local o=loadstring(game:HttpGet(l.."addons/ThemeManager.lua"))()





























local p
do
local q,r=type,typeof
p=setmetatable({},{
__tostring=function()
return"Bin"
end,
})
p.__index=p
function p.new(...)
local s=setmetatable({},p)
return s:constructor(...)or s
end
function p.constructor(s)end
function p.add(s,t)
local u={
item=t,
}
if s.head==nil then
s.head=u
end
if s.tail then
s.tail.next=u
end
s.tail=u
return t
end
function p.destroy(s)
while s.head do
local t=s.head.item
if q(t)=="function"then
t()
elseif r(t)=="RBXScriptConnection"then
t:Disconnect()
elseif q(t)=="thread"then
task.cancel(t)
elseif t.destroy~=nil then
t:destroy()
elseif t.Destroy~=nil then
t:Destroy()
end
s.head=s.head.next
end
end
function p.isEmpty(s)
return s.head==nil
end
end



local q
do
q={}
q.__index=q
function q.__tostring(r)
return"BaseComponent - "..r.instance:GetFullName()
end


local r,s,t=setmetatable,assert,task.defer


function q.new(u,...)
local v=r({},q)
v=v:constructor(u,...)or v
v:run()
return v
end


function q.constructor(u,v,...)
u.instance=v
u.running=false
u.destructed=false
u._maid=p.new()
u._maid:add(v.Destroying:Connect(function()
if not u.destructed then
u:destroy()
end
end))
end


function q.onStart(u)end


function q.run(u)
s(not u.running,"["..u:__tostring().."] is already running")
t(function()
u.running=true
if not u.destructed then
u:onStart()
end
end)
end

function q.destroy(u)
s(not u.destructed,"["..u:__tostring().."] is already destroyed")
u.running=false
u.destructed=true
u._maid:destroy()
end
end



























































































local r=b.LocalPlayer
local s=f.CurrentCamera

local t=c:WaitForChild"GameData"




local u={}





do
local v=c:WaitForChild"EntityInfo"
local w={
PadlockHint=v:WaitForChild"PadlockHint",
EngageMinigame=v:WaitForChild"EngageMinigame",
ClutchHeartbeat=v:WaitForChild"ClutchHeartbeat",
Screech=v:WaitForChild"Screech",
}
for x,y in pairs(w)do
u[x]=y
end
end

local v=Instance.new"Sound"

local w={}
local x={}
local y={}


local z
local A
local B
local C
local D
local E
local F
local G
local H
local I
local J
local K

local L={}
local M={}
local N={}local O=function(







O, P)
if O and Toggles["alerts.enabled"].Value then
local Q={
message=P.message or"",
audio=P.audio or false,
duration=P.duration or 5,
}

m:Notify(Q.message,Q.duration)
if Q.audio and Toggles["alerts.audio"].Value then
v.TimePosition=0.25
v:Play()
end
end end










do
local P=q
z=setmetatable({},{__index=P})
z.__index=z

function z.__tostring(Q)
return"CharacterComponent - "..Q.instance:GetFullName()
end
z.attached={}


function z.new(Q,...)
local R=setmetatable({},z)
R=R:constructor(Q,...)or R
R:run()
return R
end


function z.constructor(Q,R)
P.constructor(Q,R)
Q.client=C.attached[b:GetPlayerFromCharacter(R)]
Q.root=R:WaitForChild("HumanoidRootPart",5)
Q.humanoid=R:WaitForChild("Humanoid",5)

assert(Q.client~=nil,"["..Q:__tostring().."] is not a client's character")
assert(Q.root~=nil,"["..Q:__tostring().."] is missing a HumanoidRootPart")
assert(Q.humanoid~=nil,"["..Q:__tostring().."] is missing a Humanoid")

Q._maid:add(R.AncestryChanged:Connect(function(S,T)
if T==nil then
Q:destroy()
end
end))
end


function z.onStart(Q)
z.attached[Q.instance]=Q
P.onStart(Q)
end


function z.destroy(Q)
z.attached[Q.instance]=nil
P.destroy(Q)
end
end



do

local P=Vector3.new(1,0,1)

local Q=z
A=setmetatable({},{__index=Q})
A.__index=A

function A.__tostring(R)
return"AvatarComponent - "..R.instance:GetFullName()
end
A.attached=nil


function A.new(R,...)
local S=setmetatable({},A)
S=S:constructor(R,...)or S
S:run()
return S
end


function A.constructor(R,S)
Q.constructor(R,S)
R.light=Instance.new"PointLight"
end


function A.onStart(R)
A.attached=R
Q.onStart(R)

local S=R.light
S.Enabled=false
S.Range=100
S.Color=Color3.fromRGB(255,255,255)
S.Shadows=false
S.Parent=R.root

while R.running do
S.Enabled=Toggles["character.glow.enabled"].Value
S.Brightness=Options["character.glow.brightness"].Value/50
task.wait(0.5)
end
end

function A.onPhysics(R,S,T)
local U=Options["character.sprint.speed"].Value
if
U>0
and Toggles["character.sprint.enabled"].Value
and Options["character.sprint.keybind"]:GetState()
then
local V=R.humanoid.MoveDirection*P
if V.Magnitude>0 then
R.instance:TranslateBy(V*U*T)
end
end
end


function A.destroy(R)
A.attached=nil
Q.destroy(R)
end
end



do

local P=Vector3.new(5,7,0)
local Q=Vector3.new(0,-0.25,0)
local R,S,T,U=
CFrame.new(Q.X-(P.X/2),Q.Y+(P.Y/2),Q.Z),
CFrame.new(Q.X+(P.X/2),Q.Y+(P.Y/2),Q.Z),
CFrame.new(Q.X-(P.X/2),Q.Y-(P.Y/2),Q.Z),
CFrame.new(Q.X+(P.X/2),Q.Y-(P.Y/2),Q.Z)
local V=s.WorldToViewportPoint
local W=Vector2.new
local X=math.min

local Y=z
B=setmetatable({},{__index=Y})
B.__index=B

function B.__tostring(Z)
return"FriendComponent - "..Z.instance:GetFullName()
end
B.attached={}


function B.new(Z,...)
local _=setmetatable({},B)
_=_:constructor(Z,...)or _
_:run()
return _
end


function B.constructor(Z,_)
Y.constructor(Z,_)
Z.quad=Drawing.new"Quad"
Z._maid:add(function()
Z.quad:Remove()
end)
end


function B.onStart(Z)
B.attached[Z.instance]=Z
Y.onStart(Z)

local _=Z.quad
_.Visible=false
_.Thickness=1
_.Transparency=0.75
end

function B.onRender(Z,_)
local aa=Z.quad
if Toggles["esp.player.enabled"].Value then
local ab=Z.root.CFrame
local ac=V(s,(ab*R).Position)
local ad=V(s,(ab*S).Position)
local ae=V(s,(ab*U).Position)
local af=V(s,(ab*T).Position)
if X(ac.Z,ad.Z,ae.Z,af.Z)>0 then
aa.PointA=W(ad.X,ad.Y)
aa.PointB=W(ac.X,ac.Y)
aa.PointC=W(af.X,af.Y)
aa.PointD=W(ae.X,ae.Y)
aa.Color=Options["esp.player.color"].Value
aa.Visible=true
else
aa.Visible=false
end
else
aa.Visible=false
end
end


function B.destroy(aa)
B.attached[aa.instance]=nil
Y.destroy(aa)
end
end



do
local aa=q
C=setmetatable({},{__index=aa})
C.__index=C

function C.__tostring(ab)
return"ClientComponent - "..ab.instance:GetFullName()
end
C.attached={}


function C.new(ab,...)
local ac=setmetatable({},C)
ac=ac:constructor(ab,...)or ac
ac:run()
return ac
end


function C.constructor(ab,ac)
aa.constructor(ab,ac)
end


function C.onStart(ab)
C.attached[ab.instance]=ab
aa.onStart(ab)
ab._maid:add(ab.instance.CharacterAdded:Connect(function(ac)
ab:onCharacter(ac)
end))
ab._maid:add(ab.instance.Backpack.ChildAdded:Connect(function(ac)
if ac:IsA"Tool"then
ab:onTool(ac)
end
end))
task.defer(function()
local ac=ab.instance.Character
if ac then
ab:onCharacter(ac)
end
end)
task.defer(function()
for ac,ad in ipairs(ab.instance.Backpack:GetChildren())do
if ad:IsA"Tool"then
ab:onTool(ad)
end
end
end)
end

function C.onCharacter(ab,ac)
if ab.instance==r then
ab.character=A.new(ac)
else
ab.character=B.new(ac)
end
end

function C.onTool(ab,ac)
if ac.Name=="LibraryHintPaper"then
local ad=ac:WaitForChild("UI",1)
if ad then
local ae={}
for af =1,5 do
local P=ad:FindFirstChild(tostring(af))
if P then
local Q=P.ImageRectOffset.X/50
ae[af]=Q
end
end
x=ae
end
end
end


function C.destroy(ab)
C.attached[ab.instance]=nil
aa.destroy(ab)
end


local ab=function(ab)
C.new(ab)
end

b.PlayerAdded:Connect(ab)
for ac,ad in ipairs(b:GetPlayers())do
task.defer(ab,ad)
end
end



do

local aa=s.WorldToViewportPoint
local ab,ac,ad=Vector2.new,Vector3.new,CFrame.Angles

local ae=q
D=setmetatable({},{__index=ae})
D.__index=D

function D.__tostring(af)
return"ScreechComponent - "..af.instance:GetFullName()
end
D.attached={}


function D.new(af,...)
local P=setmetatable({},D)
P=P:constructor(af,...)or P
P:run()
return P
end


function D.constructor(af,P)
ae.constructor(af,P)
af.root=P:WaitForChild"Root"
af.line=Drawing.new"Line"
af.outline=Drawing.new"Line"
af._maid:add(function()
af.line:Remove()
af.outline:Remove()
end)
end


function D.onStart(af)
D.attached[af.instance]=af
ae.onStart(af)

local P,Q=af.line,af.outline
P.Visible=false
P.Color=Options["esp.screech.color"].Value
P.ZIndex=1
P.Thickness=1

Q.Visible=false
Q.Color=Color3.new()
Q.ZIndex=0
Q.Thickness=2
end

function D.onRender(af,P)
local Q=Toggles["esp.screech.enabled"].Value
local R,S=af.line,af.outline
if Q then
local T=af.root.Position
local U=aa(s,T)
if U.Z<0 then
local V=s.CFrame:PointToObjectSpace(T)
local W=math.atan2(V.Y,V.X)+math.pi
V=ad(0,0,W):VectorToWorldSpace(
(ad(0,math.rad(89.9),0):VectorToWorldSpace(ac(0,0,-1)))
)
U=aa(s,s.CFrame:PointToWorldSpace(V))
end

local V=s.ViewportSize
R.From=ab(V.X/2,V.Y-50)
R.To=ab(U.X,U.Y)
S.From=R.From
S.To=R.To
end
R.Visible=Q
S.Visible=Q
end


function D.destroy(af)
D.attached[af.instance]=nil
ae.destroy(af)
end
end



do

local aa=Vector3.new(4,6,0)
local ab=Vector3.new(0,0,0)
local ac,ad,ae,af=
CFrame.new(ab.X-(aa.X/2),ab.Y+(aa.Y/2),ab.Z),
CFrame.new(ab.X+(aa.X/2),ab.Y+(aa.Y/2),ab.Z),
CFrame.new(ab.X-(aa.X/2),ab.Y-(aa.Y/2),ab.Z),
CFrame.new(ab.X+(aa.X/2),ab.Y-(aa.Y/2),ab.Z)
local P=s.WorldToViewportPoint
local Q=Vector2.new
local R=math.min

local S=q
E=setmetatable({},{__index=S})
E.__index=E

function E.__tostring(T)
return"RushComponent - "..T.instance:GetFullName()
end
E.attached={}


function E.new(T,...)
local U=setmetatable({},E)
U=U:constructor(T,...)or U
U:run()
return U
end


function E.constructor(T,U)
S.constructor(T,U)
T.root=U.PrimaryPart or U:WaitForChild("RushNew",5)
assert(T.root,"["..T:__tostring().."] is missing a root part!")

T.name=T.instance.Name=="RushMoving"and"Rush"or"Ambush"
T.quad=Drawing.new"Quad"
T._maid:add(function()
T.quad:Remove()
end)
end


function E.onStart(T)
E.attached[T.instance]=T
S.onStart(T)

local U=T.quad
U.Visible=false
U.Thickness=1
U.Color=T.name=="Rush"and Options["esp.rush.rush-color"].Value
or Options["esp.rush.ambush-color"].Value

task.delay(0.5,function()
local V=(A.attached.root.Position-T.root.Position).Magnitude
if V<=750 then
O(Toggles["alerts.entity"].Value,{
message=T.name=="Rush"and"Rush spawned, hide in a Wardrobe or get behind cover!"
or"Ambush spawned, hide in a Wardrobe or get behind cover! Ambush can return up to 4 times.",
audio=true,
duration=10,
})
else
T:destroy()
end
end)
end

function E.onRender(T,U)
local V=T.quad
if Toggles["esp.rush.enabled"].Value then
local W=T.root.CFrame
local X=P(s,(W*ac).Position)
local Y=P(s,(W*ad).Position)
local Z=P(s,(W*af).Position)
local _=P(s,(W*ae).Position)
if R(X.Z,Y.Z,Z.Z,_.Z)>0 then
V.PointA=Q(Y.X,Y.Y)
V.PointB=Q(X.X,X.Y)
V.PointC=Q(_.X,_.Y)
V.PointD=Q(Z.X,Z.Y)
V.Visible=true
else
V.Visible=false
end
else
V.Visible=false
end
end


function E.destroy(T)
E.attached[T.instance]=nil
S.destroy(T)
end
end



do

local aa=Vector3.new(6,13,0)
local ab=Vector3.new(0,-1,0)
local ac,ad,ae,af=
CFrame.new(ab.X-(aa.X/2),ab.Y+(aa.Y/2),ab.Z),
CFrame.new(ab.X+(aa.X/2),ab.Y+(aa.Y/2),ab.Z),
CFrame.new(ab.X-(aa.X/2),ab.Y-(aa.Y/2),ab.Z),
CFrame.new(ab.X+(aa.X/2),ab.Y-(aa.Y/2),ab.Z)
local P=s.WorldToViewportPoint
local Q=Vector2.new
local R=math.min

local S=q
F=setmetatable({},{__index=S})
F.__index=F

function F.__tostring(T)
return"FigureComponent - "..T.instance:GetFullName()
end
F.attached={}


function F.new(T,...)
local U=setmetatable({},F)
U=U:constructor(T,...)or U
U:run()
return U
end


function F.constructor(T,U)
S.constructor(T,U)
T.ragdoll=U:WaitForChild("FigureRagdoll",2.5)
assert(T.ragdoll~=nil,"["..T:__tostring().."] is missing its ragdoll!")
T.root=T.ragdoll:WaitForChild("Root",2.5)
assert(T.root~=nil,"["..T:__tostring().."] is missing its root part!")

T.quad=Drawing.new"Quad"
T._maid:add(function()
T.quad:Remove()
end)
end


function F.onStart(T)
F.attached[T.instance]=T
S.onStart(T)

local U=T.quad
U.Visible=false
U.Thickness=2
end

function F.onRender(T,U)
local V=T.quad
if Toggles["esp.figure.enabled"].Value then
local W=T.root.CFrame
local X=P(s,(W*ac).Position)
local Y=P(s,(W*ad).Position)
local Z=P(s,(W*af).Position)
local _=P(s,(W*ae).Position)
if R(X.Z,Y.Z,Z.Z,_.Z)>0 then
V.PointA=Q(Y.X,Y.Y)
V.PointB=Q(X.X,X.Y)
V.PointC=Q(_.X,_.Y)
V.PointD=Q(Z.X,Z.Y)
V.Color=Options["esp.figure.color"].Value
V.Visible=true
else
V.Visible=false
end
else
V.Visible=false
end
end


function F.destroy(T)
F.attached[T.instance]=nil
S.destroy(T)
end
end



do

local aa=CFrame.new(0,0,1)
local ab=s.WorldToViewportPoint
local ac=Vector2.new
local ad=math.min

local ae=q
G=setmetatable({},{__index=ae})
G.__index=G

function G.__tostring(af)
return"DoorComponent - "..af.instance:GetFullName()
end
G.attached={}


function G.new(af,...)
local P=setmetatable({},G)
P=P:constructor(af,...)or P
P:run()
return P
end


function G.constructor(af,P,Q)
ae.constructor(af,P)
af.id=Q or 0

local R=P.Size*0.5
local S=P.CFrame*aa
af.tl=(S*CFrame.new(R.X,R.Y,0)).Position
af.tr=(S*CFrame.new(-R.X,R.Y,0)).Position
af.bl=(S*CFrame.new(R.X,-R.Y,0)).Position
af.br=(S*CFrame.new(-R.X,-R.Y,0)).Position

af.quad=Drawing.new"Quad"
af._maid:add(function()
af.quad:Remove()
end)
end


function G.onStart(af)
G.attached[af.instance]=af
ae.onStart(af)

local P=af.quad
P.Visible=false
P.Thickness=2
end

function G.onRender(af,P)
local Q=af.quad
if Toggles["esp.door.enabled"].Value then
local R=ab(s,af.tl)
local S=ab(s,af.tr)
local T=ab(s,af.br)
local U=ab(s,af.bl)
if ad(R.Z,S.Z,T.Z,U.Z)>0 then
Q.PointA=ac(S.X,S.Y)
Q.PointB=ac(R.X,R.Y)
Q.PointC=ac(U.X,U.Y)
Q.PointD=ac(T.X,T.Y)

local V=af.id-t.LatestRoom.Value
if V==0 then
Q.Color=Options["esp.door.target-color"].Value
else
Q.Color=Options["esp.door.default-color"].Value
if V<0 then
Q.Transparency=0.5
else
Q.Transparency=1.0
end
end

Q.Visible=true
else
Q.Visible=false
end
else
Q.Visible=false
end
end


function G.destroy(af)
G.attached[af.instance]=nil
ae.destroy(af)
end
end



do

local aa=Vector3.new(6.4,9.5,0)
local ab=Vector3.new(0,0,-0.5)
local ac,ad,ae,af=
CFrame.new(ab.X-(aa.X/2),ab.Y+(aa.Y/2),ab.Z),
CFrame.new(ab.X+(aa.X/2),ab.Y+(aa.Y/2),ab.Z),
CFrame.new(ab.X-(aa.X/2),ab.Y-(aa.Y/2),ab.Z),
CFrame.new(ab.X+(aa.X/2),ab.Y-(aa.Y/2),ab.Z)
local P=s.WorldToViewportPoint
local Q=Vector2.new
local R=math.min

local S=q
H=setmetatable({},{__index=S})
H.__index=H

function H.__tostring(T)
return"WardrobeComponent - "..T.instance:GetFullName()
end
H.attached={}


function H.new(T,...)
local U=setmetatable({},H)
U=U:constructor(T,...)or U
U:run()
return U
end


function H.constructor(T,U,V)
S.constructor(T,U)
T.id=V
T.root=U:WaitForChild("Main",5)
T.occupant=U:WaitForChild("HiddenPlayer",5)

T.quad=Drawing.new"Quad"
T._maid:add(function()
T.quad:Remove()
end)
end


function H.onStart(T)
H.attached[T.instance]=T
S.onStart(T)

local U=T.quad
U.Visible=false
U.Thickness=2
end

function H.onRender(T,U)
local V=T.quad
if Toggles["esp.wardrobe.enabled"].Value then
local W=T.root.CFrame
local X=P(s,(W*ac).Position)
local Y=P(s,(W*ad).Position)
local Z=P(s,(W*af).Position)
local _=P(s,(W*ae).Position)
if R(X.Z,Y.Z,Z.Z,_.Z)>0 then
V.PointA=Q(Y.X,Y.Y)
V.PointB=Q(X.X,X.Y)
V.PointC=Q(_.X,_.Y)
V.PointD=Q(Z.X,Z.Y)
V.Color=Options["esp.wardrobe.color"].Value
if T.occupant.Value then
V.Transparency=0.10
elseif t.LatestRoom.Value-T.id>1 then
V.Transparency=0.25
else
V.Transparency=0.60
end
V.Visible=true
else
V.Visible=false
end
else
V.Visible=false
end
end


function H.destroy(T)
H.attached[T.instance]=nil
S.destroy(T)
end
end



do

local aa=s.WorldToViewportPoint
local ab=Vector2.new
local ac=ab(0,3)

local ad=q
I=setmetatable({},{__index=ad})
I.__index=I

function I.__tostring(ae)
return"InteractableComponent - "..ae.instance:GetFullName()
end
I.attached={}


function I.new(ae,af,...)
local P=setmetatable({},I)
P=P:constructor(ae,af,...)or P
P:run()
return P
end


function I.constructor(ae,af,P)
ad.constructor(ae,af)
ae.name=P
ae.label=Drawing.new"Text"
ae.circle=Drawing.new"Circle"
ae.outline=Drawing.new"Circle"
ae._maid:add(function()
ae.label:Remove()
ae.circle:Remove()
ae.outline:Remove()
end)
ae._maid:add(af.AncestryChanged:Connect(function(Q,R)
if R==nil then
ae:destroy()
end
end))
end


function I.onStart(ae)
I.attached[ae.instance]=ae
ad.onStart(ae)

local af,P,Q=ae.label,ae.circle,ae.outline
af.Text=ae.name
af.Size=18
af.Center=true
af.Outline=true
af.Visible=false

P.Thickness=1
P.NumSides=6
P.Radius=5
P.Filled=true
P.Visible=false

Q.Color=Color3.new()
Q.Thickness=1.5
Q.NumSides=6
Q.Radius=5
Q.Filled=false
Q.Visible=false
Q.ZIndex=2
end

function I.onRender(ae,af)
local P,Q,R=ae.label,ae.circle,ae.outline
if ae:isVisualEnabled()then
local S=aa(s,ae.instance.Position)
local T=S.Z>0
if T then
local U=ab(S.X,S.Y)
P.Position=U+ac
Q.Position=U
R.Position=U

local V=ae:getColor()
P.Color=V
Q.Color=V
end
P.Visible=T
Q.Visible=T
R.Visible=T
else
P.Visible=false
Q.Visible=false
R.Visible=false
end
end


function I.isVisualEnabled(ae)
return Toggles["esp.interactable.enabled"].Value
end

function I.getColor(ae)
return Options["esp.interactable.color"].Value
end

function I.destroy(ae)
I.attached[ae.instance]=nil
ad.destroy(ae)
end
end



do
local aa=I
J=setmetatable({},{__index=aa})
J.__index=J

function J.__tostring(ab)
return"ObtainableComponent - "..ab.instance:GetFullName()
end
J.attached={}


function J.new(ab,ac,...)
local ad=setmetatable({},J)
ad=ad:constructor(ab,ac,...)or ad
ad:run()
return ad
end


function J.constructor(ab,ac,ad)
aa.constructor(ab,ac,ad)
end


function J.onStart(ab)
J.attached[ab.instance]=ab
aa.onStart(ab)
local ac,ad,ae=ab.label,ab.circle,ab.outline
ad.NumSides=5
ae.NumSides=5
end


function J.isVisualEnabled(ab)
return Toggles["esp.obtainable.enabled"].Value
end

function J.getColor(ab)
return Options["esp.obtainable.color"].Value
end

function J.destroy(ab)
J.attached[ab.instance]=nil
aa.destroy(ab)
end
end



do

local aa=q
K=setmetatable({},{__index=aa})
K.__index=K

function K.__tostring(ab)
return"RoomComponent - "..ab.instance:GetFullName()
end
K.attached={}


function K.new(ab,...)
local ac=setmetatable({},K)
ac=ac:constructor(ab,...)or ac
ac:run()
return ac
end


function K.constructor(ab,ac)
aa.constructor(ab,ac)
ab.id=tonumber(ac.Name)
ab.assets=ac:WaitForChild("Assets",5)
end


function K.onStart(ab)
K.attached[ab.instance]=ab
aa.onStart(ab)


if ab.id==50 or ab.id==100 then
task.defer(ab.onFigure,ab)
end
local ac=ab.instance:WaitForChild("RoomExit",5)
if ac then
G.new(ac,ab.id)
end


ab._maid:add(ab.instance.DescendantAdded:Connect(function(ad)
ab:onDescendant(ad)
end))
for ad,ae in ipairs(ab.instance:GetDescendants())do
ab:onDescendant(ae)
if ad%1000==0 then
task.wait()
end
end
end

function K.onDescendant(ab,ac)
local ad=ac.Parent
local ae=ad.Name
local af=ac.Name
if af=="Main"then
if ae=="LeverForGate"then
I.new(ac,"Lever")
elseif ae=="Lighter"then
J.new(ac,"Lighter")
elseif ae=="Vitamins"then
J.new(ac,"Vitamins")
elseif ae=="Lockpick"then
J.new(ac,"Lockpicks")
elseif ae=="Bandage"then
J.new(ac,"Bandages")
elseif ae=="Battery"then
J.new(ac,"Batteries")
end
elseif af=="Base"then
if ae=="LiveHintBook"then
J.new(ac,"Book")
elseif ae=="LiveBreakerPolePickup"then
J.new(ac,"Fuse")
end
elseif af=="Holder"then
if ae=="CrucifixWall"then
J.new(ac,"Crucifix")
end
elseif af=="Lock"then
if ae=="Door"then
I.new(ac,"Lock")
end
elseif ae=="KeyObtain"then
if af=="Hitbox"then
J.new(ac,"Key")
end
elseif af=="Wardrobe"then
H.new(ac,ab.id)
elseif af=="Toolshed"then
H.new(ac,ab.id)
elseif af=="Hitbox"then
if ae=="GoldPile"then

end
end
end

function K.onFigure(ab)
local ac=ab.instance:WaitForChild("FigureSetup",5)
F.new(ac)
end


function K.destroy(ab)
K.attached[ab.instance]=nil
aa.destroy(ab)
end
end







m:SetWatermark"Linoria Community (TerminalVibes)"
m:Notify"Loading UI..."

do
local aa=m:CreateWindow(g.." ("..h..")")

do
local ab=aa:AddTab"Gameplay"

do
local ac=ab:AddLeftGroupbox"Character Mods"
ac:AddToggle(
"character.sprint.enabled",
{Text="Sprint Enabled",Default=false,Tooltip="Enables Sprinting by pressing the Keybind"}
):AddKeyPicker("character.sprint.keybind",{Text="Sprint",Default="LeftShift"})
ac:AddSlider(
"character.sprint.speed",
{Text="Sprint Boost (in seconds)",Min=0,Max=7.5,Default=0,Rounding=1,Suffix=" studs"}
)
ac:AddToggle(
"character.glow.enabled",
{Text="Body Glow",Default=false,Tooltip="Adds a subtle glow for better vision"}
)
ac:AddSlider(
"character.glow.brightness",
{Text="Glow Brightness",Min=0,Max=100,Default=0,Rounding=0,Suffix=""}
)
end

do
local ac=ab:AddLeftGroupbox"Gameplay Mods"
ac:AddToggle("gameplay.heartbeat.enabled",{
Text="Heartbeat Minigame (WIP)",
Default=false,
Tooltip="Automatically does Heartbeat inputs for you.",
})
ac:AddToggle("gameplay.parser.enabled",{
Text="Code Parser",
Default=false,
Tooltip="Automatically parses the Library padlock code as you obtain clues.",
}):AddKeyPicker("gameplay.parser.keybind",{
Text="Parse Code",
Default="P",
NoUI=true,
Mode="Toggle",
})
ac:AddToggle("gameplay.breaker.enabled",{
Default=false,
Tooltip="Notifies you of Electrical Breaker code when it generates.",
}):AddKeyPicker("gameplay.breaker.keybind",{
Default="B",
NoUI=true,
Mode="Toggle",
})
end

do
local ac=ab:AddRightTabbox"Alerts"

local ad=ac:AddTab"Alerts"
ad:AddToggle(
"alerts.enabled",
{Text="Alerts Enabled",Default=true,Tooltip="Master toggle for all script alerts."}
)
ad:AddToggle("alerts.audio",{
Text="Enable Sound",
Default=true,
Tooltip="Plays a sound when an important alert is triggered.",
})

local ae=ac:AddTab"Advanced"
ae:AddToggle(
"alerts.debug",
{Text="Debug Alerts",Default=true,Tooltip="Enabled alerts related to script status."}
)
ae:AddToggle(
"alerts.entity",
{Text="Entity Alerts",Default=true,Tooltip="Enabled alerts about entities spawning."}
)
end
end

do
local ab=aa:AddTab"Visuals"

do
local ac=ab:AddLeftTabbox"ESP"

local ad=ac:AddTab"Entity ESP"
do
ad:AddToggle(
"esp.player.enabled",
{Text="Player ESP",Default=true,Tooltip="ESP for other players"}
):AddColorPicker("esp.player.color",{
Title="Player ESP Color",
Default=Color3.new(1,1,1),
})
ad:AddToggle(
"esp.screech.enabled",
{Text="Screech ESP",Default=true,Tooltip="Tracer ESP for Screech entities"}
):AddColorPicker("esp.screech.color",{
Title="Screech ESP Color",
Default=Color3.new(1,0,0),
})
ad:AddToggle(
"esp.rush.enabled",
{Text="Rush/Ambush ESP",Default=true,Tooltip="ESP for both Rush and Ambush entities"}
)
:AddColorPicker("esp.rush.rush-color",{
Title="Rush ESP Color",
Default=Color3.new(1,0,0),
})
:AddColorPicker("esp.rush.ambush-color",{
Title="Ambush ESP Color",
Default=Color3.new(0,1,0),
})
ad:AddToggle(
"esp.figure.enabled",
{Text="Figure ESP",Default=true,Tooltip="ESP for the Figure entity"}
):AddColorPicker("esp.figure.color",{
Title="Figure ESP Color",
Default=Color3.new(0.75,0.25,0.25),
})
ad
:AddToggle(
"esp.snare.enabled",
{Text="Snare ESP",Default=true,Tooltip="ESP for snare traps"}
)
:AddColorPicker("esp.snare.color",{
Title="Snare ESP Color",
Default=Color3.new(1,0,0),
})
end

local ae=ac:AddTab"Object ESP"
do
ae:AddToggle("esp.door.enabled",{Text="Door ESP",Default=false,Tooltip="ESP for doors"})
:AddColorPicker("esp.door.default-color",{
Title="Other Doors ESP Color",
Default=Color3.new(0,0.3,0.75),
})
:AddColorPicker("esp.door.target-color",{
Title="Current Door ESP Color",
Default=Color3.new(0,1,0),
})
ae:AddToggle(
"esp.wardrobe.enabled",
{Text="Wardrobe ESP",Default=false,Tooltip="ESP for Wardrobe"}
):AddColorPicker("esp.wardrobe.color",{
Title="Wardrobe ESP Color",
Default=Color3.new(0,1,0.9),
})
ae:AddToggle(
"esp.interactable.enabled",
{Text="Interactable ESP",Default=true,Tooltip="ESP for interactable items"}
):AddColorPicker("esp.interactable.color",{
Title="Interactable ESP Color",
Default=Color3.new(1,1,1),
})
ae:AddToggle(
"esp.obtainable.enabled",
{Text="Obtainable ESP",Default=true,Tooltip="ESP for items that can be picked up"}
):AddColorPicker("esp.obtainable.color",{
Title="Obtainable ESP Color",
Default=Color3.new(1,1,0),
})
end
end
end

do
local ab=aa:AddTab"Credits"

local ac=ab:AddLeftGroupbox"Credits"
ac:AddLabel"TerminalVibes - Creator"
ac:AddLabel"Inori @v3rm - UI Library"
ac:AddDivider()
ac:AddLabel"Contributors:"
ac:AddLabel"> IAmAGoodScammer @v3rm"
ac:AddLabel"> brickmane @v3rm"
ac:AddLabel"> yuuiz#1336 @Discord"
ac:AddDivider()
ac:AddLabel"Donators:"
ac:AddLabel"> reversing#2937 @Discord"

local ad=ab:AddRightGroupbox"Socials"
ad:AddButton{
Text="Discord Server",
Func=function()
setclipboard"https://discord.gg/8PATx7UKXZ"
end,
}
end

do
local ab=aa:AddTab"Settings"

o:SetLibrary(m)
n:SetLibrary(m)

o:SetFolder(i)
n:SetFolder(i.."/"..j)

n:IgnoreThemeSettings()
n:SetIgnoreIndexes{"MenuKeybind"}

n:BuildConfigSection(ab)
o:ApplyToTab(ab)

local ac=ab:AddLeftGroupbox"Menu"
ac:AddButton("Unload",function()
m:Unload()
end)
ac:AddLabel"Menu bind":AddKeyPicker("MenuKeybind",{Default="End",NoUI=true,Text="Menu keybind"})

ac:AddToggle("Keybinds",{Text="Show Keybinds Menu",Default=true}):OnChanged(function()
m.KeybindFrame.Visible=Toggles.Keybinds.Value
end)
ac:AddToggle("Watermark",{Text="Show Watermark",Default=true}):OnChanged(function()
m:SetWatermarkVisibility(Toggles.Watermark.Value)
end)
end
end

m:Notify"UI Built! [Right Ctrl or Right Shift]"
n:LoadAutoloadConfig()










local aa=function()
s=f.CurrentCamera or s
end
f:GetPropertyChangedSignal"CurrentCamera":Connect(aa)

local ab=function(ab)
if ab.Name=="Screech"then
D.new(ab)
end
end
s.ChildAdded:Connect(ab)

local ac=function(ac)
local ad=ac.Name
if ad=="RushMoving"or ac.Name=="AmbushMoving"then
E.new(ac)
elseif ad=="Eyes"then
O(Toggles["alerts.entity"].Value,{
message="Eyes spawned, look away from it!",
audio=true,
duration=5,
})
end
end
f.ChildAdded:Connect(ac)

local ad=function(ad)
K.new(ad)
end
f.CurrentRooms.ChildAdded:Connect(ad)
for ae,af in ipairs(f.CurrentRooms:GetChildren())do
ad(af)
end



local P=function()
O(Toggles["alerts.entity"].Value,{
message="Screech spawned, turn around and look at it!",
audio=true,
duration=5,
})
end
u.Screech.OnClientEvent:Connect(P)

local Q=function(Q,R)
if Q and R then
w[Q]=tostring(R)
end
end
u.PadlockHint.OnClientEvent:Connect(Q)



local R=function(R)
for S,T in ipairs(L)do
for U,V in pairs(T.attached)do
V:onTick(R)
end
end
end
local S=function(S)
for T,U in ipairs(M)do
for V,W in pairs(U.attached)do
W:onRender(S)
end
end
end
local T=function(T,U)
for V,W in ipairs(N)do
for X,Y in pairs(W.attached)do
Y:onPhysics(T,U)
end
end
local X=A.attached
if X then
X:onPhysics(T,U)
end
end

d.Heartbeat:Connect(R)
d.RenderStepped:Connect(S)
d.Stepped:Connect(T)



Options["gameplay.parser.keybind"]:OnClick(function()
if t.LatestRoom.Value==50 then
local U=""
for V =1,5 do
local W=w[x[V] ]
U=U..(W~=nil and W or"_")
end
O(Toggles["gameplay.parser.enabled"].Value,{
message="[Code Parser]: "..U,
audio=false,
duration=7.5,
})
end
end)

Options["gameplay.breaker.keybind"]:OnClick(function()
local U=""
for V =1,#y do
local W,X=unpack(y[V])
if X then
U=U..tostring(W).." "
end
end
O(Toggles["gameplay.breaker.enabled"].Value,{
message="[Breaker Code]: "..U,
audio=false,
duration=7.5,
})
end)







task.defer(function()
local U
repeat
task.wait(0.5)
for V,W in pairs(getconnections(u.EngageMinigame.OnClientEvent))do
local X=W.Function
if X then
local Y=getfenv(X).script
if Y.Name=="MinigameHandler"then
local Z=debug.getupvalue(X,1)
if type(Z)=="function"then
U=Z
end
end
end
if V%2000==0 then
task.wait()
end
end
until U~=nil

local V
repeat
V=debug.getupvalue(U,7)
until V~=nil

debug.setupvalue(U,7,function(W,...)
local X=V(W,...)
y=W
task.delay(0.1,function()
syn.set_thread_identity(7)
local Y=""
for Z =1,#y do
local _,ag=unpack(y[Z])
if ag then
Y=Y..tostring(_).." "
end
end
O(Toggles["gameplay.breaker.enabled"].Value,{
message="[Breaker Code]: "..Y,
audio=false,
duration=7.5,
})
syn.set_thread_identity(2)
end)
return X
end)
end)







table.insert(M,B)
table.insert(M,D)
table.insert(M,E)
table.insert(M,F)
table.insert(M,G)
table.insert(M,H)
table.insert(M,I)

v.Name="Main"
v.SoundId="rbxassetid://6026984224"
v.Volume=6
v.Parent=e

do
local ag=game.PlaceId
local U=game.PlaceVersion
local V=k[ag]
if U>V then
m:Notify"Game has been updated! Please be careful when using this script."
m:Notify"The place ID and Version has been copied to your clipboard."
setclipboard("["..tostring(ag).."] = "..tostring(U)..",")
end
end

return m:Notify("["..g.."] Loaded! ("..h..")")
