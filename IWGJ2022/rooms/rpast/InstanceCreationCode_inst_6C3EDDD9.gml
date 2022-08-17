color = c_white;

if savedata_get_active("blueGem") {
	dialogue = "You've already\ntampered with this.";
} else {
	dialogue = "Break Snowglobe";
	interactable = true;	
}

action = function() {
	oSnowglobe.image_index = 1;
	sfx_play_sound(sndSmash);
	with oDialogue if interactable && !interacted {
		if active {
			interactable = false;
			dialogue = 	"You may not tamper with\nthe timeline more than once.\nReturn to the Time Machine.";
		} else {
			active = true;	
		}
	}
}