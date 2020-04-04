/// @description Insert description here
// You can write your code in this editor

if (sumindo)
{
	alpha -= 0.02;
}
else
{
	alpha += 0.02;
}

if (alpha >= 1)
{
	sumindo = true;
	room_goto(room_destino);
	instance_destroy();
	show_debug_message("Sumindo Transicao destroyed");
}

if (alpha <= 0)
{
	instance_destroy();
	show_debug_message("Aparecendo Transicao destroyed");
}
