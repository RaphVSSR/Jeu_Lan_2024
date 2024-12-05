
function instancePlayer(player){
	
//Une fois qu'on appel cette fonction, on a trouvé son équipe, on l'instancie et on retourne son id pour le rajouter à l'équipe dans la foulée

//====== On commence par déterminer comment le render ======
	
	//Est-ce qu'au moins une instance est déjà là ?
	if instance_exists(obj_player_1){
		
		//Si 2 instances players principaux existent déjà, alors le player passe directement en spec
		if instance_number(obj_player_1) == 2{
			
			//On le passe en spec
			global.playerName = ds_map_find_value(player, "name");
			
			return instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_spec, {
		
				name: ds_map_find_value(player, "name"),
				teamName: ds_map_find_value(player, "teamName"),
				x: ds_map_find_value(player, "x"),
				y: ds_map_find_value(player, "y")
		
			});
			
		}else{
				
			//Si une instance d'un perso principal existe déjà, si elle est de son équipe, alors on met le player en spec
			if obj_player_1.teamName == ds_map_find_value(player, "teamName"){
				
				//On le met en spec
				global.playerName = ds_map_find_value(player, "name");

				return instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_spec, {
		
					name: ds_map_find_value(player, "name"),
					teamName: ds_map_find_value(player, "teamName"),
					x: ds_map_find_value(player, "x"),
					y: ds_map_find_value(player, "y")
		
				});
				
			}else{ //Si elle existe déjà mais qu'elle est pas de son équipe, on le créer en tant que 2e player principal
					
				//On le défini comme un 2e perso principal
				global.playerName = ds_map_find_value(player, "name");

				return instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_player_1, {
		
					name: ds_map_find_value(player, "name"),
					teamName: ds_map_find_value(player, "teamName"),
					x: ds_map_find_value(player, "x"),
					y: ds_map_find_value(player, "y")
		
				});
					
			}
			
		}
		
	}else{ //Si elle n'existe pas on l'ajoute comme perso principal
		
		global.playerName = ds_map_find_value(player, "name");
		
		return instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_player_1, {
		
			name: ds_map_find_value(player, "name"),
			teamName: ds_map_find_value(player, "teamName"),
			x: ds_map_find_value(player, "x"),
			y: ds_map_find_value(player, "y")
		
		});
		
	}
	
}

function playerCollisionsInit(){

	//Collision avec le bord de map
	//Axe des X
	if (x + previewCollision) >= room_width || (x - previewCollision) <= 0 {
	
		if x + previewCollision >= room_width {
		
			x = (x - (x - room_width)) - sprite_width;
			
		}
	
		if (x - previewCollision) <= 0 {
		
			x = (x + (-x)) + sprite_width;
			
		}
		
	}

	//Axe des Y
	if (y + previewCollision) >= room_height || (y - previewCollision) <= 0 {
	
		if y + previewCollision >= room_height {
		
			y = (y - (y - room_height)) - sprite_width;
		
		}
	
		if (y - previewCollision) <= 0 {
		
			y = (y + (-y)) + sprite_width;
		
		}
	
	}

}

function grabObject(target){

	target.depth = -10;
	
	target.x = x;
	target.y = y;
	target.image_angle = image_angle;
	
	if target != objectGrabed{
		
		objectGrabed = target;
		
	}
 }
 
 