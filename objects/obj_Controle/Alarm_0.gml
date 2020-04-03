/// @description Insert description here
// You can write your code in this editor


var num_of_ships = irandom_range(1,3)*global.level;

repeat (num_of_ships)
{
	
	init_xpos = irandom_range (64, 736);
	init_ypos = irandom_range (-64, -640);

	var factor = 10*(global.level - 1);
	
	var chance = irandom(10+factor);
	
	if (chance <= 10)
	{
		instance_create_layer(init_xpos, init_ypos, "inimigos", obj_inimigo1);	
	}
	else
	{
		instance_create_layer(init_xpos, init_ypos, "inimigos", obj_inimigo2);
	}
}

if (global.level < 5)
{
	alarm[0] = irandom_range (2, 5) * room_speed;
}
else
{
	alarm[1] = 5 * room_speed;
}


