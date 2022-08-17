dialogue = "It's some kind of strange tablet.\n You need 3 gems to use it.";
color = c_white;
action = function() {
	oPlayer.frozen = true;
	oPlayer.visible = false;
	global.cutscene = true;
	sfx_play_sound(sndDoor);
	with global.transitions transition(1, rTest01);
}