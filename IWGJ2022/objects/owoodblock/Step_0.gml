if place_meeting(x, y, oKidFire) {
	repeat(30) {
		instance_create_layer(x, y, layer, oAshParticle)
	}
	instance_destroy(self)
}