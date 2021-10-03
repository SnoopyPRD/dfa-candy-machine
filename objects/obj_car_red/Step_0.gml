if (place_meeting(x, y, obj_wall_car)){
	x = 1168;
}
if (place_meeting(x-10, y, obj_player) || place_meeting(x+10, y, obj_player)){
	move_towards_point(-125, 287, 0);
	image_speed=0;
} else {
	move_towards_point(-125, 287, 1.5);	
	image_speed=5;
}