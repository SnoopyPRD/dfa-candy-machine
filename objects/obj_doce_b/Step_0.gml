if(mouse_check_button_pressed(mb_left)){
	if(position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id) && global.candyBEnabled == true){
		global.troco = global.coinsOnMachine - 7;
		if(global.troco > 0){
			global.coins += global.troco;
		}
		layer_set_visible("Instance_machine_numbers", false);
		global.isOpened = false;
		show_debug_message(global.coins);
		show_debug_message(global.coinsOnMachine);
		global.coinsOnMachine = 0;
	}
}