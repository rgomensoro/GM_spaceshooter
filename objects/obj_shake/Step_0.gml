/// @description Insert description here
// You can write your code in this editor


var camx = random_range(-f,f);
var camy = random_range(-f,f);

camera_set_view_pos(view_camera[0],camx,camy);

//amortecendo a trepidação.
f *= 0.95

if (s != noone)
{
	audio_play_sound(s,10,false);
	s = noone;
}


