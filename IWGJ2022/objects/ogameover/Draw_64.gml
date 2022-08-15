// Draw Background
alpha = min(alpha + .01, 0.5);
draw_set_color(c_black);
draw_set_alpha(alpha);
draw_rectangle(0, 0, GAME_WIDTH, GAME_HEIGHT, false);
draw_set_defaults();

//Draw Game Over Sprite
time++
if (time >= offset) {
	animation = lerp(animation, 1, 0.05)
	draw_sprite_ext(sGameover, 0, x, y, animation, animation, image_angle, image_blend, animation);
}