if(mouse_check_button_pressed(mb_left)){
	if(position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id)){
		global.coins = global.coins - 2;
		global.coinsOnMachine = global.coinsOnMachine + 2;
		
	}
}
