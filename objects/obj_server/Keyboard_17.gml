
if keyboard_check_pressed(vk_decimal){
	
	if instance_exists(obj_debug_bar){
		
		instance_destroy(obj_debug_bar, true);
		
	}else{
		instance_create_layer(0, 0, "layr_debug", obj_debug_bar)
	}
}
