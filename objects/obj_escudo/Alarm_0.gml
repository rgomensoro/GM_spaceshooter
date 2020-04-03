/// @description Insert description here
// You can write your code in this editor

image_index--;

if (image_index < 0)
	instance_destroy();
else
	if (image_index == 0)
		alarm[0] = room_speed;
	else
			alarm[0] = room_speed/2;
