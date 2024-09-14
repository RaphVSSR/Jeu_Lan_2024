
draw_self();

if clicked{
	
	draw_text((sprite_width / sprite_width) + 40, sprite_height / 1.5, txtTyped);
	
}else{

	draw_text_color((sprite_width / sprite_width) + 40, sprite_height / 1.5, global.serverIp, c_white, c_white, c_white, c_white, .5);
}