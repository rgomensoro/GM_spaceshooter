/// @description Insert description here
// You can write your code in this editor

var esq = keyboard_check(vk_left);
var dir = keyboard_check(vk_right);
var cima = keyboard_check(vk_up);
var baixo = keyboard_check(vk_down);
var tiro = keyboard_check_pressed(vk_space);

// Movimento Horizontal.

var velH = (dir-esq)*vel;

x += velH;


// Movimento Horizontal.

var velV = (baixo-cima)*vel;

y += velV;

// tiro

if (tiro) 
{
	instance_create_layer(x,y,"player", obj_tiro001);
}

if (obj_controle.vida <= 0)
{
	instance_destroy();
}
