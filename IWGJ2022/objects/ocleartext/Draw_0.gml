draw_set_color(savedata_get_active("difficulty") == DIFFICULTY.DEATHLESS ? c_white : c_black);
draw_set_font(fMenu);
draw_set_halign(align);
draw_text_transformed(x, y, ttext, scale, scale, 0);
draw_set_defaults();