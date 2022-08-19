//Draw Gem
var offset = animcurve_channel_evaluate(curve, percent) * 5
draw_sprite_ext(sprite_index, 0, x, base + offset, appeared, appeared, image_angle, image_blend, appeared);