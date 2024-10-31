
if !quitting { //On envois pas de positions si le player est en train de quitter

	var data = ds_map_create();

	ds_map_add(data, "hostName", global.hostName);
	ds_map_add(data, "playerName", name);
	ds_map_add(data, "x", x);
	ds_map_add(data, "y", y);

	sendData(global.serverIp, data, global.playerBuffer, msgType.UPDATE_PLAYER_STAT);
}

if name == global.playerName {

	localPlayer = true;
	
}

playerCollisionsInit();

//On fait la somme des angles pour les déplacements
if localPlayer {
	
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