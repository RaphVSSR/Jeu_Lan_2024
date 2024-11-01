
if !quitting && alarm[0] == -1 { //On envois pas de positions si le player est en train de quitter

	alarm[0] = 10;
	
}

if name == global.playerName {

	//On fait la somme des angles pour les déplacements
	if keyboard_check(vk_up) && keyboard_check(vk_left){

		image_angle = 90 + 45;
	
	}else if keyboard_check(vk_up) && keyboard_check(vk_right){
	
		image_angle = 90 - 45;
	
	}else if keyboard_check(vk_down) && keyboard_check(vk_right){
	
		image_angle = 270 + 45;	
	
	}else if keyboard_check(vk_down) && keyboard_check(vk_left){
	
		image_angle = 270 - 45;	
	
	}
	
	//On a attrapé l'objet et il n'est pas en cours d'utilisation
	if objectGrabed && objectGrabed.use == false{
	
		grabObject(objectGrabed);
	
	}
	
}

playerCollisionsInit();