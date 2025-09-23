draw_set_font(f_score)
draw_set_color(c_white)
//draw_text(110, 600, "Your Score: ")
	draw_text(300, 560, obj_player.Score)
	
	//Contador Enemy slow
	draw_set_color(c_white)
	draw_set_font(f_game)
	draw_text(250, 92, obj_player.cont_slow)
	draw_text(400, 92, obj_player.cont_slow * 10)
	
	draw_text(250, 167, obj_player.cont_fast)
	draw_text(400, 167, obj_player.cont_fast * 20)
	
	draw_text(250, 235, obj_player.cont_trg)
	draw_text(400, 235, obj_player.cont_trg * 20)
	
	draw_text(250, 300, obj_player.cont_shield)
	draw_text(400, 300, obj_player.cont_shield * 35)
	
	draw_text(250, 400, obj_player.cont_tank)
	draw_text(400, 400, obj_player.cont_tank * 50)
	
	draw_text(250, 495, obj_player.deaths)
	draw_text(400, 495, obj_player.deaths * -100)
	