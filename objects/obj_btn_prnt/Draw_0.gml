
draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(fnt_btn);
draw_set_alpha(.5);

image_alpha = .5;

if state = 0 {
	draw_set_color(c_white);
	draw_text(x, y, text);
}else{
	draw_set_color(c_black);
	draw_text(x, y, text);
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);