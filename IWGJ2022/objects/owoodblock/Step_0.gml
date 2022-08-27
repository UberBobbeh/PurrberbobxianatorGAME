if place_meeting(x, y, oKidFire) {
	repeat(30) instance_create_layer(x, y, layer, oWoodParticle)
	sfx_play_sound(sndWoodBreak)
	instance_destroy(self)
}