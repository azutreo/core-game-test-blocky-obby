-- README.lua
-- Simple readme/documentation for Organization Template
-- Created by Nicholas Foreman (https://www.coregames.com/user/f9df3457225741c89209f6d484d0eba8)

--[[

		Hello, everyone! This is a sample project that will fit MOST design criterias. It includes a well-structured hierarchy to encourage
	well-maintained organization and simplicity. This encourages creators to not only be creative but maintain a project that prevents
	getting lost in the amazingness that will be created!

	If you need any assistance, feel free to join the Core Discord server (https://discord.gg/core-creators) and ping me (@Nicholas Foreman#0001)
	in #lua-help or #core-help! I will happily assist you. :) We are a friendly bunch of creators, so don't be shy to ask for help!

	\\\\\\\\\
	Hierarchy
	/////////

	|_ Settings - the folder for everything related to how the game functions
		|_ Server Settings - specific gameplay settings like game settings, team settings, and respawn settings
		|_ Player Settings - all player settings that will be used within the game
		|_ Camera Settings - all cameras that will be used within the game
	|_ User Interface - all UI that is not directly incorporated with a component, like game state ui
		• Sidenote: recommended to put UI scripts inside the UI elements
	|_ Gameplay - global scripting for the game that is not tied to a specific component/group
		|_ DefaultContext
		|_ ClientContext
	|_ Environment - everything related to the aesthetic of the game, excluding art
		|_ Sky - comes with the sky dome, sky light, and sun light but would also include extra sky objects like planets
		|_ Post Processing - all global processing effects to be applied
		|_ Lighting - area lights, point lights, and spot lights
		|_ Sound - sounds not directly related to a specific component (ex: gunshots would not be included), like background music
	|_ Spawn Points - all spawn points for the game; recommended to create groups inside this folder for teams to help organization
	|_ Components - groups/objects that are both art (building) and scripting; helps seperate scripted objects from pure art
	|_ Scenery - pure art; only groups/objects that are static and non-moving and do not require scripting

--]]