instance_destroy(other)

//Hurt
if vulnerable {
	hp --;
	//Animation
	if hp > 0 {
		hurtalpha = 1;
		oCameraSmooth.shake = max(oCameraSmooth.shake, 6);
		sfx_play_sound(sndBossHit1);
		sfx_play_sound(sndBossHit2);
	}
}