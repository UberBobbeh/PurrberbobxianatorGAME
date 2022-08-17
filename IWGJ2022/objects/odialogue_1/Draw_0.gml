//Setup Drawing
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_alpha(alpha);

//Draw Icon
if interactable draw_sprite(sUpIcon, 0, x, bbox_top + offset - 36);

//Draw Dialogue
draw_set_color(color);
draw_set_font(fDialogue);
draw_text(x, bbox_top + offset, dialogue);
draw_set_defaults();