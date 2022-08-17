x = oPlayer.x
y = oPlayer.y

dt = delta_time / 1000000

burn_time -= dt

// Change player brightness
brightness = clamp((burn_time + 2) * 25, 0, 255)
oPlayer.image_blend = make_color_rgb(brightness, brightness, brightness)

// Create the trail of fire
trail_creation_time -= dt
if trail_creation_time <= 0{
	instance_create_layer(oPlayer.x, oPlayer.y + 4, layer, oFireTrail)
	trail_creation_time = 0.01
}

// Create smoke
smoke_creation_time -= dt
if smoke_creation_time <= 0{
	smoke_x = x + random_range(-9, 9)
	smoke_y = oPlayer.y + random_range(-32, -24)
	instance_create_layer(smoke_x, smoke_y, layer, oSmokeParticle)
	smoke_creation_time = 0.005
}


// Burn to death
if burn_time <= 0 {
	player_kill(oPlayer)
	sfx_play_sound(sndPlayerDeath)
	instance_destroy(self)
	return
}

// Extinguish fire
if oPlayer.place_meeting(oPlayer.x, oPlayer.y, oWater2) {
	oPlayer.image_blend = make_color_rgb(255, 255, 255)
	sfx_play_sound(sndExtinguish)
	instance_destroy(self)
}
