/// @description Rafraichissement des positions

var data = ds_map_create();
	
ds_map_add(data, "hostName", global.hostName);
	
sendData(global.serverIp, data, global.playerBuffer, msgType.UPDATE_PLAYER_STAT);