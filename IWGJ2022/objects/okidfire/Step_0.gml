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


// Burn to death
if burn_time <= 0 {
	player_kill(oPlayer)
	sfx_play_sound(sndPlayerDeath)
	instance_destroy(self)
	return
}

// Extinguish fire
if oPlayer.place_meeting(oPlayer.x, oPlayer.y, oWater3) {
	oPlayer.image_blend = make_color_rgb(255, 255, 255)
	sfx_play_sound(sndExtinguish)
	instance_destroy(self)
}
