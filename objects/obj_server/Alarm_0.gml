 ///@description Récupération des hosts

if room == rm_lobby && (global.serverIp != "Ip du serveur" && global.serverIp != "") {
		
	global.hostsPendingDisplaying = false;
	var dataHostsToDisplay = ds_map_create();
		
	ds_map_add(dataHostsToDisplay, "hosts", noone);
		
	sendData(global.serverIp, dataHostsToDisplay, global.playerBuffer, msgType.GET_HOSTS);
		
}