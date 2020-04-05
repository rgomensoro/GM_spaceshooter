/// @description Insert description here
// You can write your code in this editor

if (room_destino != noone)
{
	var t = instance_create_layer(0,0,"player",obj_transicao);
	t.room_destino = room_destino;
	t.nova_room = true;
}
else
	game_end();