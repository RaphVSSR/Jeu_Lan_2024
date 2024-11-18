
if activated {

	global.playerName = obj_input_session_and_player_name.txtTyped;
	global.teamName = obj_input_team_name.txtTyped;

	var data = ds_map_create();
	
	ds_map_add(data, "hostName", global.hostName);
	ds_map_add(data, "playerName", global.playerName);
	ds_map_add(data, "teamName", global.teamName);
	
	var buffer = buffer_create(100, buffer_fixed, 100);

	//Ajouter un player au host sélectionné + attribuer un nbPlayer au nouveau joueur
	sendData(global.serverIp, data, buffer, msgType.JOIN_HOST); //On envoi les données
	
}