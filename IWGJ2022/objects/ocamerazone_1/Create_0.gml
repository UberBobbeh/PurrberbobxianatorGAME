locked = false;

//Camera Locking
function camlock() {
	oCameraSmooth.xmin = bbox_left;
	oCameraSmooth.xmax = bbox_right - GAME_WIDTH + 1;
	oCameraSmooth.ymin = bbox_top;
	oCameraSmooth.ymax = bbox_bottom - GAME_HEIGHT + 1;
	oCameraZone.locked = false;
	locked = true;
}

//Start Of Frame Lock
if place_meeting(x, y, oPlayer) || (!instance_exists(oPlayer) && place_meeting(x, y, oPlayerStart)) {
	camlock();
	with oCameraSmooth {
		x = clamp(x, xmin, xmax);
		y = clamp(y, ymin, ymax);
	}
}