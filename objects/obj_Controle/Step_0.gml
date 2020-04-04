/// @description Insert description here
// You can write your code in this editor


if (xp_atual >=  xp_level)
{
	global.level ++;
	xp_level *= 2;
}


if (xp_atual > global.total_pontos)
{
	global.total_pontos = xp_atual;		
}


if (global.level >= 5 && !boss)
{
	instance_create_layer(384,-96,"inimigos", obj_boss);
	instance_destroy(obj_inimigo1);
	instance_destroy(obj_inimigo2);
	boss = true;
	audio_stop_all();
	audio_play_sound(snd_music_boss,1,true);	

}