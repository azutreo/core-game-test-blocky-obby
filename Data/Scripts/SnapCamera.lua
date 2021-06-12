local LocalPlayer = Game.GetLocalPlayer()

local Camera = LocalPlayer:GetDefaultCamera()

local POSITION_OFFSET_SHIFTLOCK = Vector3.New(0, 90, 30)
local POSITION_OFFSET_SHIFTLOCK_NOT = Vector3.New(0, 0, 30)

local shiftLockEnabled, firstPerson = false, false

local function SetCursor(mode)
	UI.SetCursorVisible(mode)
	UI.SetCanCursorInteractWithUI(mode)
end

local function ChangeCameraSettings()
	if(LocalPlayer.clientUserData.shiftLockEnabled) then
		SetCursor(false)
		if(LocalPlayer.clientUserData.firstPerson) then
			LocalPlayer:GetDefaultCamera():SetPositionOffset(POSITION_OFFSET_SHIFTLOCK_NOT)
		else
			LocalPlayer:GetDefaultCamera():SetPositionOffset(POSITION_OFFSET_SHIFTLOCK)
		end
	else
		LocalPlayer:GetDefaultCamera():SetPositionOffset(POSITION_OFFSET_SHIFTLOCK_NOT)
		if(LocalPlayer.clientUserData.firstPerson) then
			SetCursor(false)
		else
			SetCursor(true)
		end
	end
end

local function SetRobloxianVisibility()
	local equipment
	for _, pEquipment in pairs(LocalPlayer:GetEquipment()) do
		if(pEquipment.name == "Robloxian R6") then
			equipment = pEquipment
			break
		end
	end
	if(not equipment) then return end
	local geo = equipment:GetCustomProperty("Geo"):WaitForObject()

	if(LocalPlayer.clientUserData.firstPerson) then
		geo.visibility = Visibility.FORCE_OFF
	else
		geo.visibility = Visibility.INHERIT
	end
end

function Tick()
	if(not Object.IsValid(Camera)) then return end
	if(not Camera.isDistanceAdjustable) then return end

	if(Camera.currentDistance <= 0) then
		LocalPlayer.clientUserData.firstPerson = true
	else
		LocalPlayer.clientUserData.firstPerson = false
	end

	if((shiftLockEnabled == LocalPlayer.clientUserData.shiftLockEnabled) or (firstPerson == LocalPlayer.clientUserData.firstPerson)) then
		return
	end
	shiftLockEnabled = LocalPlayer.clientUserData.shiftLockEnabled
	firstPerson = LocalPlayer.clientUserData.firstPerson

	ChangeCameraSettings()
	SetRobloxianVisibility()
end