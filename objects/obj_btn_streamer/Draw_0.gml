
image_xscale = 3;
image_yscale = 2;

draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(fnt_btn);

if activated {
	
	draw_set_alpha(1);
	image_alpha = 1;
	
	draw_set_color(c_white);
	draw_text(x, y, text);

	
}else{
	
	draw_set_alpha(.5);
	image_alpha = .5;
	
	draw_set_color(c_white);
	draw_text(x, y, text);
	
}


draw_set_halign(fa_left);
draw_set_valign(fa_top);