
if global.hostActive { //On ne fait pas appel à global.shouldStopHost puisque l'évènement steps ne fonctionnera plus

	var dataStopHost = ds_map_create();
	
	ds_map_add(dataStopHost, "hostName", global.hostName);
	ds_map_add(dataStopHost, "nbPlayer", global.nbPlayer);
	
	sendData(global.serverIp, dataStopHost, global.playerBuffer, msgType.STOP_HOST);
	
}