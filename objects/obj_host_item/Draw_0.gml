
draw_self();

draw_set_color(c_white);
draw_set_alpha(1);
draw_set_font(fnt_debug);

draw_set_valign(fa_middle);

draw_text(x + 30, y, name);

draw_text(x + (sprite_width / 1.5), y, players);

draw_set_valign(fa_top);

//====== on affiche l'interface d'attente ======
if (name == global.hostName && global.hostActive) || (name == global.hostSelected){
	
	image_index = 1;
	
	draw_set_valign(fa_middle);	
	draw_set_halign(fa_center);
	
	draw_set_font(fnt_attente_titre);
	draw_text(obj_input_session_and_player_name.x, room_height / 5, "Joueurs restants");
	
	draw_set_font(fnt_attente_stats);
	draw_text(obj_input_session_and_player_name.x, room_height / 2, string(players) + "/6");
	
	draw_set_valign(fa_top);	
	draw_set_halign(fa_left);
	
}else{

	image_index = 0;
	
}