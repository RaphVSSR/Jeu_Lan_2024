
if async_load[? "size"] > 0 {
	
	//On récupère les données du buffer envoyées dans un buffer local
	var enterBuffer = async_load[? "buffer"];
	buffer_seek(enterBuffer, buffer_seek_start, 0);
	var response = buffer_read(enterBuffer, buffer_string);
	
	var respData = json_decode(response); //On décode pour pouvoir décortiquer les données
	
	//show_debug_message(response);
	
	if ds_map_find_value(respData, "type") == msgType.CREATE_PLAYERS{
	
		var players = ds_map_find_value(respData, "players"); //On récupère la ds_list de players du host
		
		addPlayers(players);
		
		//On envois les premières requêtes d'update une fois que les instances ont été créées
		var data = ds_map_create();
	
		ds_map_add(data, "hostName", global.hostName);
		
		buffer = buffer_create(50, buffer_fixed, 50);
	
		sendData(global.serverIp, data, buffer, msgType.UPDATE_PLAYER_STAT);
	
	}

	if ds_map_find_value(respData, "type") == msgType.UPDATE_PLAYER_STAT{
	
		var players = ds_map_find_value(respData, "players"); //On récupère la ds_list de players du host
		
		updatePlayers(players);
		
		//On update dès le retour de requête
		var data = ds_map_create();
	
		ds_map_add(data, "hostName", global.hostName);
		
		buffer = buffer_create(50, buffer_fixed, 50);
	
		sendData(global.serverIp, data, buffer, msgType.UPDATE_PLAYER_STAT);
		
	
	}

	//buffer_delete(enterBuffer);

}