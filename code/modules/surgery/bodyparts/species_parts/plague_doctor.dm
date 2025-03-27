/obj/item/bodypart/head/plague_doctor
	icon_greyscale = 'icons/mob/human/species/plague_doctor/bodyparts.dmi'
	limb_id = SPECIES_PLAGUE_DOCTOR
	is_dimorphic = FALSE
	head_flags = HEAD_LIPS|HEAD_EYESPRITES|HEAD_EYECOLOR|HEAD_EYEHOLES|HEAD_DEBRAIN
	// Birds don't have teeth
	teeth_count = 0

/obj/item/bodypart/chest/plague_doctor
	icon_greyscale = 'icons/mob/human/species/plague_doctor/bodyparts.dmi'
	limb_id = SPECIES_PLAGUE_DOCTOR
	is_dimorphic = TRUE

/obj/item/bodypart/chest/plague_doctor/get_butt_sprite()
	return icon('icons/mob/butts.dmi', BUTT_SPRITE_LIZARD)

/obj/item/bodypart/arm/left/plague_doctor
	icon_greyscale = 'icons/mob/human/species/plague_doctor/bodyparts.dmi'
	limb_id = SPECIES_PLAGUE_DOCTOR
	unarmed_attack_verbs = list("slash", "scratch", "claw")
	grappled_attack_verb = "lacerate"
	unarmed_attack_effect = ATTACK_EFFECT_CLAW
	unarmed_attack_sound = 'sound/items/weapons/slash.ogg'
	unarmed_miss_sound = 'sound/items/weapons/slashmiss.ogg'

/obj/item/bodypart/arm/right/plague_doctor
	icon_greyscale = 'icons/mob/human/species/plague_doctor/bodyparts.dmi'
	limb_id = SPECIES_PLAGUE_DOCTOR
	unarmed_attack_verbs = list("slash", "scratch", "claw")
	grappled_attack_verb = "lacerate"
	unarmed_attack_effect = ATTACK_EFFECT_CLAW
	unarmed_attack_sound = 'sound/items/weapons/slash.ogg'
	unarmed_miss_sound = 'sound/items/weapons/slashmiss.ogg'

/obj/item/bodypart/leg/left/plague_doctor
	icon_greyscale = 'icons/mob/human/species/plague_doctor/bodyparts.dmi'
	limb_id = SPECIES_PLAGUE_DOCTOR

/obj/item/bodypart/leg/right/plague_doctor
	icon_greyscale = 'icons/mob/human/species/plague_doctor/bodyparts.dmi'
	limb_id = SPECIES_PLAGUE_DOCTOR
