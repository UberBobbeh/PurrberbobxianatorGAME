var xval = animcurve_channel_evaluate(curvex, percent);
var yval = animcurve_channel_evaluate(curvey, percent);
var index = sign(animation_counter);
draw_sprite_ext(sSave, index, x, y, xval, yval, image_angle, image_blend, image_alpha);