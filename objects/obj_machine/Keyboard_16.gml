if (global.isOpened){
	layer_set_visible("Instance_machine_numbers", false);
	global.isOpened = false;
	show_debug_message(global.coins);
	show_debug_message(global.coinsOnMachine);
	global.coins = global.coins + global.coinsOnMachine;
	global.coinAdded = "+" string(global.coinsOnMachine);
	if global.coinsOnMachine > 0 {
		instance_create_layer(1066, 61, "Instances", obj_coins_added);
	}
	global.coinsOnMachine = 0;
}