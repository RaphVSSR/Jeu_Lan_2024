/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

draw_set_color(c_white);

if clicked{
	
	draw_set_alpha(1);
	draw_text((sprite_width / sprite_width) + 40, sprite_height / 1.5, txtTyped);
	
}else{

	draw_set_alpha(.5);
	draw_text_color((sprite_width / sprite_width) + 40, sprite_height / 1.5, global.serverIp, c_white, c_white, c_white, c_white, .5);
}