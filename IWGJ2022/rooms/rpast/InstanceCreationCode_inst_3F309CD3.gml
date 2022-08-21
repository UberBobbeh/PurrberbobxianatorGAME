color = c_white;

if savedata_get_active("redGem") && savedata_get_active("greenGem") && savedata_get_active("blueGem") {
	dialogue = "Interact";
	interactable = true;
} else {
	dialogue = "It's some kind of strange tablet.\n You need 3 gems to use it.";
}

action = function() {
	oPlayer.frozen = true;
	oPlayer.visible = false;
	global.cutscene = true;
	with global.transitions transition(3, rTravel2);
}