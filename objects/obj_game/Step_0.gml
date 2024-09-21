
//Auto kick si le host part
//if global.hostName == noone{
//	room_goto(rm_lobby);
//}

//Affichage du menu de pause
if keyboard_check_pressed(vk_escape){
	
	instance_create_layer(0, 0, "layr_pause", obj_menu);
}