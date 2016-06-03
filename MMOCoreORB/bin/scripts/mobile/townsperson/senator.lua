noble = Creature:new {
	objectName = "@mob/creature_names:noble",
  customName = "a New Republic Senator",	
	--randomNameType = NAME_GENERIC,
--	randomNameTag = true,
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 6,
	chanceHit = 0.250000,
	damageMin = 50,
	damageMax = 55,
	baseXp = 113,
	baseHAM = 180,
	baseHAMmax = 220,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.000000,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED + CONVERSABLE + INTERESTING,
	diet = HERBIVORE,


	templates = {
		"object/mobile/dressed_noble_bothan_female_01.iff",
		"object/mobile/dressed_noble_bothan_male_01.iff",
		"object/mobile/dressed_noble_fat_human_female_01.iff",
		"object/mobile/dressed_noble_fat_human_female_02.iff",
		"object/mobile/dressed_noble_fat_human_male_01.iff",
		"object/mobile/dressed_noble_fat_human_male_02.iff",
		"object/mobile/dressed_noble_fat_twilek_female_01.iff",
		"object/mobile/dressed_noble_fat_twilek_female_02.iff",
		"object/mobile/dressed_noble_fat_twilek_male_01.iff",
		"object/mobile/dressed_noble_fat_twilek_male_02.iff",
		"object/mobile/dressed_noble_fat_zabrak_female_01.iff",
		"object/mobile/dressed_noble_fat_zabrak_female_02.iff",
		"object/mobile/dressed_noble_fat_zabrak_male_01.iff",
		"object/mobile/dressed_noble_fat_zabrak_male_02.iff",
		"object/mobile/dressed_noble_human_female_01.iff",
		"object/mobile/dressed_noble_human_female_02.iff",
		"object/mobile/dressed_noble_human_female_03.iff",
		"object/mobile/dressed_noble_human_female_04.iff",
		"object/mobile/dressed_noble_human_male_01.iff",
		"object/mobile/dressed_noble_human_male_02.iff",
		"object/mobile/dressed_noble_human_male_03.iff",
		"object/mobile/dressed_noble_human_male_04.iff",
		"object/mobile/dressed_noble_naboo_twilek_female_01.iff",
		"object/mobile/dressed_noble_naboo_twilek_female_02.iff",
		"object/mobile/dressed_noble_naboo_twilek_male_01.iff",
		"object/mobile/dressed_noble_old_human_female_01.iff",
		"object/mobile/dressed_noble_old_human_female_02.iff",
		"object/mobile/dressed_noble_old_human_male_01.iff",
		"object/mobile/dressed_noble_old_human_male_02.iff",
		"object/mobile/dressed_noble_old_twk_female_01.iff",
		"object/mobile/dressed_noble_old_twk_female_02.iff",
		"object/mobile/dressed_noble_old_twk_male_01.iff",
		"object/mobile/dressed_noble_old_twk_male_02.iff",
		"object/mobile/dressed_noble_old_zabrak_female_01.iff",
		"object/mobile/dressed_noble_old_zabrak_female_02.iff",
		"object/mobile/dressed_noble_old_zabrak_male_01.iff",
		"object/mobile/dressed_noble_old_zabrak_male_02.iff",
		"object/mobile/dressed_noble_rodian_female_01.iff",
		"object/mobile/dressed_noble_rodian_male_01.iff",
		"object/mobile/dressed_noble_trandoshan_female_01.iff",
		"object/mobile/dressed_noble_trandoshan_male_01.iff",
		"object/mobile/dressed_noble_twilek_female_01.iff",
		"object/mobile/dressed_noble_twilek_male_01.iff",
		"object/mobile/dressed_noble_zabrak_female_01.iff",
		"object/mobile/dressed_noble_zabrak_male_01.iff",
	},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "generic_noble_mission_giver_convotemplate",
	attacks = {}
}

CreatureTemplates:addCreatureTemplate(noble, "noble")
