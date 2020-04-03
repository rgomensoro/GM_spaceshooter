/// @description Insert description here
// You can write your code in this editor

if (inicio)
{
	if (y > 192)
	{
		inicio = false
		speed = 0;
	}
	
}
else
{
	delay++;

	switch (estado)
	{
		case 0:
	
		// Estado 0
		if (movendo == false)
		{
			movendo = true;
			hspeed = 2;
		}
		
		if (delay == 30)
			instance_create_layer(x,y,"inimigos", obj_tiro_inimigo2);
	
		break;
	
		case 1:
	
		// Estado 1
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

		case 2:
	

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

	if (delay == 60)
	{
	
		if (troca_estado > 0)
		{
			troca_estado--;
		}
		else
		{
			estado = irandom(2);
			troca_estado = irandom_range(1,5);

		}		
	
		delay = 0;
	}
}