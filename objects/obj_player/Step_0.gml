/// @description Insert description here
// You can write your code in this editor

var esq = keyboard_check(vk_left);
var dir = keyboard_check(vk_right);
var cima = keyboard_check(vk_up);
var baixo = keyboard_check(vk_down);
var tiro = keyboard_check_pressed(vk_space);
var escudo = keyboard_check_pressed(ord("E"));

x = clamp(x,32, room_width - 32);
y = clamp(y,24, room_height - 24);

// Movimento Horizontal.

var velH = (dir-esq)*vel;
x += velH;

// Movimento Vertical.

var velV = (baixo-cima)*vel;
y += velV;


//escudo
if (escudo && obj_controle.qtd_escudo > 0)
{
	if ( !instance_exists(obj_escudo))
	{
		instance_create_layer(x,y,"player",obj_escudo);
		obj_controle.qtd_escudo--;
	}
}

// tiro
if (tiro) 
{
	audio_play_sound(snd_tiro_player,10,false);
	
	switch (obj_controle.level_tiro)
	{
		case 1:
			instance_create_layer(x,y,"player", obj_tiro001);

			break;

		case 2:
		
			var t = instance_create_layer(x-28,y,"player", obj_tiro002);
			t.hspeed = 4;
			
			var t = instance_create_layer(x+28,y,"player", obj_tiro002);
			t.hspeed = -4;
			
			break;
			
		case 3:


			instance_create_layer(x,y,"player", obj_tiro001);

			var t = instance_create_layer(x-28,y,"player", obj_tiro002);
			t.hspeed = 4;
			
			var t = instance_create_layer(x+28,y,"player", obj_tiro002);
			t.hspeed = -4;
			
			break;

			
		case 4:

			var delta = 20;
		
			repeat(3)
			{
				var t = instance_create_layer(x,y,"player", obj_tiro001);
				t.direction += delta;
				t.image_angle += delta;
				
				delta -= 20;
			}

			break;
			
		case 5:


			var delta = 20;
		
			repeat(3)
			{
				var t = instance_create_layer(x-10,y,"player", obj_tiro001);
				t.direction += delta;
				t.image_angle += delta;
				
				delta -= 20;
			}

			var t = instance_create_layer(x-28,y,"player", obj_tiro002);
			t.hspeed = 8;
			
			var t = instance_create_layer(x+28,y,"player", obj_tiro002);
			t.hspeed = -8;
			

			break;
	}
}

if (obj_controle.vida <= 0)
{
	instance_destroy();
	audio_stop_all();
	audio_play_sound(snd_loose,20,false);	
}
