dialogue = "Use Time Machine"
interactable = true;
action = function() {
	oPlayer.frozen = true;
	oPlayer.visible = false;
	global.cutscene = true;
	sfx_play_sound(sndDoor);
	with global.transitions transition(1, rTest01);
}