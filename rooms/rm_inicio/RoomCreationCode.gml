if (!instance_exists(obj_pontos))
{
	instance_create_layer(0,0,"player",obj_pontos);
}

scr_transition("",true, 1);

audio_stop_all();
