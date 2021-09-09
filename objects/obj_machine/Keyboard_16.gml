if (isOpened){
	instance_deactivate_object(obj_button_2);	
	isOpened = false;
	show_debug_message(global.coins);
	global.coins = global.coins + global.coinsOnMachine;
	show_debug_message(global.coins);
	global.coinsOnMachine = 0;
}