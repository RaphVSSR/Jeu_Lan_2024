// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function addPlayers(players){ //On vient de récupérer la liste des players du host
	
	//On ajoute les nouveaux joueurs
	for (var i = 0; i < ds_list_size(players); i++){
	
		var player = ds_list_find_value(players, i); //On travail au cas par cas pour les instancier
	
		instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_player, {
		
			name: ds_map_find_value(player, "name"),
			x: ds_map_find_value(player, "x"),
			y: ds_map_find_value(player, "y")
		
		})
	
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