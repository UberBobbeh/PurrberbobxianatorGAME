//Floating Animation
percenta = (percenta + 0.01) % 1
percentb = (percentb + 0.012) % 1

//Collect Batteries
if place_meeting(x, y, oPlayer) && !collected {
	collected = true;
	oPlayer.frozen = true;
	global.cutscene = true;
	sfx_play_sound(sndBattery);
	sfx_play_sound(sndItem);
}

//Collect Animation
if collected appeared = lerp (appeared, 0, 0.1);