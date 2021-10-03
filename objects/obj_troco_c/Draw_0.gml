draw_set_font(fn_arial);
draw_set_halign(fa_left);
draw_set_valign(fa_left);
if(global.coinsOnMachine >= 8){
	draw_text(x, y,"Troco: " + string(global.coinsOnMachine - 8))
}
draw_set_color(c_black);
