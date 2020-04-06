/// @description Insert description here
// You can write your code in this editor


if (y > 0 && y < 700)
{
	if (!natela)
	{
		natela = true;
		alarm[0] = room_speed*random_range(0.5, 1.5);
	}
	
	natela = true;
}
else
{
	if (natela) instance_destroy();
}

if (vida_inimigo <= 0)
{
	instance_destroy();
		if (instance_exists(obj_controle))
			obj_controle.xp_atual++;	
			
	global.total_inimigos_destruidos++;
	global.inimigos_destruidos++;
	
	scr_treme(5,snd_player_explosion,"player");	
}