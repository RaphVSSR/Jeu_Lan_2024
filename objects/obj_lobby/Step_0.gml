
//On regarde si on doit remettre les boutons initiaux
if global.hostName == noone && global.playerName == undefined {

	if !(instance_exists(obj_btn_host) && instance_exists(obj_btn_streamer)){
		
		//On supprime les autres boutons et affiche le bouton host et streamer
		instance_destroy(obj_btn_prnt, true);
	
		instance_create_depth(obj_input_session_and_player_name.x / 1.14, obj_input_session_and_player_name.y + 100, -5, obj_btn_host);
		instance_create_depth(obj_input_session_and_player_name.x * 1.12, obj_input_session_and_player_name.y + 100, -5, obj_btn_streamer);
	
	}
}

//====== Quand les boutons hosts et players sont affichés ======
//On vérifie si le text à changé dans l'input, et si c'est le cas, alors on change l'affichage des bouttons en conséquence
if global.hostSelected == undefined && instance_exists(obj_btn_host) {
	
	btnHostDisplaying();
	
}else if global.hostSelected != undefined && !instance_exists(obj_btn_joining){
	
	btnPlayerDisplaying();
	
}

//====== Si on vient de hoster ======
if global.hostActive {
	
	instance_destroy(obj_btn_host, true);	
	instance_destroy(obj_btn_streamer, true);

	instance_create_depth(obj_input_session_and_player_name.x, obj_input_session_and_player_name.y + 100, -5, obj_btn_hosting);
	
}

//====== On check si on met le décompte -> si la session est pleine et si la session existe sinon on tourne dans le vent ======

with obj_host_item {
	
	switch name {
		
		case global.hostName:
		case global.hostSelected:
		
			if players > 1 && obj_lobby.alarm[0] == -1 {
				
				//On lance le décompte tant qu'on reste à 6 joueurs -> on fait pas défiler tout le décompte d'un coup pour s'assurer de pas commencer la partie si quelqu'un est parti
				obj_lobby.alarm[0] = fps * 2;
		
			}else if players != 6 && obj_lobby.alarm[0] == -1 {
			
				if obj_lobby.starting != 6 {
				
					obj_lobby.starting = 6;	
				
				}
			
			}
		
			break;
		
	}
	
	break;
	
}