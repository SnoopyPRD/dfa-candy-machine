global.isMoving = false;
sprite_index = spr_button_1_pressed;
obj_elevator_button_2.sprite_index = spr_button_2;
obj_elevator_button_3.sprite_index = spr_button_3;
audio_play_sound(sn_elevator_bell, 1, false);
obj_doors.image_speed = 1;
global.doorState = "opening";
wall_door.x=0;