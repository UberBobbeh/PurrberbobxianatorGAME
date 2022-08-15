//Lock to Zone
if place_meeting(x, y, oPlayer) && locked == false camlock();
	
//Unlock from Zone
if !place_meeting(x, y, oPlayer) && locked == true locked = false;