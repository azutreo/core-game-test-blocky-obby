local Root = script:GetCustomProperty("Root"):WaitForObject()
local RedCubeTemplate = script:GetCustomProperty("RedCubeTemplate")

local RAY_OFFSET_START = Vector3.New(0, 0, 50)
local RAY_OFFSET_END = Vector3.New(0, 0, 5)

local cubes = {}

local function Raycast(playerCube, forwardOffset, rightOffset)
	local position, rotation =
		Root:GetWorldPosition(),
		Root:GetWorldRotation()

	local forwardVector = rotation * Vector3.FORWARD
	local rightVector = rotation * Vector3.RIGHT

	local offset = (forwardOffset * forwardVector) + (rightVector * rightOffset)

	local hitResult = World.Raycast(position + offset + RAY_OFFSET_START, position + offset - RAY_OFFSET_END, {
		ignorePlayers = true
	})

	if(Object.IsValid(playerCube) and hitResult) then
		if(playerCube:IsAncestorOf(hitResult.other)) then return end
	end
	return hitResult
end

function Tick()
	local player = Root.owner
	if(not Object.IsValid(player)) then return end

	local playerCube = cubes[player]

	local hitResult1 = Raycast(playerCube, 25, 50)
	local hitResult2 = Raycast(playerCube, 25, -50)
	local hitResult3 = Raycast(playerCube, -25, 50)
	local hitResult4 = Raycast(playerCube, -25, -50)
	local hitResult5 = Raycast(playerCube, 25, 0)
	local hitResult6 = Raycast(playerCube, -25, 0)

	if(not hitResult1 and not hitResult2 and not hitResult3 and not hitResult4 and not hitResult5 and not hitResult6) then
		if(not cubes[player]) then return end

		cubes[player]:Destroy()
		cubes[player] = nil

		return
	end

	if(not cubes[player]) then
		cubes[player] = World.SpawnAsset(RedCubeTemplate)
		cubes[player].name = player.name
	end

	cubes[player]:SetWorldPosition(Root:GetWorldPosition())
	cubes[player]:SetWorldRotation(Root:GetWorldRotation())
end