/// @description Communications sur le réseau

//On affiche dans la console le message reçus depuis le serveur
//show_debug_message(json_encode(async_load)) //async_load retourne une ref de ds_map et on l'encode en json pour accéder aux données

if async_load[? "size"] > 0 {
	
	//On récupère les données du buffer envoyées dans un buffer local
	var enterBuffer = async_load[? "buffer"];
	buffer_seek(enterBuffer, buffer_seek_start, 0);
	var response = buffer_read(enterBuffer, buffer_string);
	
	//On affiche la donnée envoyée et décodée
	show_debug_message(response);
}