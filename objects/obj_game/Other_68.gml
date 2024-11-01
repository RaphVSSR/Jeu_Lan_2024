
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
		alarm[0] = 5;
	
	}

	if ds_map_find_value(respData, "type") == msgType.UPDATE_PLAYER_STAT{
	
		var players = ds_map_find_value(respData, "players"); //On récupère la ds_list de players du host
		
		updatePlayers(players);
		
		if alarm[0] == -1 {
			
			alarm[0] = 5;	
			
		}
	
	}


}