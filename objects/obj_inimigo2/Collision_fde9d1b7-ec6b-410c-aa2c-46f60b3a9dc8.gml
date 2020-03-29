/// @description Insert description here
// You can write your code in this editor

vida_inimigo --;

if (vida_inimigo <= 0) instance_destroy();

if (instance_exists(obj_controle)) obj_controle.vida--;

