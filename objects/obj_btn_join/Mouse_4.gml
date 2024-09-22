
if activateJoinBtnVerify(global.hostSelected) && (obj_input_session_and_player_name.txtTyped != "" && obj_input_session_and_player_name.txtTyped != "Pseudo en jeu"){

	global.playerName = obj_input_session_and_player_name.txtTyped;

	var data = ds_map_create();
	
	ds_map_add(data, "hostName", global.hostName);
	ds_map_add(data, "playerName", global.playerName);

	//Ajouter un player au host sélectionné + attribuer un nbPlayer au nouveau joueur
	sendData(global.serverIp, data, global.playerBuffer, msgType.JOIN_HOST); //On envoi les données

	room_goto(rm_game);
	
}