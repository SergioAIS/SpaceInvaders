draw_self()

if (state == "fight")
{
	draw_set_color(c_red)
	draw_rectangle(64, 16, 64 + (hp * 350 / hpMax), 24, false)
}
