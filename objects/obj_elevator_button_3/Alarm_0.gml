global.isMoving = false;
		
sprite_index = spr_button_3_pressed;
obj_elevator_button_1.sprite_index = spr_button_1
obj_elevator_button_2.sprite_index = spr_button_2
obj_doors.image_speed = 1;
global.doorState = "opening";
wall_door.x=0;
audio_play_sound(sn_elevator_bell, 1, false);