if (show_level_text)
{
    var screen_width = display_get_gui_width();
    var screen_height = display_get_gui_height();

    draw_set_font(fnt_large); 
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    draw_text(screen_width / 2, screen_height / 2, "Level " + string(global.current_level));

    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}
