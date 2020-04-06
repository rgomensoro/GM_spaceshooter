/// @description Insert description here
// You can write your code in this editor


if (y > 0)
{
	if (!natela) natela = true;
}	

//Sempre verifica se o Boos morreu
if (vida_inimigo <= 0)
{
	instance_destroy();		
		
	scr_treme(20, snd_player_explosion, "player");	
	
	if (instance_exists(obj_controle))
	{
		obj_controle.xp_atual += 200;
	}
}
	

delay++;
troca_estado++;

switch (estado)
{
	//Estado inicial
	case 0:

		if (y > 192)
		{
			speed = 0;
			estado = irandom_range(1,3);
			delay = 0;
		}
			
		break;
		
	//Estado 1
	case 1:

		if (movendo == false)
		{
			movendo = true;
			hspeed = 2;
		}
		
		if (delay == 30)
			instance_create_layer(x,y,"inimigos", obj_tiro_inimigo2);
	
		break;
	
	case 2:
	
	// Estado 2
		if (movendo == false)
		{
			movendo = true;
			hspeed = -2;
		}

		if (delay == 25)
		{
			instance_create_layer(x-94,y,"inimigos", obj_tiro_inimigo1);
			instance_create_layer(x+94,y,"inimigos", obj_tiro_inimigo1);
		}

		break;

	case 3:
	
		if (movendo == true)
		{
			movendo = false;
			hspeed = 0;
		}

		// Estado 2
		if (delay == 40)
		{
			instance_create_layer(x-94,y,"inimigos", obj_tiro_inimigo1);
			instance_create_layer(x,y,"inimigos", obj_tiro_inimigo2);
			instance_create_layer(x+94,y,"inimigos", obj_tiro_inimigo1);
		}
	
		break;	
}

if (delay >= 60)
{	
	delay = 0;
}
	
	
if (troca_estado >= room_speed * irandom_range(3,5))
{
	estado = irandom_range(1,3);
		
	troca_estado = 0;
}
	
