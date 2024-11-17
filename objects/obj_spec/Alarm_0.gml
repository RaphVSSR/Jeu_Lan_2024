/// @description Rafraichissement des positions

var data = ds_map_create();

ds_map_add(data, "hostName", global.hostName);
ds_map_add(data, "playerName", name);
ds_map_add(data, "x", x);
ds_map_add(data, "y", y);

var buffer = buffer_create(100, buffer_fixed, 100);

sendData(global.serverIp, data, buffer, msgType.SEND_PLAYER_STAT);