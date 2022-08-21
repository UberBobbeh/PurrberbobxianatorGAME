var randx = sin(random(360)) * 3;
var randy = cos(random(360)) * 3;
draw_sprite_ext(sprite_index, image_index, x + randx, y + randy, image_xscale, image_yscale, image_angle, image_blend, image_alpha);