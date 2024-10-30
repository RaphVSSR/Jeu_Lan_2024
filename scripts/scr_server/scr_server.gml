
function sendData(ip, dsMap, buffer, type){
	
	if ip == "Ip du serveur" || ip == ""{
		show_message("Aucun serveur n'est connecté, appel un Admin pour qu'il le connecte.");
		
	}else{
		
		//On ajoute le type de message donné
		ds_map_add(dsMap, "type", type);
		
		var encodedData = json_encode(dsMap);
		
		ds_map_destroy(dsMap); //On supprime la structure de donnée décodée pour libérer de l'espace mémoire
		
		buffer_seek(buffer, buffer_seek_start, 0);
		buffer_write(buffer, buffer_text, encodedData); //Buffer text ne contraint pas de limitte de donnée ni de dernier bit de terminaison 
		network_send_udp_raw(global.client, ip, PORT, buffer, buffer_tell(buffer));
	}
	
}

function globalVariablesInit(){ //Faut trier les globales system, host et player
	
	// Création de notre liaison entre le client et le serveur
	if !variable_global_exists("client"){
		global.client = network_create_socket(network_socket_udp);
	}
	
	//Un buffer est un moyen de stockage de la donnée avant d'être envoyée
	if !variable_global_exists("playerBuffer"){
		global.playerBuffer = buffer_create(200, buffer_fixed, 200) //On veut envoyer toute la donnée en 1 seul packet c'est pour ça qu'il est fixe
	}
	
	if !variable_global_exists("serverIp"){
		global.serverIp = "Ip du serveur"; //Variable globale Init
	}
	
	if !variable_global_exists("nbPlayer"){
		global.nbPlayer = noone;
	}
	
	if !variable_global_exists("shouldPlayerQuit"){
		global.shouldPlayerQuit = false;
	}
	
	if !variable_global_exists("shouldHostStop"){
		global.shouldHostStop = false;
	}
	
	if !variable_global_exists("hostActive"){
		global.hostActive = false;
	}
	
	if !variable_global_exists("hostsNeedUpdate"){
		global.hostsNeedUpdate = false;
	}
	
	if !variable_global_exists("hostsPendingDisplaying"){
		global.hostsPendingDisplaying = noone;
	}
	
	if !variable_global_exists("hostSelected"){
		global.hostSelected = undefined;
	}
	
	if !variable_global_exists("hostName"){
		global.hostName = noone;
	}
	
	if !variable_global_exists("playerName"){
		global.playerName = undefined;
	}
	
	if !variable_global_exists("teamName"){
		global.teamName = undefined;
	}
	
	if !variable_global_exists("visibility"){
		global.visibility = undefined;
	}
}

function displayHost(i, hostName, nbPlayers, hostsRoomList){
	
	var dsHost = ds_map_create(); //On fait un objet par hosts
	
	ds_map_add(dsHost, "hostName", hostName);
	ds_map_add(dsHost, "id", instance_create_depth(80, 100 + (130 * i), 0, obj_host_item, {	//On créer une instance du parent obj_host_item et on stocke son id
				
		hostName: hostName,
		hostPlayers: nbPlayers
				
	}));
	
	ds_list_insert(hostsRoomList, i, dsHost); //On insert le host dans la liste locale au même index que celui du serveur pour faciliter les vérifications
}

function removeHost(i, hostsRoomList){
	
	var instanceToDel = ds_map_find_value(ds_list_find_value(hostsRoomList, i), "id");
	
	ds_list_delete(hostsRoomList, i);
	
	instance_destroy(instanceToDel, true);
	
}

function verifyHosts(hostsServerList, nbHosts, hostsRoomList){
	
	if hostsServerList == 0 && instance_exists(obj_host_item){
		
		instance_destroy(obj_host_item, true);
		
	}else{
	
		if nbHosts > ds_list_size(hostsRoomList){
		
			for (var i = 0; i < nbHosts; ++i) {
		    
				//On récupère les infos de la requête
				var hostName = ds_map_find_value(ds_list_find_value(hostsServerList, i), "name"); //On récupère la propriété "name" de l'objet Host
				var nbPlayers = ds_list_size(ds_map_find_value(ds_list_find_value(hostsServerList, i), "players")); //On récupère la taille du tableau de joueurs dans la propriété "players" de l'objet 
			
				//On vérifie si la liste locale est vide
				if !ds_list_find_value(hostsRoomList, i) {
				
					displayHost(i, hostName, nbPlayers, hostsRoomList);
				
				}else{
				
					//Si le nom qui est dans la liste locale ne correspond pas à celui dans la requête alors on créer l'instance
					if !(ds_map_find_value(ds_list_find_value(hostsRoomList, i), "hostName") == hostName) {
		
						displayHost(i, hostName, nbPlayers, hostsRoomList);
		
					}
				}
			
			}
		
		}else if (nbHosts < ds_list_size(hostsRoomList)){
		
			for (var i = 0; i < ds_list_size(hostsRoomList); ++i) {
		    
				if ds_list_find_value(hostsServerList, i) == undefined{ //Si l'emplacement de la liste des hosts serveur est vide alors on supprime ce même emplacecment dans l'interface.
					
					removeHost(i, hostsRoomList);
				
				}else{
				
					//On récupère les infos de la requête
					var hostName = ds_map_find_value(ds_list_find_value(hostsServerList, i), "name"); //On récupère la propriété "name" de l'objet Host
					var nbPlayers = ds_list_size(ds_map_find_value(ds_list_find_value(hostsServerList, i), "players")); //On récupère la taille du tableau de joueurs dans la propriété "players" de l'objet 
			
					//Si le nom qui est dans la liste locale ne correspond pas à celui dans la requête alors on enlève l'instance
					if !(ds_map_find_value(ds_list_find_value(hostsRoomList, i), "hostName") == hostName) {
		
						removeHost(i, hostsRoomList);
		
					}
				
				}
			
			}
		
		}
	}
}