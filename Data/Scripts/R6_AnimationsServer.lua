local AnimationPriority = require(script:GetCustomProperty("AnimationPriority"))

local Root = script:GetCustomProperty("Root"):WaitForObject()

local Player = Root.owner

local isJumping = true

local function Jump()
	if(not isJumping) then return end
	isJumping = true
end

local function StopJump()

end

local function CheckJumping()
	if(Player.isJumping) then
		Jump()
	else
		StopJump()
	end
end

local function CheckWalking()
	if(Player.isAccelerating) then
		--Walk()
	else
		--StopWalk()
	end
end

local function OnEquipmentEquipped(equipment, player)
	Player = equipment.owner
end

function Tick()
	if(not Object.IsValid(Player) or not Player:IsA("Player")) then return end

	CheckJumping()
	--CheckWalking()
end

Root.equippedEvent:Connect(OnEquipmentEquipped)