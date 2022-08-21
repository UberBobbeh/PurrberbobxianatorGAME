draw_set_alpha(alpha);
draw_rectangle(0, 0, GAME_WIDTH, GAME_HEIGHT, false);
draw_set_defaults();
alpha = max(alpha - 0.05, 0);