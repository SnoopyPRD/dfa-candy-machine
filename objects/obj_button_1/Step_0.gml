if(mouse_check_button_pressed(mb_left)){
	if(position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id)){
		
		//Se tiver menos que 10 moedas, adiciona 1 moeda à máquina
		if(global.coinsOnMachine < 10){
			global.coins = global.coins - 1;
			global.coinsOnMachine = global.coinsOnMachine + 1;
		}
		
		//Caso o valor da máquina seja igual ou superior a 10, nada muda
		if(global.coinsOnMachine >= 10){
			global.coinsOnMachine = 10;
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
	}
}