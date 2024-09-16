
if global.serverIp == "Ip du serveur" || global.serverIp == "" {
	
	draw_set_color(c_white);
	draw_set_alpha(.5);
	
	draw_set_font(fnt_no_hosts)
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	
	draw_text(50, room_height / 2.5, "Aucun serveur connecté..");
	
	draw_set_valign(fa_top);
	
}else{
	if noHosts {
	
		draw_set_color(c_white);
		draw_set_alpha(.5);
	
		draw_set_font(fnt_no_hosts)
	
		draw_set_halign(fa_left);
		draw_set_valign(fa_middle);
	
		draw_text(50, room_height / 2.5, "Aucun host n'est actif");
	
		draw_set_valign(fa_top);
	
	}
}