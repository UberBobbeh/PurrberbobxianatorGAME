///@desc Move and bounce

//Activation
if !activated {
	if hspeed != 0 || vspeed != 0 {
		hqueued = hspeed;
		vqueued = vspeed;
		hspeed = 0;
		vspeed = 0;
	}
} else if hspeed == 0 && vspeed == 0 {
	hspeed = hqueued;
	vspeed = vqueued;
}

hspeed *= place_meeting(x + hspeed, y, oBlock) ? -1 : 1
vspeed *= place_meeting(x, y + vspeed, oBlock) ? -1 : 1