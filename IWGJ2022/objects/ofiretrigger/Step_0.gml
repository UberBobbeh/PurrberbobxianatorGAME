///@desc Trigger

if (place_meeting(x, y, oPlayer)) {
	instance_create_layer(oPlayer.x, oPlayer.y, layer, oKidFire)
	sfx_play_sound(sndIgniteFire)
	instance_destroy()
}