/// @description Insert description here
// You can write your code in this editor

instance_create_layer(x,y,"player", obj_explosao_player);

	if (instance_exists(obj_escudo))
		instance_destroy(obj_escudo);	

show_debug_message("player:destroyed");
