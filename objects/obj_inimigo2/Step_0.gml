/// @description Insert description here
// You can write your code in this editor

if (y > 0 && y < 700)
{
	if (!natela)
	{
		natela = true;
		alarm[0] = room_speed*random_range(1.5, 3);
	}
	
	natela = true;
}
else
{
	if (natela) instance_destroy();

	natela = false;
}

if (natela)
{
	if ((y > room_height / 3) && (movendo == false))
	{
			vspeed +=2;

		if ( x > room_width / 2) // esta nma direita
		{
			hspeed = 4;
			movendo = true;
		}
		else
		{
			hspeed = -4;
			movendo = true;
		}		
	}
}