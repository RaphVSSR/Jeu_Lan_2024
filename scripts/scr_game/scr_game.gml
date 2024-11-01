

function addPlayers(players){ //On vient de récupérer la liste des players du host
	
	/* On pointe l'équipe qui correspond à celle du player*/
	//Dans un tableau d'équipe -> pas de clé "name" == personne dedans
	
	for (var i = 0; i < ds_list_size(players); i++){
		
		var player = ds_list_find_value(players, i); //On travail au cas par cas pour les instancier
		
		//On écarte les streamers
		if ds_map_find_value(player, "teamName") != noone { //Noone dit en fait que le player est streamer
			
			//On récupère les équipes set dans game pour voir leur contenu
			var teams = obj_game.teams;
			
			//On pointe l'équipe dans laquelle le player se déclare
			for (var j = 0; j < ds_list_size(teams); j++){
				
				//Est-ce que clé "name" ?
				switch ds_map_exists(ds_list_find_value(teams, j), "name"){
					
					case true:
					
						//On check si c'est l'équipe du player
						if ds_map_find_value(ds_list_find_value(teams, j), "name") == ds_map_find_value(player, "teamName"){
							
							//On passe le player en spec
							
							//On vérif si c'est nous
							if ds_map_find_value(player, "name") == global.playerName {
							
								global.visibility = "spec";
							
							}
							
							//On créer un nouvel objet pour associer nom du joueur avec son numéro d'instance => le retrouver et l'isoler plus facilement
							var oPlayer = ds_map_create();
						
							//On ajoute le nom du player à l'objet
							ds_map_add(oPlayer, "name", ds_map_find_value(player, "name"));
					
							//On ajoute l'id du player à son objet
							ds_map_add(oPlayer, "id", instancePlayer(player));
					
							//On ajoute le player à la liste de l'équipe
							ds_list_add(ds_map_find_value(ds_list_find_value(teams, j), "players"), oPlayer);
							
						}else{
						
							continue;
							
						}
					
						break;
						
					case false:
					
						//====== On ajoute le player à l'équipe et on render un player princ ======
						if ds_map_find_value(player, "name") == global.playerName {
						
							global.visibility = "main";
						
						}
						
						//On créer un nouvel objet pour associer nom du joueur avec son numéro d'instance => le retrouver et l'isoler plus facilement
						var oPlayer = ds_map_create();
						
						//On ajoute le nom du player à l'objet
						ds_map_add(oPlayer, "name", ds_map_find_value(player, "name"));
						
						//On config l'équipe
						ds_map_add(ds_list_find_value(teams, j), "name", ds_map_find_value(player, "teamName"));
					
						//On ajoute l'id du player à son objet
						ds_map_add(oPlayer, "id", instancePlayer(player));
					
						//On ajoute le player à la liste de l'équipe
						ds_list_add(ds_map_find_value(ds_list_find_value(teams, j), "players"), oPlayer);
					
						break;
						
				}
				
				break;
				
			}
			
		}
		
	}
	
}

function updatePlayers(players){ //On vient de récupérer la liste des players du host
	
	//On identifie les instances en fonction des joueurs
	for (var i = 0; i < ds_list_size(players); i++){
	
		var player = ds_list_find_value(players, i); //Identifiant de chaques players au cas par cas
		
		//On ne veut pas que notre instance se mette à jour avec les stats du serveur pour économiser des calculs
		if ds_map_find_value(player, "name") != global.playerName{
		
			//On parcours touts les players présents dans la room en les ayant répertoriés par avance dans un parent
			with obj_players_prnt {
				
				if name == ds_map_find_value(player, "name") {
				
					x = lerp(x, ds_map_find_value(player, "x"), 0.1);
					y = lerp(y, ds_map_find_value(player, "y"), 0.1);
				
					break; //On économise des calculs en arrétant de parcourir les entités dès qu'on a trouvé celle qui correspond 
				}
				
			}
			
		}else{
			
			continue; //On passe à l'incrémentation suivante
			
		}
	
	}
	
}