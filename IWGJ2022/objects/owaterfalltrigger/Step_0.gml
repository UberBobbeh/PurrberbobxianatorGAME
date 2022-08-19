///@desc Trigger

if (place_meeting(x, y, oKidFire)) {
	target.vspeed = 1.325
	instance_destroy(self)
}