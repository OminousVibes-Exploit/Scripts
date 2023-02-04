local a=game:GetService'ReplicatedStorage'local b=
[[https://raw.githubusercontent.com/OminousVibes-Exploit/Scripts/main/doors/]]
local c=game.GameId local d=game.PlaceId if c~=2440500124 then return end if not
game:IsLoaded()then game.Loaded:Wait()end task.wait(5)local e=a:WaitForChild(
'GameData',10):WaitForChild('Floor',10).Value if d==6516141723 then elseif d==
6839171747 then if e=='Hotel'then loadstring(game:HttpGet(b..'places/hotel.lua')
)()elseif e=='Rooms'then loadstring(game:HttpGet(b..'places/rooms.lua'))()end
end syn.queue_on_teleport('loadstring(game:HttpGet("'..b..'loadstring.lua"))()')
