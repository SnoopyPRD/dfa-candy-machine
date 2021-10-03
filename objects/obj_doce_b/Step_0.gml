if(mouse_check_button_pressed(mb_left)){
	if(position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id) && global.candyBEnabled == true){
		global.troco = global.coinsOnMachine - 7;
		if(global.troco > 0){
			global.coins += global.troco;
			global.coinAdded = "+" + string(global.troco);
			instance_create_layer(1066, 105, "Instances", obj_coins_added)
		}
		global.candyAEnabled = false;
		global.candyBEnabled = false;
		global.candyCEnabled = false;
		layer_set_visible("Instance_machine_numbers", false);
		global.isOpened = false;
		show_debug_message(global.coins);
		show_debug_message(global.coinsOnMachine);
		global.coinsOnMachine = 0;
		instance_create_layer(560, 167, "Instances", obj_chocolate);
		audio_play_sound(sn_buy, 1, false);
	}
}