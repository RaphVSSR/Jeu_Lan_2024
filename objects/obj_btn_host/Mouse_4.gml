
if activateHostBtnVerify(obj_input_session_name.txtTyped) {
	var data = ds_map_create() //On met en forme la data que l'on veut envoyer

	ds_map_add(data, "hostName", obj_input_session_name.txtTyped);
	ds_map_add(data, "nbPlayer", noone);

	sendData(global.serverIp, data, global.playerBuffer, msgType.CREATE_HOST); //On envoi les données
}