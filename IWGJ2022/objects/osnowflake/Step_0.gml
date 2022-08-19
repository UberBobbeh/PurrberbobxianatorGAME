//Spinning
angle += anglespeed

//Pickup
if place_meeting(x, y, oPlayer) && !touched {
	touched = true;
	anglespeed = 8;
	oPlayer.velocity.y = -8.5;
	sfx_play_sound(sndSnowflake);
}

//Fade
if touched animation = lerp(animation, 1, 0.1);