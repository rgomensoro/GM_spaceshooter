/// @description Insert description here
// You can write your code in this editor

if (room == rm_score)
{

	draw_set_color(c_white);
	draw_set_font(fnt_titulo);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_text(room_width/2,40, "Maior Pontuacao");
	draw_set_font(fnt_score);
	draw_set_color(c_yellow);
	draw_text(room_width/2,(room_height/2)-40, "Total de pontos: " + string(global.total_pontos));
	draw_text(room_width/2,(room_height/2), "Maior qtd Inimigos destruidos: " + string(global.maior_inimigos_destruidos));
	draw_text(room_width/2,(room_height/2)+40, "Total de Inimigos destruidos: " + string(global.total_inimigos_destruidos));
	draw_set_color(c_white);
	draw_set_halign(fa_left);
}
