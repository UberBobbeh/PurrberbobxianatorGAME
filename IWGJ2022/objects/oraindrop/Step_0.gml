if place_meeting(x + hspeed, y + vspeed, oBlock) || place_meeting(x + hspeed, y + vspeed, oTimeMachine) {
	repeat(random_range(1, 3)){
		instance_create_layer(x, y, layer, oRainParticle)
	}
	
	instance_destroy(self)
}
