if(mouse_check_button_pressed(mb_left)){
	if(position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id)){
		//Se tiver menos que 10 moedas, adiciona 2 moedas à máquina
		if(global.coinsOnMachine < 10){
			global.coins = global.coins - 2;
			global.coinAdded = "-2"
			instance_create_layer(1066, 61, "Instances", obj_coins_added);
			global.coinsOnMachine = global.coinsOnMachine + 2;
			if(global.coinsOnMachine >= 10){
				global.coins = global.coins + 10 - global.coinsOnMachine;
				global.coinsOnMachine = 10;
			}
		}
		
		//Ativa a compra de doces, caso os valores sejam o suficiente
		if(global.coinsOnMachine >= 6){
			global.candyAEnabled = true;
		}
		if(global.coinsOnMachine >= 7){
			global.candyBEnabled = true;
		}
		if(global.coinsOnMachine >= 8){
			global.candyCEnabled = true;
		}
		audio_play_sound(sn_coin_insert, 1, false);
	}
}