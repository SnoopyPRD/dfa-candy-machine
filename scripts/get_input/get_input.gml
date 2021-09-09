function get_input() {
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));



if(key_up) lastDirection = "up";
if(key_down) lastDirection = "down";
if(key_left) lastDirection = "left";
if(key_right) lastDirection = "right";

xaxis = (key_right - key_left);
yaxis = (key_down - key_up);
}
