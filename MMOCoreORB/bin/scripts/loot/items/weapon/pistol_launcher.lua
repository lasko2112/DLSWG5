
pistol_launcher = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/weapon/ranged/pistol/pistol_launcher.iff",
	craftingValues = {
		{"mindamage",14,23,0},
		{"maxdamage",81,149,0},
		{"attackspeed",1,1,1},
		{"woundchance",13,23,0},
		{"hitpoints",750,750,0},
		{"attackhealthcost",0,0,0},
    {"attackactioncost",300,300,0},
    {"attackmindcost",0,0,0},
		{"roundsused",1,3,0},
		{"zerorangemod",0,0,0},
		{"maxrangemod",-70,-70,0},
		{"midrange",15,15,0},
		{"midrangemod",-15,0,0},
	},
	customizationStringNames = {},
	customizationValues = {},

	-- randomDotChance: The chance of this weapon object dropping with a random dot on it. Higher number means less chance. Set to 0 to always have a random dot.
	randomDotChance = 800,
	junkDealerTypeNeeded = JUNKWEAPONS,
	junkMinValue = 30,
	junkMaxValue = 55

}

addLootItemTemplate("pistol_launcher", pistol_launcher)
