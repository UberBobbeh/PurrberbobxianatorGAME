if place_meeting(x, y, oPlayer) {
	oPlayer.frozen = true;
	global.cutscene = true;
	with global.transitions transition(3, rBoss);
	instance_destroy();
}