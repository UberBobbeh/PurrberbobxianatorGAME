///@desc Trigger

if place_meeting(x, y, oPlayer) and not oPlayer.on_fire {
	instance_create_layer(oPlayer.x, oPlayer.y, "Instances", oKidFire)
	sfx_play_sound(sndIgniteFire)
	
	oPlayer.on_fire = true
}