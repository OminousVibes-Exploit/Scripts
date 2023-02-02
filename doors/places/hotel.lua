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


local y
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

local K={}
local L={}
local M={}local N=function(







N, O)
if N and Toggles["alerts.enabled"].Value then
local P={
message=O.message or"",
audio=O.audio or false,
duration=O.duration or 5,
}

m:Notify(P.message,P.duration)
if P.audio and Toggles["alerts.audio"].Value then
v.TimePosition=0.25
v:Play()
end
end end










do
local O=q
y=setmetatable({},{__index=O})
y.__index=y

function y.__tostring(P)
return"CharacterComponent - "..P.instance:GetFullName()
end
y.attached={}


function y.new(P,...)
local Q=setmetatable({},y)
Q=Q:constructor(P,...)or Q
Q:run()
return Q
end


function y.constructor(P,Q)
O.constructor(P,Q)
P.client=B.attached[b:GetPlayerFromCharacter(Q)]
P.root=Q:WaitForChild("HumanoidRootPart",5)
P.humanoid=Q:WaitForChild("Humanoid",5)

assert(P.client~=nil,"["..P:__tostring().."] is not a client's character")
assert(P.root~=nil,"["..P:__tostring().."] is missing a HumanoidRootPart")
assert(P.humanoid~=nil,"["..P:__tostring().."] is missing a Humanoid")

P._maid:add(Q.AncestryChanged:Connect(function(R,S)
if S==nil then
P:destroy()
end
end))
end


function y.onStart(P)
y.attached[P.instance]=P
O.onStart(P)
end


function y.destroy(P)
y.attached[P.instance]=nil
O.destroy(P)
end
end



do

local O=Vector3.new(1,0,1)

local P=y
z=setmetatable({},{__index=P})
z.__index=z

function z.__tostring(Q)
return"AvatarComponent - "..Q.instance:GetFullName()
end
z.attached=nil


function z.new(Q,...)
local R=setmetatable({},z)
R=R:constructor(Q,...)or R
R:run()
return R
end


function z.constructor(Q,R)
P.constructor(Q,R)
Q.light=Instance.new"PointLight"
end


function z.onStart(Q)
z.attached=Q
P.onStart(Q)

local R=Q.light
R.Enabled=false
R.Range=100
R.Color=Color3.fromRGB(255,255,255)
R.Shadows=false
R.Parent=Q.root

while Q.running do
R.Enabled=Toggles["character.glow.enabled"].Value
R.Brightness=Options["character.glow.brightness"].Value/50
task.wait(0.5)
end
end

function z.onPhysics(Q,R,S)
local T=Options["character.sprint.speed"].Value
if
T>0
and Toggles["character.sprint.enabled"].Value
and Options["character.sprint.keybind"]:GetState()
then
local U=Q.humanoid.MoveDirection*O
if U.Magnitude>0 then
Q.instance:TranslateBy(U*T*S)
end
end
end


function z.destroy(Q)
z.attached=nil
P.destroy(Q)
end
end



do

local O=Vector3.new(5,7,0)
local P=Vector3.new(0,-0.25,0)
local Q,R,S,T=
CFrame.new(P.X-(O.X/2),P.Y+(O.Y/2),P.Z),
CFrame.new(P.X+(O.X/2),P.Y+(O.Y/2),P.Z),
CFrame.new(P.X-(O.X/2),P.Y-(O.Y/2),P.Z),
CFrame.new(P.X+(O.X/2),P.Y-(O.Y/2),P.Z)
local U=s.WorldToViewportPoint
local V=Vector2.new
local W=math.min

local X=y
A=setmetatable({},{__index=X})
A.__index=A

function A.__tostring(Y)
return"FriendComponent - "..Y.instance:GetFullName()
end
A.attached={}


function A.new(Y,...)
local Z=setmetatable({},A)
Z=Z:constructor(Y,...)or Z
Z:run()
return Z
end


function A.constructor(Y,Z)
X.constructor(Y,Z)
Y.quad=Drawing.new"Quad"
Y._maid:add(function()
Y.quad:Remove()
end)
end


function A.onStart(Y)
A.attached[Y.instance]=Y
X.onStart(Y)

local Z=Y.quad
Z.Visible=false
Z.Thickness=1
Z.Transparency=0.75
end

