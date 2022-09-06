//Sinewave Animation
var drawy = y + animcurve_channel_evaluate(curve, percenta) * 4;
percenta = (percenta + 0.01) % 1

//Spinning Clock
draw_sprite_ext(sprite_index, 0, x, drawy, image_xscale, image_yscale, spin, image_blend, image_alpha);
spin = (spin + 0.5) % 360

//Eye
//draw_sprite(sprite_index, 1, x, drawy);
draw_sprite_ext(sprite_index, 1, x, drawy, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
draw_sprite_ext(sprite_index, 1, x, drawy, image_xscale, image_yscale, image_angle, c_red, hurtalpha);
hurtalpha = max(hurtalpha - 0.05, 0);

//Pupil
if instance_exists(oPlayer) angle = point_direction(x, y, oPlayer.x, oPlayer.y);
var eyex = x + lengthdir_x(5, angle) + sin(random(2 * pi));
var eyey = drawy + lengthdir_y(5, angle) + cos(random(2 * pi));
draw_sprite(sprite_index, 2, eyex, eyey);

//Wings
var wingangle = animcurve_channel_evaluate(curve, percentb) * 6;
draw_sprite_ext(sprite_index, 3, x, drawy, image_xscale, image_yscale, wingangle, image_blend, image_alpha);
draw_sprite_ext(sprite_index, 3, x, drawy, -image_xscale, image_yscale, -wingangle, image_blend, image_alpha);
percentb = (percentb + 0.03) % 1