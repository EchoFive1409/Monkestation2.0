/obj/item/effect_granter/donator
	name = "Donator Transformation"
	icon = 'monkestation/code/modules/donator/icons/mob/pets.dmi'
	icon_state = "void_mothroach"
	var/mob/living/basic/animal_transformation = null

/obj/item/effect_granter/donator/grant_effect(mob/living/carbon/granter)
	var/mob/living/basic/animal = src.animal_transformation
	animal = new animal(granter.loc)
	animal.mind_initialize()
	var/datum/mind/granters_mind = granter.mind
	granters_mind.transfer_to(animal)
	animal.adjust_hand_count(2)
	qdel(granter)
	. = ..()

//Senri08
/obj/item/effect_granter/donator/slime
	name = "Slime transformation"
	icon_state = "slime"
	animal_transformation = /mob/living/basic/pet/slime/talkative

//Random
/obj/item/effect_granter/donator/spider
	name = "Spider transformation"
	icon_state = "spider"
	animal_transformation = /mob/living/basic/pet/spider/dancing

//mjolnir
/obj/item/effect_granter/donator/germanshepherd
	name = "German Shepherd transformation"
	icon_state = "germanshepherd"
	animal_transformation = /mob/living/basic/pet/dog/germanshepherd

//bidlink2
/obj/item/effect_granter/donator/cirno
	name = "Cirno transformation"
	icon = 'monkestation/icons/obj/plushes.dmi'
	icon_state = "cirno-happy"
	animal_transformation = /mob/living/basic/pet/cirno

//Random
/obj/item/effect_granter/donator/void_mothroach
	name = "Mothroach transformation"
	icon_state = "void_mothroach"
	animal_transformation = /mob/living/basic/mothroach/void


//ruby
/obj/item/effect_granter/donator/blahaj
	name = "Blahaj transformation"
	icon_state = "blahaj"
	animal_transformation = /mob/living/basic/pet/blahaj

//ttnt
/obj/item/effect_granter/donator/spycrab
	name = "Spycrab transformation"
	icon_state = "crab_red"
	animal_transformation = /mob/living/basic/crab/spycrab
