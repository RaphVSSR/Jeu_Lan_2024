
if activated {
	
	var data = ds_map_create() //On met en forme la data que l'on veut envoyer

	ds_map_add(data, "hostName", obj_input_session_and_player_name.txtTyped);
	ds_map_add(data, "nbPlayer", noone);
	ds_map_add(data, "streamer", true);

	var buffer = buffer_create(100, buffer_fixed, 100);

	sendData(global.serverIp, data, buffer, msgType.CREATE_HOST); //On envoi les données
	
}