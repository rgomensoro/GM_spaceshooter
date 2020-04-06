/// @description Insert description here
// You can write your code in this editor

instance_create_layer(x,y,"inimigos",obj_explosao);

var chance_powerup = irandom(100);

if (chance_powerup < 2 && natela)
{
	instance_create_layer(x,y+10,"player",obj_powerup);	

}


