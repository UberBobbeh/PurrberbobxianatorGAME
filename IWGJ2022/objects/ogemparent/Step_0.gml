//Floating Animation
percent = (percent + 0.01) % 1

//Collect Gem
if place_meeting(x, y, oPlayer) && !collected {
	collected = true;
	oPlayer.frozen = true;
	global.cutscene = true;
	savedata_set_active(gem, true);
	sfx_play_sound(sndItem);
	bgm_stop_music();
	with global.transitions transition(2, rPast);
}

//Collect Animation
if collected appeared = lerp (appeared, 0, 0.1);