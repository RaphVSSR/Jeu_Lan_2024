/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

draw_set_valign(fa_middle);

draw_set_color(c_white);

if clicked{
	
	draw_set_alpha(1);
	draw_text(x - (sprite_width / 2.2), y, txtTyped);
	
}else{
	draw_set_alpha(.5);
	draw_text(x - (sprite_width / 2.2), y, txtTyped);
}

draw_set_valign(fa_top);