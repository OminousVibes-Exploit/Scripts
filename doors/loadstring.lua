local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Constants:
local LOADSTRING_URL = "https://raw.githubusercontent.com/OminousVibes-Exploit/Scripts/main/doors/loadstring.lua"
local GAME_ID = game.GameId
local PLACE_ID = game.PlaceId

-- Execution Checks:
if GAME_ID ~= 2440500124 then
	return
end
if not game:IsLoaded() then
	game.Loaded:Wait()
end
task.wait(2.5) -- Buffer Wait

-- Script Switch:
local floor = ReplicatedStorage:WaitForChild("GameData", 10):WaitForChild("Floor", 10).Value
if PLACE_ID == 6516141723 then -- Lobby
	-- Lobby Script
elseif PLACE_ID == 6839171747 then -- Game
	if floor == "Hotel" then
		loadstring(
			game:HttpGet("https://raw.githubusercontent.com/OminousVibes-Exploit/Scripts/main/doors/places/hotel.lua")
		)()
	elseif floor == "Rooms" then
		loadstring(
			game:HttpGet("https://raw.githubusercontent.com/OminousVibes-Exploit/Scripts/main/doors/places/rooms.lua")
		)()
	else
		print(floor)
	end
end

-- Auto Execute
syn.queue_on_teleport('loadstring(game:HttpGet("' .. LOADSTRING_URL .. '"))()')
