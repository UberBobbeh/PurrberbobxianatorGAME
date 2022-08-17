color = c_white;

if savedata_get_active("greenGem") {
	dialogue = "You've already\ntampered with this.";
} else {
	dialogue = "Boot Up Gaming PC";
	interactable = true;	
}

action = function() {
	oPC.image_index = 1;
	sfx_play_sound(sndBootup);
	oTransporter.destination = rGravity;
	with oDialogue if interactable && !interacted {
		if active {
			interactable = false;
			dialogue = 	"You may not tamper with\nthe timeline more than once.\nReturn to the Time Machine.";
		} else {
			active = true;	
		}
	}
}