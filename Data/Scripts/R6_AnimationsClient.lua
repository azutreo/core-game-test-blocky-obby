local AnimationPriority = require(script:GetCustomProperty("AnimationPriority"))

local Root = script:GetCustomProperty("Root"):WaitForObject()

local LeftArm = script:GetCustomProperty("LeftArm"):WaitForObject()
local RightArm = script:GetCustomProperty("RightArm"):WaitForObject()
local LeftLeg = script:GetCustomProperty("LeftLeg"):WaitForObject()
local RightLeg = script:GetCustomProperty("RightLeg"):WaitForObject()

local State = {
	IDLE = 0,
	WALKING = 1,
	JUMPING = 2,
}

local ROTATION_ARM_JUMPING = Rotation.New(0, 180, 0)
local ROTATION_LIMB_IDLE = Rotation.New(0, 0, 0)
local ROTATION_LIMB_WALKING_FORWARD = Rotation.New(0, 45, 0)
local ROTATION_LIMB_WALKING_BACKWARD = Rotation.New(0, -45, 0)
local ROTATION_LEG_WALKING_FORWARD = Rotation.New(0, 60, 0)
local ROTATION_LEG_WALKING_BACKWARD = Rotation.New(0, -60, 0)

local DURATION_WALK = 0.3

local currentState = State.IDLE

local walkTask

local function CancelWalkTask()
	if(not walkTask) then return end

	walkTask:Cancel()
	walkTask = nil
end

local function Jump()
	if(currentState == State.JUMPING) then return end
	currentState = State.JUMPING
	CancelWalkTask()

	LeftArm:SetRotation(ROTATION_ARM_JUMPING)
	RightArm:SetRotation(ROTATION_ARM_JUMPING)
	LeftLeg:SetRotation(ROTATION_LIMB_IDLE)
	RightLeg:SetRotation(ROTATION_LIMB_IDLE)
end

local function Walk()
	if(currentState == State.WALKING) then return end
	currentState = State.WALKING
	CancelWalkTask()

	LeftArm:SetRotation(ROTATION_LIMB_WALKING_BACKWARD)
	RightArm:SetRotation(ROTATION_LIMB_WALKING_FORWARD)

	LeftLeg:SetRotation(ROTATION_LEG_WALKING_FORWARD)
	RightLeg:SetRotation(ROTATION_LEG_WALKING_BACKWARD)

	walkTask = Task.Spawn(function()
		LeftArm:RotateTo(ROTATION_LIMB_WALKING_FORWARD, DURATION_WALK, true)
		RightArm:RotateTo(ROTATION_LIMB_WALKING_BACKWARD, DURATION_WALK, true)
	
		LeftLeg:RotateTo(ROTATION_LEG_WALKING_BACKWARD, DURATION_WALK, true)
		RightLeg:RotateTo(ROTATION_LEG_WALKING_FORWARD, DURATION_WALK, true)

		Task.Wait(DURATION_WALK)

		LeftArm:RotateTo(ROTATION_LIMB_WALKING_BACKWARD, DURATION_WALK, true)
		RightArm:RotateTo(ROTATION_LIMB_WALKING_FORWARD, DURATION_WALK, true)

		LeftLeg:RotateTo(ROTATION_LEG_WALKING_FORWARD, DURATION_WALK, true)
		RightLeg:RotateTo(ROTATION_LEG_WALKING_BACKWARD, DURATION_WALK, true)
	end)
	walkTask.repeatCount = -1
	walkTask.repeatInterval = DURATION_WALK
end

local function Idle()
	if(currentState == State.IDLE) then return end
	currentState = State.IDLE
	CancelWalkTask()

	LeftArm:SetRotation(ROTATION_LIMB_IDLE)
	RightArm:SetRotation(ROTATION_LIMB_IDLE)
	LeftLeg:SetRotation(ROTATION_LIMB_IDLE)
	RightLeg:SetRotation(ROTATION_LIMB_IDLE)
end

function Tick()
	local player = Root.owner
	if(not Object.IsValid(player) or not player:IsA("Player")) then return end

	if(player.isJumping) then
		Jump()
	elseif(player.isAccelerating) then
		Walk()
	else
		Idle()
	end
end