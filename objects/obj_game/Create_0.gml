
//On fait une liste de 2 objets (1 / teams)
teams = ds_list_create();

teamOne = ds_map_create();
ds_map_add(teamOne, "players", ds_list_create());

teamTwo = ds_map_create();
ds_map_add(teamTwo, "players", ds_list_create());

ds_list_add(teams, teamOne);
ds_list_add(teams, teamTwo);


//On ajoute les joueurs
data = ds_map_create();
	
ds_map_add(data, "hostName", global.hostName);

buffer = buffer_create(50, buffer_fixed, 50);
	
sendData(global.serverIp, data, buffer, msgType.CREATE_PLAYERS);