function A.onRender(Y,Z)
local _=Y.quad
if Toggles["esp.player.enabled"].Value then
local aa=Y.root.CFrame
local ab=U(s,(aa*Q).Position)
local ac=U(s,(aa*R).Position)
local ad=U(s,(aa*T).Position)
local ae=U(s,(aa*S).Position)
if W(ab.Z,ac.Z,ad.Z,ae.Z)>0 then
_.PointA=V(ac.X,ac.Y)
_.PointB=V(ab.X,ab.Y)
_.PointC=V(ae.X,ae.Y)
_.PointD=V(ad.X,ad.Y)
_.Color=Options["esp.player.color"].Value
_.Visible=true
else
_.Visible=false
end
else
_.Visible=false
end
end


function A.destroy(aa)
A.attached[aa.instance]=nil
X.destroy(aa)
end
end



do
local aa=q
B=setmetatable({},{__index=aa})
B.__index=B

function B.__tostring(ab)
return"ClientComponent - "..ab.instance:GetFullName()
end
B.attached={}


function B.new(ab,...)
local ac=setmetatable({},B)
ac=ac:constructor(ab,...)or ac
ac:run()
return ac
end


function B.constructor(ab,ac)
aa.constructor(ab,ac)
end


function B.onStart(ab)
B.attached[ab.instance]=ab
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

function B.onCharacter(ab,ac)
if ab.instance==r then
ab.character=z.new(ac)
else
ab.character=A.new(ac)
end
end

function B.onTool(ab,ac)
if ac.Name=="LibraryHintPaper"then
local ad=ac:WaitForChild("UI",1)
if ad then
local ae={}
for O =1,5 do
local P=ad:FindFirstChild(tostring(O))
if P then
local Q=P.ImageRectOffset.X/50
ae[O]=Q
end
end
x=ae
end
end
end


function B.destroy(ab)
B.attached[ab.instance]=nil
aa.destroy(ab)
end


local ab=function(ab)
B.new(ab)
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
C=setmetatable({},{__index=ae})
C.__index=C

function C.__tostring(O)
return"ScreechComponent - "..O.instance:GetFullName()
end
C.attached={}


function C.new(O,...)
local P=setmetatable({},C)
P=P:constructor(O,...)or P
P:run()
return P
end


function C.constructor(O,P)
ae.constructor(O,P)
O.root=P:WaitForChild"Root"
O.line=Drawing.new"Line"
O.outline=Drawing.new"Line"
O._maid:add(function()
O.line:Remove()
O.outline:Remove()
end)
end


function C.onStart(O)
C.attached[O.instance]=O
ae.onStart(O)

local P,Q=O.line,O.outline
P.Visible=false
P.Color=Options["esp.screech.color"].Value
P.ZIndex=1
P.Thickness=1

Q.Visible=false
Q.Color=Color3.new()
Q.ZIndex=0
Q.Thickness=2
end

function C.onRender(O,P)
local Q=Toggles["esp.screech.enabled"].Value
local R,S=O.line,O.outline
if Q then
local T=O.root.Position
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


function C.destroy(O)
C.attached[O.instance]=nil
ae.destroy(O)
end
end



do

local aa=Vector3.new(4,6,0)
local ab=Vector3.new(0,0,0)
local ac,ad,ae,O=
CFrame.new(ab.X-(aa.X/2),ab.Y+(aa.Y/2),ab.Z),
CFrame.new(ab.X+(aa.X/2),ab.Y+(aa.Y/2),ab.Z),
CFrame.new(ab.X-(aa.X/2),ab.Y-(aa.Y/2),ab.Z),
CFrame.new(ab.X+(aa.X/2),ab.Y-(aa.Y/2),ab.Z)
local P=s.WorldToViewportPoint
local Q=Vector2.new
local R=math.min

local S=q
D=setmetatable({},{__index=S})
D.__index=D

function D.__tostring(T)
return"RushComponent - "..T.instance:GetFullName()
end
D.attached={}


function D.new(T,...)
local U=setmetatable({},D)
U=U:constructor(T,...)or U
U:run()
return U
end


function D.constructor(T,U)
S.constructor(T,U)
T.root=U.PrimaryPart or U:WaitForChild("RushNew",5)
assert(T.root,"["..T:__tostring().."] is missing a root part!")

T.name=T.instance.Name=="RushMoving"and"Rush"or"Ambush"
T.quad=Drawing.new"Quad"
T._maid:add(function()
T.quad:Remove()
end)
end


