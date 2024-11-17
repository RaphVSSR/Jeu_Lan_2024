/// @description Communications sur le réseau

//On affiche dans la console le message reçus depuis le serveur
//show_debug_message(json_encode(async_load)) //async_load retourne une ref de ds_map et on l'encode en json pour accéder aux données

if async_load[? "size"] > 0 { //On regarde à la clé "size" renvoyée par dgram est suppérieure à 0
	
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
			global.playerName = ds_map_find_value(respData, "hostPlayerName");
			
		}
	}
	
	if ds_map_find_value(respData, "type") == msgType.STOP_HOST {
		
		global.hostName = noone;
		global.nbPlayer = noone;

		global.hostActive = false;
		global.playerName = undefined;
		show_debug_message("Le host est bien arreté");
	
	}
	
	//On récupère les hosts pour les afficher pour les rejoindre
	if ds_map_find_value(respData, "type") == msgType.GET_HOSTS {
		
		var hosts = ds_map_find_value(respData, "hosts");
		
		show_debug_message(hosts);
		
		var nbHosts;
		
		if ds_map_find_value(respData, "hosts") == 0 {
			
			nbHosts = 0;
			
		}else {
			
			nbHosts = ds_list_size(ds_map_find_value(respData, "hosts"));
			
		}
		
		show_debug_message(nbHosts);
		
		verifyHosts(hosts, nbHosts, hostsDisplayed); //On détermine si on doit créer ou supprimer
		
		if hosts == 0 {
			
			noHosts = true;

		}else{
		
			noHosts = false;
		
		}
	
	}
	
	//On récupère le retour pour confirmer que le player à bien été ajouté
	if ds_map_find_value(respData, "type") == msgType.JOIN_HOST {
		
		if ds_map_find_value(respData, "playerName") == "Taken"{
			
			global.playerName = undefined;
			global.teamName = undefined;
			
			show_message("Ce pseudo est déjà pris..");
			
		}else{
			
			var players = ds_map_find_value(respData, "players"); //On récupère la ds_list de players du host
		
			for (var i = 0; i < ds_list_size(players); i++){
		
				var player = ds_list_find_value(players, i);
		
				if ds_map_find_value(player, "name") == global.playerName {
				
					//On affiche le boutton d'attente
					instance_destroy(obj_btn_host, true);
					instance_destroy(obj_btn_join, true);
				
					instance_create_depth(obj_input_session_and_player_name.x, obj_input_session_and_player_name.y + 100, -5, obj_btn_joining);
				
				}
			
			}
		}

	}
	
	//On récupère le retour pour confirmer que le player à bien été retiré
	if ds_map_find_value(respData, "type") == msgType.PLAYER_QUIT {
		
		global.hostName = noone;
		global.playerName = undefined;
		
		show_debug_message("Le player à bien été retiré du host.")
		
		
	
	}
	
	buffer_delete(enterBuffer); //On libère la mémoire
	
}