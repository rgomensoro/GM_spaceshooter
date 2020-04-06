/// @description scr_transition
/// @arg room_destino
/// @arg sumindo
/// @arg alpha

var room_destino = argument0
var sumindo = argument1
var alpha = argument2


	var t = instance_create_layer(0,0,"player",obj_transicao);
	t.room_destino = room_destino;
	t.sumindo = sumindo;
	t.alpha = alpha;
