
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

//Faire que lors que 3 personnes sont présentes par équipes -> on lance la game