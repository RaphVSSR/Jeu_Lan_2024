

if global.hostActive {
	
	var data = ds_map_create();

	ds_map_add(data, "hostName", global.hostName);
	ds_map_add(data, "playerName", "Host Actuel");
	ds_map_add(data, "x", x);
	ds_map_add(data, "y", y);
	ds_map_add(data, "players", noone);

	sendData(global.serverIp, data, global.playerBuffer, msgType.UPDATE_PLAYER_STAT);
	
}else{

	var data = ds_map_create();

	ds_map_add(data, "hostName", global.hostName);
	ds_map_add(data, "playerName", global.playerName);
	ds_map_add(data, "x", x);
	ds_map_add(data, "y", y);
	ds_map_add(data, "players", noone);

	sendData(global.serverIp, data, global.playerBuffer, msgType.UPDATE_PLAYER_STAT);
	
}

requestUpdatingSent = false;