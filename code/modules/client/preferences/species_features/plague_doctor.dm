/datum/preference/choiced/plague_doctor_beak
	savefile_key = "feature_plague_doctor_beak"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_FEATURES
	main_feature_name = "Beak"
	should_generate_icons = TRUE
	relevant_external_organ = /obj/item/organ/beak

/datum/preference/choiced/plauge_doctor_beak/init_possible_values()
	return assoc_to_keys_features(SSaccessories.beaks_list)

/datum/preference/choiced/plague_doctor_beak/icon_for(value)
	return generate_lizard_side_shot(SSaccessories.beaks_list[value], "beak")

/datum/preference/choiced/plague_doctor_beak/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["beak"] = value
