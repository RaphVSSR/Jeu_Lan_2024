
if room == rm_game {
	
	instance_destroy(obj_host_item, true);
	ds_list_clear(hostsDisplayed);
}

if room == rm_lobby && alarm[0] == -1{

	alarm[0] = fps * 5; //Attente de récupération des hosts
	
}

if global.hostsPendingDisplaying == true {
	
	global.hostsPendingDisplaying = false; //Pour avoir un seul envois
	
	var data = ds_map_create();
		
	sendData(global.serverIp, data, global.playerBuffer, msgType.GET_HOSTS);
}