//Draw White
whitealpha = min(whitealpha + 0.02, 1);
draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, image_angle, image_blend, whitealpha);

//Draw Hurt
hurtalpha = max(hurtalpha - 0.05, 0);
draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, image_angle, c_red, hurtalpha);

//Draw Pupil
rotation = (rotation + 1) % 360
if instance_exists(oPlayer) angle = point_direction(x, y, oPlayer.x, oPlayer.y);
var eyex = x + lengthdir_x(30, angle) + sin(random(2 * pi)) * 2;
var eyey = y + lengthdir_y(30, angle) + cos(random(2 * pi)) * 2;
draw_sprite_ext(sprite_index, 2, eyex, eyey, image_xscale, image_yscale, rotation, image_blend, image_alpha);