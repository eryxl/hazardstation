/datum/species/protogen
	name = "\improper Protogen"
	plural_form = "Protogens"
	id = SPECIES_PROTOGEN
	inherent_biotypes = MOB_ORGANIC|MOB_HUMANOID
	inherent_traits = list(
		TRAIT_RESISTBRUTE,
	)
	body_markings = list(
		/datum/bodypart_overlay/simple/body_marking/moth = SPRITE_ACCESSORY_NONE,
	)
	mutant_organs = list(
		/obj/item/organ/wings/moth = "Plain",
		/obj/item/organ/antennae = "Plain",
	)
	meat = /obj/item/food/meat/slab/human/mutant/moth
	mutanttongue = /obj/item/organ/tongue/moth
	mutanteyes = /obj/item/organ/eyes/moth
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_MAGIC | MIRROR_PRIDE | ERT_SPAWN | RACE_SWAP | SLIME_EXTRACT
	species_cookie = /obj/item/food/muffin/moffin

	species_language_holder = /datum/language_holder/protogen

	death_sound = 'sound/mobs/humanoids/moth/moth_death.ogg'
	payday_modifier = 1.0
	family_heirlooms = list(/obj/item/flashlight/lantern/heirloom_moth)

	bodypart_overrides = list(
		BODY_ZONE_HEAD = /obj/item/bodypart/head/moth,
		BODY_ZONE_CHEST = /obj/item/bodypart/chest/moth,
		BODY_ZONE_L_ARM = /obj/item/bodypart/arm/left/moth,
		BODY_ZONE_R_ARM = /obj/item/bodypart/arm/right/moth,
		BODY_ZONE_L_LEG = /obj/item/bodypart/leg/left/moth,
		BODY_ZONE_R_LEG = /obj/item/bodypart/leg/right/moth,
	)

/datum/species/protogen/on_species_gain(mob/living/carbon/human/human_who_gained_species, datum/species/old_species, pref_load, regenerate_icons)
	. = ..()
	RegisterSignal(human_who_gained_species, COMSIG_MOB_APPLY_DAMAGE_MODIFIERS, PROC_REF(damage_weakness))

/datum/species/protogen/on_species_loss(mob/living/carbon/human/C, datum/species/new_species, pref_load)
	. = ..()
	UnregisterSignal(C, COMSIG_MOB_APPLY_DAMAGE_MODIFIERS)

/datum/species/protogen/proc/damage_weakness(datum/source, list/damage_mods, damage_amount, damagetype, def_zone, sharpness, attack_direction, obj/item/attacking_item)
	SIGNAL_HANDLER

	if(istype(attacking_item, /obj/item/melee/flyswatter))
		damage_mods += 10 // Yes, a 10x damage modifier

/datum/species/moprotogenth/randomize_features()
	var/list/features = ..()
	features["moth_markings"] = pick(SSaccessories.moth_markings_list)
	return features

/datum/species/protogen/get_scream_sound(mob/living/carbon/human/protogen)
	return 'sound/mobs/humanoids/moth/scream_moth.ogg'

/datum/species/protogen/get_cough_sound(mob/living/carbon/human/protogen)
	if(protogen.physique == FEMALE)
		return pick(
			'sound/mobs/humanoids/human/cough/female_cough1.ogg',
			'sound/mobs/humanoids/human/cough/female_cough2.ogg',
			'sound/mobs/humanoids/human/cough/female_cough3.ogg',
			'sound/mobs/humanoids/human/cough/female_cough4.ogg',
			'sound/mobs/humanoids/human/cough/female_cough5.ogg',
			'sound/mobs/humanoids/human/cough/female_cough6.ogg',
		)
	return pick(
		'sound/mobs/humanoids/human/cough/male_cough1.ogg',
		'sound/mobs/humanoids/human/cough/male_cough2.ogg',
		'sound/mobs/humanoids/human/cough/male_cough3.ogg',
		'sound/mobs/humanoids/human/cough/male_cough4.ogg',
		'sound/mobs/humanoids/human/cough/male_cough5.ogg',
		'sound/mobs/humanoids/human/cough/male_cough6.ogg',
	)


/datum/species/protogen/get_cry_sound(mob/living/carbon/human/protogen)
	if(protogen.physique == FEMALE)
		return pick(
			'sound/mobs/humanoids/human/cry/female_cry1.ogg',
			'sound/mobs/humanoids/human/cry/female_cry2.ogg',
		)
	return pick(
		'sound/mobs/humanoids/human/cry/male_cry1.ogg',
		'sound/mobs/humanoids/human/cry/male_cry2.ogg',
		'sound/mobs/humanoids/human/cry/male_cry3.ogg',
	)


