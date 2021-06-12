local Root = script:GetCustomProperty("Root"):WaitForObject()

local function OnEquipped(equipment, player)
	player:SetVisibility(false, false)
end

Root.equippedEvent:Connect(OnEquipped)