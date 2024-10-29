

function addPlayers(players){ //On vient de récupérer la liste des players du host
	
	//Si le joueur est un joueur principal
	for (var i = 0; i < instance_number(obj_player); i++){
	
		//On vérifie dans l'instance des joueurs principaux si le nom du joueur local correspond avec une instance
		with (instance_find(obj_player, i)){
			
			if name != global.playerName {
				
				//On ajoute les nouveaux joueurs
				for (var j = 0; j < ds_list_size(players); j++){
	
					var player = ds_list_find_value(players, j); //On travail au cas par cas pour les instancier
		
					var teams = obj_game.teams;


				//======= REFERENCEMENT DES EQUIPES ======			
		
					if ds_map_find_value(player, "teamName") != noone { //Noone dit en fait que le player est streamer
			
						//On créer un nouvel objet pour associer nom du joueur avec son numéro d'instance => le retrouver et l'isoler plus facilement
						var oPlayer = ds_map_create();
			
						//On ajoute le nom du player à l'objet
						ds_map_add(oPlayer, "name", ds_map_find_value(player, "name"));
			
						show_debug_message(json_encode(oPlayer));
			
						//Est-ce que son équipe est déjà référencée ?
						for (var k = 0; k < ds_list_size(teams); k++){ //On check chaques objets/équipe de la liste équipes
				
							//Si y a pas de champ "name" alors aucune équipe n'est resssencée à l'emplacement j de la liste teams
							if !ds_map_exists(ds_list_find_value(teams, k), "name") {
					
								//On ajoute la première équipe comme référence
								ds_map_add(ds_list_find_value(teams, k), "name", ds_map_find_value(player, "teamName"));
					
								//On ajoute l'id du player à son objet
								ds_map_add(oPlayer, "id", instancePlayer(player));
					
								show_debug_message(json_encode(oPlayer));
					
								//On ajoute le player à la liste préconfigurée
								ds_list_add(ds_map_find_value(ds_list_find_value(teams, k), "players"), oPlayer);
					
								break; //On sort de la boucle actuelle, parce que on vient de créer l'équipe du player, on va pas aller au 2e tour de boucle sinon on créerait 2 équipes identiques
					
							}else{ //Si il y a un champ "name"
					
								//On check si l'équipe présente est égale à l'équipe du player
								if ds_map_find_value(ds_list_find_value(teams, k), "name") == ds_map_find_value(player, "teamName"){
					
									//On ajoute l'id du player à son objet
									ds_map_add(oPlayer, "id", instancePlayer(player));
						
									//On ajoute le player à l'équipe en question
									ds_list_add(ds_map_find_value(ds_list_find_value(teams, k), "players"), oPlayer);
						
									break;
						
								}
						
								//Si l'équipe ne correspond pas on va chercher le prochain tour de boucle -> vérifier le 2e emplacement d'équipe
						
								/*Penser à faire que si aucune équipe ne correspond, alors c'est la faute du player donc il se fait "kick" et il retourne au lobby
						
								PB: si c'est le 2e player qui a merdé, alors on est foutu parce que ça sera considéré comme 2e équipe et les autres players de la 2e équipe
								se feront kick..*/
								
					
							}
				
						}
			
					}
					//Fin de la config / vérif des équipes
	
				}
			
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
		
			//On parcours tout les objets players pour les identifier
			for (var j = 0; j < instance_number(obj_player); j++){ //On construit un espèce de foreach
				
				if instance_find(obj_player, j).name == ds_map_find_value(player, "name"){
				
					with(instance_find(obj_player, j)){ //Sur chaque instances on change ses stats
				
						x = ds_map_find_value(player, "x");
						y = ds_map_find_value(player, "y");
					}
					
					break; //Sort de la boucle si condition true
				}
		
			}
			
		}else{
			
			continue; //On passe à l'incrémentation suivante
			
		}
	
	}
	
}