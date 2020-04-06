/// @description scr_treme
/// @arg forca
/// @arg som
/// @arg layer

var f = argument0;
var s = argument1;
var l = argument2;

var treme = instance_create_layer(0,0,l, obj_shake);

treme.f = f;
treme.s = s;
