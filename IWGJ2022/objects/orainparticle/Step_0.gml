if place_meeting(x + hspeed, y + vspeed, oBlock) || place_meeting(x + hspeed, y + vspeed, oTimeMachine) {
	
	instance_destroy(self)
}
