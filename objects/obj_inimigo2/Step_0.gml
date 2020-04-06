/// @description Insert description here
// You can write your code in this editor

if (y > 0 && y < 700)
{
	if (!natela)
	{
		natela = true;
		alarm[0] = room_speed*random_range(1.5, 3);
	}

}
else
{
	if (natela) instance_destroy();
}

if (natela && !movendo)
{
	if ((y > room_height / 3) && (movendo == false))
	{
			vspeed +=2;

		if ( x > room_width / 2) // esta nma direita
		{
			hspeed = -4;
			movendo = true;
		}
		else
		{
			hspeed = 4;
			movendo = true;
		}		
	}
}

if (vida_inimigo <= 0)
{
	instance_destroy();
	if (instance_exists(obj_controle))
		obj_controle.xp_atual+= 2;	
	global.total_inimigos_destruidos++;
	global.inimigos_destruidos++;
	
	scr_treme(10,snd_player_explosion,"player");	

}

