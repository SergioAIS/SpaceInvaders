if (invi)
{
	image_alpha = 0.3;
}
else
{
	image_alpha = 1;
}

draw_self();

//draw_set_color(c_red);
//draw_text(40, room_height - 30, hp);
//draw_text(10, room_height - 30, "HP:");

//draw_set_color(c_aqua);
//draw_text(10, room_height - 50, "Power: ");
//draw_text(70, room_height - 50, powLevel);
if (room_width < 481)
{
	draw_set_font(f_game)
	
	draw_sprite(s_gui,-1,0,608);	
	draw_set_color(make_color_rgb(255,64,64));
	draw_rectangle(37,608+12,37+(hp*140/hpMax),608+21,0);

	draw_set_color(c_yellow);
	draw_text(388,608,obj_player.powLevel)

	draw_set_color(c_white);
	draw_text(450,608,obj_player.deaths)
	
	draw_set_color(c_lime)
	draw_text(200, 608, "Score: ")
	draw_text(300, 608, obj_player.Score);
}
else
{
	draw_set_font(f_boss)
	
	draw_sprite(s_gui_boss,-1,0,790)
	draw_set_color(make_color_rgb(255,64,64));
	draw_rectangle(60,805,100+(hp*140/hpMax),817,0);

	draw_set_color(c_yellow);
	draw_text(560,790,obj_player.powLevel)

	draw_set_color(c_white);
	draw_text(646,790,obj_player.deaths)
	
	draw_set_color(c_lime)
	draw_text(300, 790, "Score: ")
	draw_text(420, 790, obj_player.Score)
}



