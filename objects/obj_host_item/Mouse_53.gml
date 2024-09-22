
if global.hostSelected != undefined {
	if !position_meeting(mouse_x, mouse_y, obj_host_item) && !position_meeting(mouse_x, mouse_y, obj_input_session_and_player_name) && !position_meeting(mouse_x, mouse_y, obj_btn_host) && !position_meeting(mouse_x, mouse_y, obj_btn_join){

		global.hostSelected = undefined;
		image_index = 0;
	
	}
}