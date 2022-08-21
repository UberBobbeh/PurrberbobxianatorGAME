//Setup Drawing
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_alpha(alpha);

//Draw Dialogue
draw_set_color(color);
draw_set_font(fDialogue);
draw_text(x, y + offset, dialogue);
draw_set_defaults();