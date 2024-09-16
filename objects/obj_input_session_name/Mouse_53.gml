/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if !position_meeting(mouse_x, mouse_y, obj_input_prnt){
	clicked = false;
	
	if string_trim(txtTyped) == ""{
		txtTyped = "Nom de la future session";
	}
	
	keyboard_string = "";
}