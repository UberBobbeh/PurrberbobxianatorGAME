if collision_rectangle(
	bbox_left - 2,
	bbox_top - 1,
	bbox_right + 1,
	bbox_bottom + 1,
	oPlayer,
	false,
	false) && !triggered {
	triggered = true
	sfx_play_sound(sndDing)
	oTrollText.ttext = "lmao"
}