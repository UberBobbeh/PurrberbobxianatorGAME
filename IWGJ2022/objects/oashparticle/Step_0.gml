if place_meeting(x, y, oBlock) {
	hspeed = 0
	vspeed = 0
	gravity = 0
}

lifetime -= delta_time / 1000000
if lifetime <= 0 {
	instance_destroy(self)
}
