
if global.nbPlayer = noone{
	room_goto(rm_lobby);
}


if keyboard_check_pressed(vk_escape){
	
	instance_create_layer(0, 0, "layr_pause", obj_menu);
}