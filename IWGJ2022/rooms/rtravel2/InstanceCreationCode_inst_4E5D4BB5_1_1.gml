dialogue = "Use Time Machine";
interactable = true;
color = c_white;
action = function() {
	oPlayer.frozen = true;
	oPlayer.visible = false;
	global.cutscene = true;
	sfx_play_sound(sndDoor);
	with global.transitions transition(1, rFinale);
}