///Draw Event
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_set_alpha(text_alpha); //I added this line
draw_sprite(spr_coke, 0, x, y)
draw_set_alpha(1); //I added this line