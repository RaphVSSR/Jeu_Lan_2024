

// Inherit the parent event
event_inherited();

image_yscale = 2;
image_xscale = 7.5;

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