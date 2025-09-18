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
	draw_sprite(s_gui,-1,0,608);	
	draw_set_color(make_color_rgb(255,64,64));
	draw_rectangle(37,608+12,37+(hp*140/hpMax),608+21,0);

	draw_set_color(c_yellow);
	draw_text(388,608+8,obj_player.powLevel)

	draw_set_color(c_white);
	draw_text(450,608+8,obj_player.deaths)
}
else
{
	draw_set_font(Font1)
	
	draw_sprite(s_gui_boss,-1,0,780)
	draw_set_color(make_color_rgb(255,64,64));
	draw_rectangle(60,798,100+(hp*140/hpMax),810,0);

	draw_set_color(c_yellow);
	draw_text(560,792,obj_player.powLevel)

	draw_set_color(c_white);
	draw_text(646,792,obj_player.deaths)
}

