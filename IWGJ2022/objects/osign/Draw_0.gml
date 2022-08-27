draw_self();

//Setup Drawing
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_alpha(alpha);

//Draw Dialogue
draw_set_color(color);
draw_set_font(fDialogue);
draw_text(x + 21, y, dialogue);
draw_set_defaults();