
hostState = undefined;

if global.hostActive {
	
	with obj_players_prnt {
		
		//S'assurer que personne ne prend le pseudo du host non plus !!
		if name == global.hostName {
			
			hostState = "player";
			
			break;
			
		}
		
	}
	
	//Si on sort de la boucle et que le hostState n'a toujours pas changé alors le host n'est pas un joueur
	hostState = "streamer";
	
	//On ajoute les joueurs
	var data = ds_map_create();
	
	ds_map_add(data, "hostName", global.hostName);
	
	sendData(global.serverIp, data, global.playerBuffer, msgType.CREATE_PLAYERS);
}

//On fait une liste de 2 objets (1 / teams)
teams = ds_list_create();

teamOne = ds_map_create();
ds_map_add(teamOne, "players", ds_list_create());

teamTwo = ds_map_create();
ds_map_add(teamTwo, "players", ds_list_create());

ds_list_add(teams, teamOne);
ds_list_add(teams, teamTwo);