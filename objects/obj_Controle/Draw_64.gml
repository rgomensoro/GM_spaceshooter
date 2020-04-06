/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_botao);
draw_text(20,20, "Level: " + string(global.level));

pos = 0;
//desenhando a vida
repeat (vida)
{
	
   draw_sprite_ext(spr_player,spr_player.image_index, 40 + pos, room_height-50, 0.5, 0.5, 0, c_white, 1);
	pos+=32;
}

pos = 0;
//desenhando o escudo
repeat (qtd_escudo)
{
	
   draw_sprite_ext(spr_escudo,2, (room_width-40) - pos, room_height-50, 0.3, 0.3, 0, c_white, 1);
	pos+=32;
}
