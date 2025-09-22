/// Draw GUI Event para la barra derecha en LTS

// Margen dentro de la barra derecha
base_x = 480 + 20; // room_width = 480, + margen
base_x_boss = 515 
base_y = 50;
base_y_boss = 60

draw_set_font(f_game)
draw_set_color(c_yellow)
draw_sprite(s_level, 0, -150, 26)
draw_text(-100, 10, level)
// Sprite opcional
//draw_sprite(s_gui, -1, base_x - 20, base_y - 10);

if (room = r_game)
{
	draw_set_font(f_game)
	// Barra de vida
	draw_set_color(make_color_rgb(255,64,64));
	draw_text(base_x, base_y, "HP: ");
	draw_rectangle(base_x + 40, base_y + 23, base_x + 40 + (obj_player.hp * 140 / obj_player.hpMax), base_y + 8, false);

	// Power level
	draw_set_color(c_yellow);
	draw_text(base_x, base_y + 20, "POWER LEVEL: ");
	draw_text(base_x + 165, base_y + 20, obj_player.powLevel);

	// Deaths
	draw_set_color(c_white);
	draw_text(base_x, base_y + 40, "DEATHS: ");
	draw_text(base_x + 90, base_y + 40, obj_player.deaths);

	// Score
	draw_set_color(c_lime);
	draw_text(base_x, base_y + 60, "Score: ");
	draw_text(base_x + 80, base_y + 60, obj_player.Score);
}
else if (room = r_boss)
{
	draw_set_font(f_boss)
	//BOSS

	draw_set_color(make_color_rgb(255,64,64));
	draw_text(base_x_boss, base_y_boss - 20, "HP: ");
	draw_rectangle(base_x_boss + 55, base_y_boss, base_x_boss + 80 + (obj_player.hp * 140 / obj_player.hpMax), base_y_boss + 8, false);

	// Power level
	draw_set_color(c_yellow);
	draw_text(base_x_boss, base_y_boss + 30, "POWER LEVEL: ");
	draw_text(base_x_boss + 230, base_y_boss + 30, obj_player.powLevel);

	// Deaths
	draw_set_color(c_white);
	draw_text(base_x_boss, base_y_boss + 80, "DEATHS: ");
	draw_text(base_x_boss + 150, base_y_boss + 80, obj_player.deaths);

	// Score
	draw_set_color(c_lime);
	draw_text(base_x_boss, base_y_boss + 120, "Score: ");
	draw_text(base_x_boss + 150, base_y_boss + 120, obj_player.Score);
}else if (room = r_final)
{
	draw_set_color(make_color_rgb(255,64,64));
	draw_text(base_x_boss, base_y_boss - 20, "HP: ");
	draw_rectangle(base_x_boss + 55, base_y_boss, base_x_boss + 80 + (obj_player.hp * 140 / obj_player.hpMax), base_y_boss + 8, false);

	// Power level
	draw_set_color(c_yellow);
	draw_text(base_x_boss, base_y_boss + 30, "POWER LEVEL: ");
	draw_text(base_x_boss + 230, base_y_boss + 30, obj_player.powLevel);

	// Deaths
	draw_set_color(c_white);
	draw_text(base_x_boss, base_y_boss + 80, "DEATHS: ");
	draw_text(base_x_boss + 150, base_y_boss + 80, obj_player.deaths);

	// Score
	draw_set_color(c_lime);
	draw_text(base_x_boss, base_y_boss + 120, "Score: ");
	draw_text(base_x_boss + 150, base_y_boss + 120, obj_player.Score);
}