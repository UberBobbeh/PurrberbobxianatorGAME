image_yscale = lerp(image_yscale, 1, 0.1);

if place_meeting(x, y, oPlayer) and not oPlayer.on_fire {
	with instance_create_layer(oPlayer.x, oPlayer.y, "Instances", oKidFire) {
		burn_start = oBossController.impossible ? 5.3 : 5;
		burn_time = oBossController.impossible ? 5.3 : 5;
	}
	
	sfx_play_sound(sndIgniteFire)
	oPlayer.on_fire = true
}