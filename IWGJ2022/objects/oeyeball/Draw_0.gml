//Draw Eyeball
var pupilx = x + lengthdir_x(5, angle) + sin(random(360)) * 1;
var pupily = y + lengthdir_y(5, angle) + cos(random(360)) * 1;
draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, tilt * multiplier, image_blend, alpha);
draw_sprite_ext(sprite_index, 1, pupilx, pupily, image_xscale, image_yscale, image_angle, image_blend, 1);