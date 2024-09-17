
draw_self();

draw_set_color(c_white);
draw_set_alpha(1);

draw_set_valign(fa_middle);

draw_text(x + 30, y, hostName);
draw_text(x + (sprite_width / 1.5), y, hostPlayers);

draw_set_valign(fa_top);