
var data = ds_map_create() //On met en forme la data que l'on veut envoyer

ds_map_add(data, "nbHost", noone);
ds_map_add(data, "nbPlayer", noone);

sendData(global.serverIp, data, global.playerBuffer, msgType.CREATE_HOST); //On envoi les données