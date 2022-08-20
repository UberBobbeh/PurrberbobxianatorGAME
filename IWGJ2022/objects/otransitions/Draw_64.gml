draw_set_color(color);
draw_set_alpha(alpha);
draw_rectangle(0, 0, GAME_WIDTH, GAME_HEIGHT, false);
draw_set_defaults();
if mode = transitionmode.staticout draw_sprite(sStatic, counter/3, 0, 0);