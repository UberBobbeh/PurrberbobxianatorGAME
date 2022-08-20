//Kill Player
if place_meeting(x, y, oPlayer) && !destroyed && !global.cutscene {
	player_kill(oPlayer)
	sfx_play_sound(sndPlayerDeath)
}

//Destroy animation
if destroyed animation = lerp(animation, 0, 0.1);
if animation <= 0.01 instance_destroy();