/datum/species/protogen/get_sneeze_sound(mob/living/carbon/human/protogen)
	if(protogen.physique == FEMALE)
		return 'sound/mobs/humanoids/human/sneeze/female_sneeze1.ogg'
	return 'sound/mobs/humanoids/human/sneeze/male_sneeze1.ogg'


/datum/species/protogen/get_laugh_sound(mob/living/carbon/human/protogen)
	return 'sound/mobs/humanoids/moth/moth_laugh1.ogg'

/datum/species/protogen/get_sigh_sound(mob/living/carbon/human/protogen)
	if(protogen.physique == FEMALE)
		return SFX_FEMALE_SIGH
	return SFX_MALE_SIGH

/datum/species/protogen/get_sniff_sound(mob/living/carbon/human/protogen)
	if(protogen.physique == FEMALE)
		return 'sound/mobs/humanoids/human/sniff/female_sniff.ogg'
	return 'sound/mobs/humanoids/human/sniff/male_sniff.ogg'

/datum/species/protogen/get_physical_attributes()
	return "Moths have large and fluffy wings, which help them navigate the station if gravity is offline by pushing the air around them. \
		Due to that, it isn't of much use out in space. Their eyes are very sensitive."

/datum/species/protogen/get_species_description()
	return "Hailing from a planet that was lost long ago, the moths travel \
		the galaxy as a nomadic people aboard a colossal fleet of ships, seeking a new homeland."

/datum/species/protogen/get_species_lore()
	return list(
		"Their homeworld lost to the ages, the moths live aboard the Grand Nomad Fleet. \
		Made up of what could be found, bartered, repaired, or stolen the armada is a colossal patchwork \
		built on a history of politely flagging travelers down and taking their things. Occasionally a moth \
		will decide to leave the fleet, usually to strike out for fortunes to send back home.",

		"Nomadic life produces a tight-knit culture, with moths valuing their friends, family, and vessels highly. \
		Moths are gregarious by nature and do best in communal spaces. This has served them well on the galactic stage, \
		maintaining a friendly and personable reputation even in the face of hostile encounters. \
		It seems that the galaxy has come to accept these former pirates.",

		"Surprisingly, living together in a giant fleet hasn't flattened variance in dialect and culture. \
		These differences are welcomed and encouraged within the fleet for the variety that they bring.",
	)

/datum/species/protogen/create_pref_unique_perks()
	var/list/to_add = list()

	to_add += list(
		list(
			SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
			SPECIES_PERK_ICON = FA_ICON_COGS,
			SPECIES_PERK_NAME = "Taste of Silicon",
			SPECIES_PERK_DESC = "Yes, they can eat computer parts.",
		),
		list(
			SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
			SPECIES_PERK_ICON = "tshirt",
			SPECIES_PERK_NAME = "The Armored Floofy Menace",
			SPECIES_PERK_DESC = "Protogens have partially-cybernetic arms, legs and chest. The metal parts act as armor, providing 15% BRUTE resistance.",
		),
		list(
			SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
			SPECIES_PERK_ICON = "tshirt",
			SPECIES_PERK_NAME = "Hormone Control",
			SPECIES_PERK_DESC = "Protogens have better control of their hormones and bodily chemicals. They move faster than humans when injured, and can trigger their bodies to boost adrenaline production.",
		),
		list(
			SPECIES_PERK_TYPE = SPECIES_NEGATIVE_PERK,
			SPECIES_PERK_ICON = "fire",
			SPECIES_PERK_NAME = "Big Ol' Snoot",
			SPECIES_PERK_DESC = "Protogen visors jut out far enough to prevent them from wearing standard humanoid masks.",
		),
		list(
			SPECIES_PERK_TYPE = SPECIES_NEGATIVE_PERK,
			SPECIES_PERK_ICON = "sun",
			SPECIES_PERK_NAME = "Nanite Restart Syndrome",
			SPECIES_PERK_DESC = "If a protogen is in critical condition, they may develop Nanite Restart Syndrome. This will cause them to start repeatedly powering on and off for a period of time.",
		),
		list(
			SPECIES_PERK_TYPE = SPECIES_NEGATIVE_PERK,
			SPECIES_PERK_ICON = "sun",
			SPECIES_PERK_NAME = "Electricity Sensitivity",
			SPECIES_PERK_DESC = "Protogens are extremely sensitive to electricity - tasers and stunbatons will deal damage. Electrocution causes instantaneous death.",
		),
	)

	return to_add
