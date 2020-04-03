/// @description Insert description here
// You can write your code in this editor

// Inicializano as variaves

global.level = 1;

randomize();

// Dados do player
xp_atual = 0;
xp_level = 2;
vida = 3;
level_tiro = 1;
qtd_escudo = 3;

//debug boss
boss = false

alarm[0] = irandom_range (2, 5) * room_speed;
