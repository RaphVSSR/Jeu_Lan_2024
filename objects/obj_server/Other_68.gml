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
		
		global.nbHost = ds_map_find_value(respData, "nbHost");
		global.nbPlayer = ds_map_find_value(respData, "nbPlayer");
		
		if global.nbHost != noone && global.nbPlayer != noone{ //On vérifie quand même que les valeurs ont changées
			
			global.hostActive = true; //On confirme que le host est actif
		}
	}
	
	if ds_map_find_value(respData, "type") == msgType.STOP_HOST {
		
		global.nbHost = ds_map_find_value(respData, "nbHost");
		global.nbPlayer = ds_map_find_value(respData, "nbPlayer");
		
		show_debug_message("Ton numéro de host est " + string(global.nbHost));	
		show_debug_message("Ton numéro de joueur est " + string(global.nbPlayer));
		
		if global.nbHost == noone && global.nbPlayer == noone{ //On vérifie toujours que les valeurs ont bien changées
			global.hostActive = false;
			show_debug_message("Le host est bien arreté");
		}
	
	}
	
	//On récupère les hosts pour les afficher pour les rejoindre
	if ds_map_find_value(respData, "type") == msgType.GET_HOSTS {
		
		var hosts = ds_map_find_value(respData, "hosts");
		
		show_debug_message("Dans la liste on a " + string(hosts) + " hosts.");
		
		if hosts != 0 {
			
			var nbHosts = ds_list_size(hosts);
		
			//On créer tout les items de la liste à afficher (1 item = 1 host)
			for (var i = 0; i < nbHosts; i++){
			
				var sessionName = ds_list_find_value(hosts, 0);
				var nbPlayers = ds_list_size(ds_list_find_value(hosts, 1));
			
				show_debug_message("Dans le " + i + "host, on a " + nbPlayers + " joueurs.");
			
				global.hostsDisplayed = true;
				alarm[0] = fps * 5;
				
			}
		}else{
			
			noHosts = true;
			
			alarm[0] = fps * 5;
			
		}
		
		
	
	}
	
}