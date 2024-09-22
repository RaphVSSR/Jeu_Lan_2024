
if room == rm_game {
	
	instance_destroy(obj_host_item, true);
	ds_list_clear(hostsDisplayed);
}

if room == rm_lobby && alarm[0] == -1{

	alarm[0] = fps * 5;
	
}

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