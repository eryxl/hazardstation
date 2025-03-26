/datum/species/pdoctor
	name = "\improper Plague Doctor"
	id = SPECIES_DOCTOR
	inherent_traits = list(
		TRAIT_RESISTTOX,
        TRAIT_SOFTSPOKEN,
	)
	payday_modifier = 1.1

/datum/species/pdoctor/get_scream_sound(mob/living/carbon/human/pdoctor)
	if(pdoctor.physique == MALE)
		if(prob(1))
			return 'sound/mobs/humanoids/human/scream/wilhelm_scream.ogg'
		return pick(
			'sound/mobs/humanoids/human/scream/malescream_1.ogg',
			'sound/mobs/humanoids/human/scream/malescream_2.ogg',
			'sound/mobs/humanoids/human/scream/malescream_3.ogg',
			'sound/mobs/humanoids/human/scream/malescream_4.ogg',
			'sound/mobs/humanoids/human/scream/malescream_5.ogg',
			'sound/mobs/humanoids/human/scream/malescream_6.ogg',
		)

	return pick(
		'sound/mobs/humanoids/human/scream/femalescream_1.ogg',
		'sound/mobs/humanoids/human/scream/femalescream_2.ogg',
		'sound/mobs/humanoids/human/scream/femalescream_3.ogg',
		'sound/mobs/humanoids/human/scream/femalescream_4.ogg',
		'sound/mobs/humanoids/human/scream/femalescream_5.ogg',
	)

/datum/species/pdoctor/get_cough_sound(mob/living/carbon/human/pdoctor)
	if(pdoctor.physique == FEMALE)
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

/datum/species/pdoctor/get_cry_sound(mob/living/carbon/human/pdoctor)
	if(pdoctor.physique == FEMALE)
		return pick(
			'sound/mobs/humanoids/human/cry/female_cry1.ogg',
			'sound/mobs/humanoids/human/cry/female_cry2.ogg',
		)
	return pick(
		'sound/mobs/humanoids/human/cry/male_cry1.ogg',
		'sound/mobs/humanoids/human/cry/male_cry2.ogg',
		'sound/mobs/humanoids/human/cry/male_cry3.ogg',
	)


/datum/species/pdoctor/get_sneeze_sound(mob/living/carbon/human/pdoctor)
	if(pdoctor.physique == FEMALE)
		return 'sound/mobs/humanoids/human/sneeze/female_sneeze1.ogg'
	return 'sound/mobs/humanoids/human/sneeze/male_sneeze1.ogg'

/datum/species/pdoctor/get_laugh_sound(mob/living/carbon/human/pdoctor)
	if(pdoctor.physique == FEMALE)
		return 'sound/mobs/humanoids/human/laugh/womanlaugh.ogg'
	return pick(
		'sound/mobs/humanoids/human/laugh/manlaugh1.ogg',
		'sound/mobs/humanoids/human/laugh/manlaugh2.ogg',
	)

/datum/species/pdoctor/get_sigh_sound(mob/living/carbon/human/pdoctor)
	if(pdoctor.physique == FEMALE)
		return SFX_FEMALE_SIGH
	return SFX_MALE_SIGH

/datum/species/pdoctor/get_sniff_sound(mob/living/carbon/human/pdoctor)
	if(human.physique == FEMALE)
		return 'sound/mobs/humanoids/human/sniff/female_sniff.ogg'
	return 'sound/mobs/humanoids/human/sniff/male_sniff.ogg'

/datum/species/pdoctor/get_snore_sound(mob/living/carbon/human/pdoctor)
	if(pdoctor.physique == FEMALE)
		return SFX_SNORE_FEMALE
	return SFX_SNORE_MALE

/datum/species/pdoctor/get_hiss_sound(mob/living/carbon/human/pdoctor)
	return 'sound/mobs/humanoids/human/hiss/human_hiss.ogg'

/datum/species/pdoctor/get_species_description()
	return "THE PLAGUE IS UPON US! THE PLAGUE IS UPON US! Hear my cries all who dwell a pestilence lurks around us!"

/datum/species/pdoctor/get_species_lore()
	return list(
		"These primate-descended creatures, originating from the mostly harmless Earth, \
		have long-since outgrown their home and semi-benign designation. \
		The space age has taken humans out of their solar system and into the galaxy-at-large.",

		"Unlike the traditional humans however the Plague Doctor evolved from humans to adapt to powerful chemical warfare, to survive and dominate human expansion. \
        Through years of fine tuning the Plague Doctors have adapted their respritory system to be able to withstand poison and skin able to expholiate toxic compounds.",

		"Today, you can find Plague Doctors inside of chemistry twiddling away at todays next premier poison.",

	)

/datum/species/pdoctor/create_pref_unique_perks()
	var/list/to_add = list()

	if(CONFIG_GET(number/default_laws) == 0 || CONFIG_GET(flag/silicon_asimov_superiority_override)) // Default lawset is set to Asimov
		to_add += list(list(
			SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
			SPECIES_PERK_ICON = "robot",
			SPECIES_PERK_NAME = "Asimov Superiority",
			SPECIES_PERK_DESC = "The AI and their cyborgs are, by default, subservient only \
				to humans. As a human, silicons are required to both protect and obey you.",
		))


/datum/species/protogen/create_pref_unique_perks()
	var/list/to_add = list()
	to_add += list(
        list(
			SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
			SPECIES_PERK_ICON = "tshirt",
			SPECIES_PERK_NAME = "Chemical Warfare",
			SPECIES_PERK_DESC = "What do you mean this isn't safe? Provides 15% TOXIC resistance.",
		),
        list(
            SPECIES_PERK_TYPE = SPECIES_NEGATIVE_PERK,
            SPECIES_PERK_ICON = FA_ICON_BRAIN,
            SPECIES_PERK_NAME = "Bird for brains",
            SPECIES_PERK_DESC = "You have the brain the size of a thumb, prodides 5% increased brain damage"
        ),
        list(
            SPECIES_PERK_TYPE = SPECIES_NEGATIVE_PERK,
            SPECIES_PERK_ICON = FA_ICON_VOLUME_MUTE,
            SPECIES_PERK_NAME = "Muffled Voice",
            SPECIES_PERK_DESC = "Your mask makes it difficult for others to hear you."
        )
    )

	return to_add
