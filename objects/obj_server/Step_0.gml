
if room == rm_game {
	
	instance_destroy(obj_host_item, true);
	ds_list_clear(hostsDisplayed);
}

if room == rm_lobby && alarm[0] == -1{

	alarm[0] = fps * 5;
	
}

//if gamepad_button_check_pressed(0, gp_face1){ //check si le boutton A (xBox à été pressé)
	
//	//On créer la structure du packet de données que l'on va envoyer
//	var dataPlayerStat = ds_map_create();
	
//	ds_map_add(dataPlayerStat, "testContent", "Ping de test serveur"); //On ajoute nos données sous forme de clé/valeurs
	
//	sendData(global.serverIp, dataPlayerStat, global.playerBuffer, msgType.UPDATE_PLAYER_STAT);
//}

if global.shouldHostStop {
	
	global.shouldHostStop = false; //On veut l'envoyer qu'une fois et pas toutes les 1/60e de secondes.
	
	var data = ds_map_create();
	
	ds_map_add(data, "hostName", global.hostName);
	ds_map_add(data, "nbPlayer", global.nbPlayer);
	
	sendData(global.serverIp, data, global.playerBuffer, msgType.STOP_HOST);
}

if global.shouldPlayerQuit {
	
	global.shouldPlayerQuit = false;
	
	var data = ds_map_create();
	
	ds_map_add(data, "hostName", global.hostName);
	ds_map_add(data, "playerName", global.playerName);

	sendData(global.serverIp, data, global.playerBuffer, msgType.PLAYER_QUIT);
}

if global.hostsPendingDisplaying == true {
	
	global.hostsPendingDisplaying = false; //Pour avoir un seul envois
	
	var data = ds_map_create();
		
	ds_map_add(data, "hosts", noone);
		
	sendData(global.serverIp, data, global.playerBuffer, msgType.GET_HOSTS);
}