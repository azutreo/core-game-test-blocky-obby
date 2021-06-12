local BINDING_SPACEBAR = "ability_extra_17"

local playerTasks = {}

local function DeleteTask(player)
	if(not playerTasks[player]) then return end

	playerTasks[player]:Cancel()
	playerTasks[player] = nil
end

local function OnBindingPressed(player, binding)
	if(binding ~= BINDING_SPACEBAR) then return end
	DeleteTask(player)

	local task = Task.Spawn(function()
		if(player.isGrounded) then
			player:AddImpulse(Vector3.New(0, 0, player.jumpVelocity * 100))
		end
	end)
	task.repeatCount = -1
	task.repeatInterval = -1
	playerTasks[player] = task
end

local function OnBindingReleased(player, binding)
	if(binding ~= BINDING_SPACEBAR) then return end
	DeleteTask(player)
end

local function OnPlayerJoined(player)
	player.bindingPressedEvent:Connect(OnBindingPressed)
	player.bindingReleasedEvent:Connect(OnBindingReleased)
end

local function OnPlayerLeft(player)
	DeleteTask(player)
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)