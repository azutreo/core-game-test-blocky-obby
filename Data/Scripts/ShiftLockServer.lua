local DefaultPlayerSettings = script:GetCustomProperty("DefaultPlayerSettings"):WaitForObject()
local ShiftLockPlayerSettings = script:GetCustomProperty("ShiftLockPlayerSettings"):WaitForObject()

local BINDING_SHIFT = "ability_feet"

local bindingConnections = {}

local function ToggleShiftLock(player)
	player.serverUserData.shiftLockEnabled = not player.serverUserData.shiftLockEnabled

	if(player.serverUserData.shiftLockEnabled) then
		ShiftLockPlayerSettings:ApplyToPlayer(player)
	else
		DefaultPlayerSettings:ApplyToPlayer(player)
	end
end

local function OnBindingReleasedEvent(player, binding)
	if(binding ~= BINDING_SHIFT) then return end

	ToggleShiftLock(player)
end

local function OnPlayerJoined(player)
	player.serverUserData.shiftLockEnabled = false
	bindingConnections[player] = player.bindingReleasedEvent:Connect(OnBindingReleasedEvent)
end

local function OnPlayerLeft(player)
	if(not bindingConnections[player]) then return end

	bindingConnections[player]:Disconnect()
	bindingConnections[player] = nil
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)