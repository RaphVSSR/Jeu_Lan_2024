
//Auto kick si le host part
//if global.hostName == noone{
//	room_goto(rm_lobby);
//}

//Affichage du menu de pause
if keyboard_check_pressed(vk_escape){
	
	if instance_exists(obj_menu){
		
		instance_destroy(obj_menu, true);
		
	}else{
		
		instance_create_layer(0, 0, "layr_pause", obj_menu);
		
	}
}

switch global.visibility { //Si on est main on masque tout les specs
	
	case "main":
				
		if instance_exists(obj_spec){
				
			obj_spec.visible = false;
				
		}
		
		break;
	
	case "spec":
	
		//Voir que sa team
		
		break;
				
}

//On récup les autres players ici plutôt que dans l'objet player ou spec
if hostState == "streamer" {
	
	var data = ds_map_create();
	
	ds_map_add(data, "hostName", global.hostName);
	
	sendData(global.serverIp, data, global.playerBuffer, msgType.UPDATE_PLAYER_STAT);
	
}