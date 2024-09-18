
if gamepad_button_check_pressed(0, gp_face1){ //check si le boutton A (xBox à été pressé)
	
	//On créer la structure du packet de données que l'on va envoyer
	var dataPlayerStat = ds_map_create();
	
	ds_map_add(dataPlayerStat, "testContent", "Ping de test serveur"); //On ajoute nos données sous forme de clé/valeurs
	
	sendData(global.serverIp, dataPlayerStat, global.playerBuffer, msgType.UPDATE_PLAYER_STAT);
}

//On récupère les hosts
if alarm[0] == -1{
	
	alarm[0] = fps * 5; //On envois les requêtes de récupération des hosts avec une intervalle d'envois
	
}

if global.shouldHostStop {
	
	global.shouldHostStop = false; //On veut l'envoyer qu'une fois et pas toutes les 1/60e de secondes.
	
	var dataStopHost = ds_map_create();
	
	ds_map_add(dataStopHost, "hostName", global.hostName);
	ds_map_add(dataStopHost, "nbPlayer", global.nbPlayer);
	
	sendData(global.serverIp, dataStopHost, global.playerBuffer, msgType.STOP_HOST);
}