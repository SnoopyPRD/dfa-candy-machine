if(mouse_check_button_pressed(mb_left)){
	if(position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id) && global.candyAEnabled == true){
		global.troco = global.coinsOnMachine - 6;
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
		instance_create_layer(570, 167, "Instances", obj_lollipop);
		audio_play_sound(sn_buy, 1, false);
	}
}