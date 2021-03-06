--Automatically generated by SWGEmu Spawn Tool v0.12 loot editor.

pistol_republic_blaster = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/weapon/ranged/pistol/pistol_republic_blaster.iff",
	craftingValues = {
		{"mindamage",15,33,0},
		{"maxdamage",77,160,0},
		{"attackspeed",1,1,1},
		{"woundchance",8,18,0},
		{"hitpoints",750,750,0},
		{"attackhealthcost",0,0,0},
    {"attackactioncost",300,300,0},
    {"attackmindcost",0,0,0},
		{"midrangemod",-52,-28,0},
	},
	customizationStringNames = {},
	customizationValues = {},

	-- randomDotChance: The chance of this weapon object dropping with a random dot on it. Higher number means less chance. Set to 0 to always have a random dot.
	randomDotChance = 800,
	junkDealerTypeNeeded = JUNKWEAPONS,
	junkMinValue = 30,
	junkMaxValue = 55

}

addLootItemTemplate("pistol_republic_blaster", pistol_republic_blaster)
