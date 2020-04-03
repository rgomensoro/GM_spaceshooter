/// @description Insert description here
// You can write your code in this editor


speed = 4;

//seguindo o player

if (instance_exists(obj_player))
{
	direction = point_direction(x,y,obj_player.x,obj_player.y);
}
else
{
	direction = 180;
}

image_angle = 180;

image_xscale = 2;

alarm[0] = 5;

audio_play_sound(snd_tiro_inimigo,10,false);
