if (invi)
{
	image_alpha = 0.3;
}
else
{
	image_alpha = 1;
}

draw_self();

draw_set_color(c_red);
draw_text(40, room_height - 30, hp);
draw_text(10, room_height - 30, "HP:");

draw_set_color(c_aqua);
draw_text(10, room_height - 50, "Power: ");
draw_text(70, room_height - 50, powLevel);