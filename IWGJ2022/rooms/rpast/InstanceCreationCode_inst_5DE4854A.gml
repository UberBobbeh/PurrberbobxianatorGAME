color = c_white;

if savedata_get_active("redGem") {
	dialogue = "You've already\ntampered with this.";
} else {
	dialogue = "Launch Missile";
	interactable = true;	
}

action = function() {
	oMissile.gravity = -0.2;
	sfx_play_sound(sndMissile);
	with oDialogue if interactable && !interacted {
		if active {
			interactable = false;
			dialogue = 	"You may not tamper with\nthe timeline more than once.\nReturn to the Time Machine.";
		} else {
			active = true;	
		}
	}
}