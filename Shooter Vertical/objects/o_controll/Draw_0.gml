if (showLevel) {
    draw_sprite(s_level, 0, room_width/2, room_height/2);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(room_width/2, room_height/2 + 40, string(level));
}
