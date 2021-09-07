function move_state() {
#region Move

script_execute(get_input);
	
//Movimento
xaxis = (key_right - key_left);
yaxis = (key_down - key_up);

//Get direction
dir = point_direction(0, 0, xaxis, yaxis);

if (xaxis == 0) and (yaxis == 0){
	len = 0	
} else {
	len = spd;
}
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);

//Colisão
#region Collision

//Horizontal
if place_meeting(x+hspd, y, obj_wall){
	while !place_meeting(x+hspd, y, obj_wall){
		x+= sign(hspd);
	}
	hspd = 0
}

x += hspd;

//Vertical
if (place_meeting(x, y+vspd, obj_wall)){
	while !place_meeting(x, y+vspd, obj_wall){
		x+= sign(vspd);
	}
	vspd = 0
}

y += vspd

#endregion

#endregion

//Controle do sprite

image_speed = 1;


if (len == 0 && lastDirection == "up") sprite_index = player_up_idle;
else if (len == 0 && lastDirection == "down") sprite_index = player_down_idle;
else if (len == 0 && lastDirection == "left") sprite_index = player_left_idle;
else if (len == 0 && lastDirection == "right") sprite_index = player_right_idle;

//Sprite vertical
if(vspd > 0){
	sprite_index = player_down_walk;	
} else if (vspd < 0){
	sprite_index = player_up_walk;	
}

//Sprite horizontal
if(hspd > 0){
	sprite_index = player_right_walk;	
} else if (hspd < 0){
	sprite_index = player_left_walk;	
}

}

