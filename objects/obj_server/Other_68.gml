/// @description Communications sur le réseau

//On affiche dans la console le message reçus depuis le serveur
//show_debug_message(json_encode(async_load)) //async_load retourne une ref de ds_map et on l'encode en json pour accéder aux données

if async_load[? "size"] > 0 {
	
	//On récupère les données du buffer envoyées dans un buffer local
	var enterBuffer = async_load[? "buffer"];
	buffer_seek(enterBuffer, buffer_seek_start, 0);
	var response = buffer_read(enterBuffer, buffer_string);
	
	var respData = json_decode(response); //On décode pour pouvoir décortiquer les données
	
	show_debug_message(response);
	
	if ds_map_find_value(respData, "type") == msgType.CREATE_HOST {
		
		global.hostName = ds_map_find_value(respData, "hostName");
		global.nbPlayer = ds_map_find_value(respData, "nbPlayer");
		
		if global.hostName != noone && global.nbPlayer != noone{ //On vérifie quand même que les valeurs ont changées
			
			global.hostActive = true; //On confirme que le host est actif
		}
	}
	
	if ds_map_find_value(respData, "type") == msgType.STOP_HOST {
		
		global.hostName = ds_map_find_value(respData, "hostName");
		global.nbPlayer = ds_map_find_value(respData, "nbPlayer");
		
		if global.hostName == noone && global.nbPlayer == noone{ //On vérifie toujours que les valeurs ont bien changées
			global.hostActive = false;
			show_debug_message("Le host est bien arreté");
		}
	
	}
	
	//On récupère les hosts pour les afficher pour les rejoindre
	if ds_map_find_value(respData, "type") == msgType.GET_HOSTS {
		
		var hosts = ds_map_find_value(respData, "hosts");
		var nbHosts = ds_list_size(ds_map_find_value(respData, "hosts"));
		
		verifyHosts(hosts, nbHosts, hostsDisplayed); //On détermine si on doit créer ou supprimer
		
		if hosts == 0 {
			
			show_debug_message("Dans la liste on a " + string(hosts) + " hosts.");
			
			noHosts = true;

		}
		
		
	
	}
	
}