//Draw Batteries
var offset = animcurve_channel_evaluate(curve, percenta) * 5
var rotation = animcurve_channel_evaluate(curve, percentb) * 10
draw_sprite_ext(sBatteries, 0, x, base + offset, appeared, appeared, rotation, image_blend, appeared);