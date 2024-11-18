
image_xscale = 7.5;
image_yscale = 2;

draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(fnt_btn);


draw_set_alpha(1);
image_alpha = 1;

draw_set_color(c_white);

if obj_lobby.starting != 6 && !global.hostActive && image_index == 0 {
	
	text = "Début de la partie dans " + string(obj_lobby.starting) + "..";	
	draw_text(x, y, text);
	
}else{
	
	draw_text(x, y, text);
	
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);