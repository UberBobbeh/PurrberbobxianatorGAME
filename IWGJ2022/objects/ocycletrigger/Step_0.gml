if place_meeting(x, y, oPlayer) && !activated {
	activated = true;
	sfx_play_sound(sndBlockChange);
	with oCherryBounce3 if triggerid == other.triggerid activated = true;
	with oCherryRing2 if triggerid == other.triggerid activated = true;
}

if activated image_alpha -= 0.1;