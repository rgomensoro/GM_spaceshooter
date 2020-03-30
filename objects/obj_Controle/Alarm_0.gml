/// @description Insert description here
// You can write your code in this editor

ship_offset = 32
var num_of_ships = irandom_range(1,6) * global.level;

repeat (num_of_ships)
{
	init_xpos = irandom_range (ship_offset, room_width - ship_offset);
	init_ypos = irandom_range (-64,-640);

instance_create_layer(init_xpos, init_ypos, "inimigos", obj_inimigo1);


}

alarm[0] = irandom_range (2, 5) * room_speed;


