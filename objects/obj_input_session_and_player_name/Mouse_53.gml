/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if !position_meeting(mouse_x, mouse_y, obj_input_prnt) || position_meeting(mouse_x, mouse_y, obj_input_team_name){
	clicked = false;
	
	if (string_trim(txtTyped) == "") && global.hostSelected == undefined {
		txtTyped = "Nom de la future session";
	}else if (string_trim(txtTyped) == "") && global.hostSelected != undefined {
		txtTyped = "Pseudo en jeu";
	}
	
	keyboard_string = "";
}