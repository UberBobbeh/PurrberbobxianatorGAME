//Sinewave
percent = (percent + 0.02) % 1
var offset = animcurve_channel_evaluate(curve, percent) * 3;

//Collect Animation
if collected animation = lerp(animation, 1, 0.2);

//Draw
var scale = 1 + (animation * 0.2);
var alpha = 1 - animation;
draw_sprite_ext(sprite_index, 0, x, y + offset, scale, scale, image_angle, image_blend, alpha);