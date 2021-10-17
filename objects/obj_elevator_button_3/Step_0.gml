if(mouse_check_button_pressed(mb_left)){
	if(position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id)){
		obj_door_elevator.targetRoom = room_third_floor;
		obj_door_elevator.targetEnter = obj_enter_building;
		
		global.isMoving = true;
		
		layer_set_visible("Instance_numbers", false);
		global.isPanelOpened = false;
		audio_play_sound(sn_elevator_select, 1, false);
		audio_play_sound(sn_elevator_moving, 1, false);
		obj_doors.image_speed = -1;
		global.doorState = "closing";
		wall_door.x=640;
		alarm[0] = 5 * room_speed;
	}
}