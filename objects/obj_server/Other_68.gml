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
		
		//On efface les données de la dernière update de hosts
		instance_destroy(obj_host_item, true);
		
		var hosts = ds_map_find_value(respData, "hosts");
		
		if hosts != 0 {
			
			var nbHosts = ds_list_size(ds_map_find_value(respData, "hosts"));
			
			show_debug_message("Le nombre de hosts actifs est " + string(nbHosts));
			
			//On créer tout les items de la liste à afficher (1 item = 1 host)
			for (var i = 0; i < nbHosts; i++){
				
				//On récupère les infos de la requête
				var hostName = ds_map_find_value(ds_list_find_value(hosts, i), "name"); //On récupère la propriété "name" de l'objet Host
				var nbPlayers = ds_list_size(ds_map_find_value(ds_list_find_value(hosts, i), "players")); //On récupère la taille du tableau de joueurs dans la propriété "players" de l'objet 
				
				//On créer une instance du parent obj_host_item
				instance_create_depth(80, 100 + (130 * i), 0, obj_host_item, {
				
					hostName: hostName,
					hostPlayers: nbPlayers
				
				});
			
				global.hostsDisplayed = true;
				alarm[0] = fps * 5;
				
			}
		}else{
			
			show_debug_message("Dans la liste on a " + string(hosts) + " hosts.");
			
			noHosts = true;
			
			alarm[0] = fps * 5;
			
		}
		
		
	
	}
	
}