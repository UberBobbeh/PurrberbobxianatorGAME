//Draw Dialogue
draw_set_halign(fa_center);
draw_set_alpha(alpha);
draw_set_color(color);
draw_set_font(fDialogue);
draw_text(x, bbox_top + offset, dialogue);
draw_set_defaults();