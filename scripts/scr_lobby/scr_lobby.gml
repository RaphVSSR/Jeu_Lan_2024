

function hostDisplaying(){
	
	//On vire l'input de nom de teams
	if instance_exists(obj_input_team_name) {
	
		instance_destroy(obj_input_team_name, true);
	
	}
	
	if instance_exists(obj_btn_join){
	
		//On affecte du code au boutton join pour le changer en boutton streamer
		with obj_btn_join {
			
			instance_change(obj_btn_streamer, true);	
			
		}
	
	}
	
	//On défini la limitte de caractères à 24 pour le nom de session
	obj_input_session_and_player_name.limitChar = 24;

	if obj_input_session_and_player_name.txtTyped != "Nom de la future session" && string_length(obj_input_session_and_player_name.txtTyped) >= 1 {
	
		obj_btn_host.activated = true;
		obj_btn_streamer.activated = true;
			
	}else{
		
		obj_btn_host.activated = false;
		obj_btn_streamer.activated = false;
		
	}

}

function playerDisplaying(){
	
	//On fait apparaitre l'input des équipes
	instance_create_depth(obj_input_session_and_player_name.x, (obj_input_session_and_player_name.y - obj_input_session_and_player_name.sprite_height) - 10, 0, obj_input_team_name);
	
	if instance_exists(obj_btn_streamer){
		
		obj_btn_host.activated = false;
	
		with obj_btn_streamer {
			
			instance_change(obj_btn_join, true);	
			
		}
	
	}
	
	//On défini la limitte de caractères à 12 pour le pseudo de joueur
	obj_input_session_and_player_name.limitChar = 12;
	
	//On veut que le pseudo soit forcément entré pour pouvoir rejoindre
	if (obj_input_session_and_player_name.txtTyped != "Pseudo en jeu" && string_length(obj_input_session_and_player_name.txtTyped) >= 1) && (obj_input_team_name.txtTyped != "Nom de l'équipe" && string_length(obj_input_team_name.txtTyped) >= 1) {
		
		obj_btn_join.activated = true;
		
	}else{
	
		obj_btn_join.activated = false;
		
	}
	
}