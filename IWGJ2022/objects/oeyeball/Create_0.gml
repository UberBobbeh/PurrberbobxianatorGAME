//Initialize Animation
var target = instance_exists(oPlayer) ? oPlayer : oPlayerStart
angle = point_direction(x, y, target.x, target.y);
tilt = clamp((target.y - y) / 3, -20, 20);
multiplier = cos(angle * (pi / 180));
alpha = 0;