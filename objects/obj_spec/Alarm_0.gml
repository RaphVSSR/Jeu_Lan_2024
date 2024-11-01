/// @description Rafraichissement des positions

var data = ds_map_create();

ds_map_add(data, "hostName", global.hostName);
ds_map_add(data, "playerName", name);
ds_map_add(data, "x", x);
ds_map_add(data, "y", y);

sendData(global.serverIp, data, global.playerBuffer, msgType.SEND_PLAYER_STAT);