function D.onStart(T)
D.attached[T.instance]=T
S.onStart(T)

local U=T.quad
U.Visible=false
U.Thickness=1
U.Color=T.name=="Rush"and Options["esp.rush.rush-color"].Value
or Options["esp.rush.ambush-color"].Value

task.delay(0.5,function()
local V=(z.attached.root.Position-T.root.Position).Magnitude
if V<=750 then
N(Toggles["alerts.entity"].Value,{
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

function D.onRender(T,U)
local V=T.quad
if Toggles["esp.rush.enabled"].Value then
local W=T.root.CFrame
local X=P(s,(W*ac).Position)
local Y=P(s,(W*ad).Position)
local Z=P(s,(W*O).Position)
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


function D.destroy(T)
D.attached[T.instance]=nil
S.destroy(T)
end
end



do

local aa=Vector3.new(6,13,0)
local ab=Vector3.new(0,-1,0)
local ac,ad,ae,O=
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
return"FigureComponent - "..T.instance:GetFullName()
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
T.ragdoll=U:WaitForChild("FigureRagdoll",2.5)
assert(T.ragdoll~=nil,"["..T:__tostring().."] is missing its ragdoll!")
T.root=T.ragdoll:WaitForChild("Root",2.5)
assert(T.root~=nil,"["..T:__tostring().."] is missing its root part!")

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
U.Thickness=2
end

function E.onRender(T,U)
local V=T.quad
if Toggles["esp.figure.enabled"].Value then
local W=T.root.CFrame
local X=P(s,(W*ac).Position)
local Y=P(s,(W*ad).Position)
local Z=P(s,(W*O).Position)
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


function E.destroy(T)
E.attached[T.instance]=nil
S.destroy(T)
end
end



do

local aa=CFrame.new(0,0,1)
local ab=s.WorldToViewportPoint
local ac=Vector2.new
local ad=math.min

local ae=q
F=setmetatable({},{__index=ae})
F.__index=F

function F.__tostring(O)
return"DoorComponent - "..O.instance:GetFullName()
end
F.attached={}


function F.new(O,...)
local P=setmetatable({},F)
P=P:constructor(O,...)or P
P:run()
return P
end


function F.constructor(O,P,Q)
ae.constructor(O,P)
O.id=Q or 0

local R=P.Size*0.5
local S=P.CFrame*aa
O.tl=(S*CFrame.new(R.X,R.Y,0)).Position
O.tr=(S*CFrame.new(-R.X,R.Y,0)).Position
O.bl=(S*CFrame.new(R.X,-R.Y,0)).Position
O.br=(S*CFrame.new(-R.X,-R.Y,0)).Position

O.quad=Drawing.new"Quad"
O._maid:add(function()
O.quad:Remove()
end)
end


function F.onStart(O)
F.attached[O.instance]=O
ae.onStart(O)

local P=O.quad
P.Visible=false
P.Thickness=2
end

function F.onRender(O,P)
local Q=O.quad
if Toggles["esp.door.enabled"].Value then
local R=ab(s,O.tl)
local S=ab(s,O.tr)
local T=ab(s,O.br)
local U=ab(s,O.bl)
if ad(R.Z,S.Z,T.Z,U.Z)>0 then
Q.PointA=ac(S.X,S.Y)
Q.PointB=ac(R.X,R.Y)
Q.PointC=ac(U.X,U.Y)
Q.PointD=ac(T.X,T.Y)

local V=O.id-t.LatestRoom.Value
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


function F.destroy(O)
F.attached[O.instance]=nil
ae.destroy(O)
end
end



do

local aa=Vector3.new(6.4,9.5,0)
local ab=Vector3.new(0,0,-0.5)
local ac,ad,ae,O=
CFrame.new(ab.X-(aa.X/2),ab.Y+(aa.Y/2),ab.Z),
CFrame.new(ab.X+(aa.X/2),ab.Y+(aa.Y/2),ab.Z),
CFrame.new(ab.X-(aa.X/2),ab.Y-(aa.Y/2),ab.Z),
CFrame.new(ab.X+(aa.X/2),ab.Y-(aa.Y/2),ab.Z)
local P=s.WorldToViewportPoint
local Q=Vector2.new
local R=math.min

local S=q
G=setmetatable({},{__index=S})
G.__index=G

function G.__tostring(T)
return"WardrobeComponent - "..T.instance:GetFullName()
end
G.attached={}


function G.new(T,...)
local U=setmetatable({},G)
U=U:constructor(T,...)or U
U:run()
return U
end


function G.constructor(T,U,V)
S.constructor(T,U)
T.id=V
T.root=U:WaitForChild("Main",5)
T.occupant=U:WaitForChild("HiddenPlayer",5)

T.quad=Drawing.new"Quad"
T._maid:add(function()
T.quad:Remove()
end)
end


function G.onStart(T)
G.attached[T.instance]=T
S.onStart(T)

local U=T.quad
U.Visible=false
U.Thickness=2
end

function G.onRender(T,U)
local V=T.quad
if Toggles["esp.wardrobe.enabled"].Value then
local W=T.root.CFrame
local X=P(s,(W*ac).Position)
local Y=P(s,(W*ad).Position)
local Z=P(s,(W*O).Position)
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


function G.destroy(T)
G.attached[T.instance]=nil
S.destroy(T)
end
end



do

local aa=s.WorldToViewportPoint
local ab=Vector2.new
local ac=ab(0,3)

local ad=q
H=setmetatable({},{__index=ad})
H.__index=H

function H.__tostring(ae)
return"InteractableComponent - "..ae.instance:GetFullName()
end
H.attached={}


function H.new(ae,O,...)
local P=setmetatable({},H)
P=P:constructor(ae,O,...)or P
P:run()
return P
end


function H.constructor(ae,O,P)
ad.constructor(ae,O)
ae.name=P
ae.label=Drawing.new"Text"
ae.circle=Drawing.new"Circle"
ae.outline=Drawing.new"Circle"
ae._maid:add(function()
ae.label:Remove()
ae.circle:Remove()
ae.outline:Remove()
end)
ae._maid:add(O.AncestryChanged:Connect(function(Q,R)
if R==nil then
ae:destroy()
end
end))
end


function H.onStart(ae)
H.attached[ae.instance]=ae
ad.onStart(ae)

local O,P,Q=ae.label,ae.circle,ae.outline
O.Text=ae.name
O.Size=18
O.Center=true
O.Outline=true
O.Visible=false

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

function H.onRender(ae,O)
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


function H.isVisualEnabled(ae)
return Toggles["esp.interactable.enabled"].Value
end

function H.getColor(ae)
return Options["esp.interactable.color"].Value
end

function H.destroy(ae)
H.attached[ae.instance]=nil
ad.destroy(ae)
end
end



do
local aa=H
I=setmetatable({},{__index=aa})
I.__index=I

function I.__tostring(ab)
return"ObtainableComponent - "..ab.instance:GetFullName()
end
I.attached={}


function I.new(ab,ac,...)
local ad=setmetatable({},I)
ad=ad:constructor(ab,ac,...)or ad
ad:run()
return ad
end


function I.constructor(ab,ac,ad)
aa.constructor(ab,ac,ad)
end


function I.onStart(ab)
I.attached[ab.instance]=ab
aa.onStart(ab)
local ac,ad,ae=ab.label,ab.circle,ab.outline
ad.NumSides=5
ae.NumSides=5
end


function I.isVisualEnabled(ab)
return Toggles["esp.obtainable.enabled"].Value
end

function I.getColor(ab)
return Options["esp.obtainable.color"].Value
end

function I.destroy(ab)
I.attached[ab.instance]=nil
aa.destroy(ab)
end
end



do

local aa=q
J=setmetatable({},{__index=aa})
J.__index=J

function J.__tostring(ab)
return"RoomComponent - "..ab.instance:GetFullName()
end
J.attached={}


function J.new(ab,...)
local ac=setmetatable({},J)
ac=ac:constructor(ab,...)or ac
ac:run()
return ac
end


function J.constructor(ab,ac)
aa.constructor(ab,ac)
ab.id=tonumber(ac.Name)
ab.assets=ac:WaitForChild("Assets",5)
end


function J.onStart(ab)
J.attached[ab.instance]=ab
aa.onStart(ab)


if ab.id==50 or ab.id==100 then
task.defer(ab.onFigure,ab)
end
local ac=ab.instance:WaitForChild("RoomExit",5)
if ac then
F.new(ac,ab.id)
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

function J.onDescendant(ab,ac)
local ad=ac.Parent
local ae=ad.Name
local O=ac.Name
if O=="Main"then
if ae=="LeverForGate"then
H.new(ac,"Lever")
elseif ae=="Lighter"then
I.new(ac,"Lighter")
elseif ae=="Vitamins"then
I.new(ac,"Vitamins")
elseif ae=="Lockpick"then
I.new(ac,"Lockpicks")
elseif ae=="Bandage"then
I.new(ac,"Bandages")
elseif ae=="Battery"then
I.new(ac,"Batteries")
end
elseif O=="Base"then
if ae=="LiveHintBook"then
I.new(ac,"Book")
elseif ae=="LiveBreakerPolePickup"then
I.new(ac,"Fuse")
end
elseif O=="Holder"then
if ae=="CrucifixWall"then
I.new(ac,"Crucifix")
end
elseif O=="Lock"then
if ae=="Door"then
H.new(ac,"Lock")
end
elseif ae=="KeyObtain"then
if O=="Hitbox"then
I.new(ac,"Key")
end
elseif O=="Wardrobe"then
G.new(ac,ab.id)
elseif O=="Toolshed"then
G.new(ac,ab.id)
elseif O=="Hitbox"then
if ae=="GoldPile"then

end
end
end

function J.onFigure(ab)
local ac=ab.instance:WaitForChild("FigureSetup",5)
E.new(ac)
end


function J.destroy(ab)
J.attached[ab.instance]=nil
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
Text="Electrical Breaker",
Default=false,
Tooltip="Notifies you of Electrical Breaker code when it generates.",
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
C.new(ab)
end
end
s.ChildAdded:Connect(ab)

local ac=function(ac)
local ad=ac.Name
if ad=="RushMoving"or ac.Name=="AmbushMoving"then
D.new(ac)
elseif ad=="Eyes"then
N(Toggles["alerts.entity"].Value,{
message="Eyes spawned, look away from it!",
audio=true,
duration=5,
})
end
end
f.ChildAdded:Connect(ac)

local ad=function(ad)
J.new(ad)
end
f.CurrentRooms.ChildAdded:Connect(ad)
for ae,O in ipairs(f.CurrentRooms:GetChildren())do
ad(O)
end



local P=function()
N(Toggles["alerts.entity"].Value,{
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
for S,T in ipairs(K)do
for U,V in pairs(T.attached)do
V:onTick(R)
end
end
end
local S=function(S)
for T,U in ipairs(L)do
for V,W in pairs(U.attached)do
W:onRender(S)
end
end
end
local T=function(T,U)
for V,W in ipairs(M)do
for X,Y in pairs(W.attached)do
Y:onPhysics(T,U)
end
end
local X=z.attached
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
N(Toggles["gameplay.parser.enabled"].Value,{
message="[Code Parser]: "..U,
audio=false,
duration=7.5,
})
end
end)







do
local U
for V,W in pairs(getconnections(u.EngageMinigame.OnClientEvent))do
local X=W.Function
if X then
local Y=getfenv(X).script
if Y.Name=="MinigameHandler"then
U=debug.getupvalue(X,1)
end
end
end
local X=debug.getupvalue(U,7)
debug.setupvalue(U,7,function(Y,...)
local Z=X(Y,...)
if Toggles["gameplay.breaker.enabled"].Value then
task.delay(0.1,function()
local _={}
local af={}
for ag =1,#Y do
local ah,ai=unpack(Y[ag])
_[ah]=ai
if ai then
table.insert(af,ah)
end
end

syn.set_thread_identity(7)
local ag=""
for ah,ai in ipairs(af)do
ag=ag..tostring(ah).." "
end
N(true,{
message="[Breaker Code]: "..ag,
audio=false,
duration=7.5,
})
syn.set_thread_identity(2)
end)
end
return Z
end)
end







table.insert(L,A)
table.insert(L,C)
table.insert(L,D)
table.insert(L,E)
table.insert(L,F)
table.insert(L,G)
table.insert(L,H)

v.Name="Main"
v.SoundId="rbxassetid://6026984224"
v.Volume=6
v.Parent=e

do
local af=game.PlaceId
local ag=game.PlaceVersion
local ah=k[af]
if ag>ah then
m:Notify"Game has been updated! Please be careful when using this script."
m:Notify"The place ID and Version has been copied to your clipboard."
setclipboard("["..tostring(af).."] = "..tostring(ag)..",")
end
end

return m:Notify("["..g.."] Loaded! ("..h..")")
