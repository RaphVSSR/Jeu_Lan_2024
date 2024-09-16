
function sendData(ip, dsMap, buffer, type){
	
	if ip == "Ip du serveur" || ip == ""{
		show_message("Aucun serveur n'est connecté, appel un Admin pour qu'il le connecte.");
		
	}else{
		
		//On ajoute le type de message donné
		ds_map_add(dsMap, "type", type);
		
		encodedData = json_encode(dsMap);
		ds_map_destroy(dsMap); //On supprime la structure de donnée décodée pour libérer de l'espace mémoire
		
		buffer_seek(buffer, buffer_seek_start, 0);
		buffer_write(buffer, buffer_text, encodedData); //Buffer text ne contraint pas de limitte de donnée ni de dernier bit de terminaison 
		network_send_udp_raw(global.client, ip, PORT, buffer, buffer_tell(buffer));
	}
	
}

function globalVariablesInit(){
	
	// Création de notre liaison entre le client et le serveur
	if !variable_global_exists("client"){
		global.client = network_create_socket(network_socket_udp);
	}
	
	//Un buffer est un moyen de stockage de la donnée avant d'être envoyée
	if !variable_global_exists("playerBuffer"){
		global.playerBuffer = buffer_create(50, buffer_fixed, 50) //On veut envoyer toute la donnée en 1 seul packet c'est pour ça qu'il est fixe
	}
	
	if !variable_global_exists("serverIp"){
		global.serverIp = "Ip du serveur"; //Variable globale Init
	}
	
	if !variable_global_exists("nbHost"){
		global.nbHost = noone;
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
	
	if !variable_global_exists("hostsDisplayed"){
		global.hostsDisplayed = false;
	}
	
	if !variable_global_exists("hostsNeedUpdate"){
		global.hostsNeedUpdate = false;
	}
	
	if !variable_global_exists("hostsPendingDisplaying"){
		global.hostsPendingDisplaying = false;
	}
}