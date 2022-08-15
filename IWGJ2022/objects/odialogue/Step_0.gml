//Dialogue Animation
if place_meeting(x, y, oPlayer) {
	//Show Dialogue
	offset = lerp(offset, 0, 0.1);
	alpha = lerp(alpha, 1, 0.1);
} else {
	//Hide Dialogue
	offset = lerp(offset, 15, 0.1);
	alpha = lerp(alpha, 0, 0.1);
}