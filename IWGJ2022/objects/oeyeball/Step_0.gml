//Animation
if instance_exists(oPlayer) {
	angle = point_direction(x, y, oPlayer.x, oPlayer.y);
	tilt = clamp((oPlayer.y - y) / 3, -20, 20);
	multiplier = cos(angle * (pi / 180));
	alpha = (80 - distance_to_point(oPlayer.x, oPlayer.y) / 2) / 200;
}