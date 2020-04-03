/// @description Insert description here
// You can write your code in this editor


draw_text(600,20, "Boss Life: " + string(obj_boss.vida_inimigo));

initpos = (room_width/2) - (500/2);

draw_set_alpha(0.5);
draw_rectangle_color(initpos,5,initpos + vida_inimigo,15,c_red,c_blue,c_blue,c_blue,false);
draw_set_alpha(1);

draw_rectangle(initpos,5,initpos + 500, 15, true);
