local LocalPlayer = Game.GetLocalPlayer()

local BINDING_SHIFT = "ability_feet"

local POSITION_OFFSET_SHIFTLOCK = Vector3.New(0, 90, 30)
local POSITION_OFFSET_SHIFTLOCK_NOT = Vector3.New(0, 0, 30)

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

local function ToggleShiftLock()
	LocalPlayer.clientUserData.shiftLockEnabled = not LocalPlayer.clientUserData.shiftLockEnabled

	ChangeCameraSettings()
end

local function OnBindingReleasedEvent(player, binding)
	if(binding ~= BINDING_SHIFT) then return end

	ToggleShiftLock()
end

LocalPlayer.bindingReleasedEvent:Connect(OnBindingReleasedEvent)
LocalPlayer.clientUserData.shiftLockEnabled = false

UI.SetCursorVisible(true)
UI.SetCanCursorInteractWithUI(true)