/datum/preference/choiced/plague_doctor_beak
	savefile_key = "feature_plague_doctor_beak"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_FEATURES
	main_feature_name = "beak"
	should_generate_icons = TRUE
	relevant_external_organ = /obj/item/organ/beak

/datum/preference/choiced/plauge_doctor_snout/init_possible_values()
	return assoc_to_keys_features(SSaccessories.snouts_list)

/datum/preference/choiced/plague_doctor_snout/icon_for(value)
	return generate_plague_doctor_side_shot(SSaccessories.snoutss_list[value], "beak")

/datum/preference/choiced/plague_doctor_snouts/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["beak"] = value
