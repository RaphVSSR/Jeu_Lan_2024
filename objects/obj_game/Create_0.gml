
if global.hostActive {
	
	//On ajoute les joueurs
	var data = ds_map_create();
	
	ds_map_add(data, "hostName", global.hostName);
	ds_map_add(data, "players", noone);
	
	sendData(global.serverIp, data, global.playerBuffer, msgType.CREATE_PLAYERS);
}
