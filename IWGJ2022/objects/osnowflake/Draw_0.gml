//Draw Snowflake
var scale = 1 + (0.5 * animation);
var alpha = 1 - animation;
draw_sprite_ext(sprite_index, 0, x, y, scale, scale, angle, image_blend, alpha);