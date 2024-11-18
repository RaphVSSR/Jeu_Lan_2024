/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if !position_meeting(mouse_x, mouse_y, obj_input_prnt) || position_meeting(mouse_x, mouse_y, obj_input_session_and_player_name){
	clicked = false;
	
	if (string_trim(txtTyped) == ""){
		txtTyped = "Nom de l'équipe";
	}
	
	keyboard_string = "";
}