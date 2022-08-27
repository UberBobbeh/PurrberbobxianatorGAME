image_yscale = lerp(image_yscale, 1, 0.1);

if place_meeting(x, y, oPlayer) and not oPlayer.on_fire {
	with instance_create_layer(oPlayer.x, oPlayer.y, "Instances", oKidFire) {
		burn_start = 4;
		burn_time = 4;
	}
	
	sfx_play_sound(sndIgniteFire)
	oPlayer.on_fire = true
}