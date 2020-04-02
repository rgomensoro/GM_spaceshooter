/// @description Insert description here
// You can write your code in this editor

instance_create_layer(x,y,"inimigos",obj_explosao);

var chance_powerup = irandom(100);

if (chance_powerup < 5)
{
	instance_create_layer(x,y,"player",obj_powerup);	

}

