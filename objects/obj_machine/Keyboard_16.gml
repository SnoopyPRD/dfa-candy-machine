if (global.isOpened){
	layer_set_visible("Instance_machine_numbers", false);
	global.isOpened = false;
	show_debug_message(global.coins);
	show_debug_message(global.coinsOnMachine);
	global.coinsOnMachine = 0;
}