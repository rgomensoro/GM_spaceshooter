/// @description Insert description here
// You can write your code in this editor

var num_of_ships = irandom_range(2,5);

init_xpos = irandom_range (64, 420);
init_ypos = -200;

repeat (num_of_ships)
{
	instance_create_layer(init_xpos, init_ypos, "inimigos", obj_inimigo1);

	init_ypos = irandom_range (-250,-100);

	init_xpos += 64;
}

alarm[0] = irandom_range (1, 2) * room_speed;


