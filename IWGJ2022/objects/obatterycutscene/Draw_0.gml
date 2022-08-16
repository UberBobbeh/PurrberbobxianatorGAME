//Draw Text
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_set_font(fDialogue);
draw_text(x, y, string_copy(text, 0, count));
draw_set_defaults();