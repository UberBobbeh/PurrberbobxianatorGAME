//Animate
frame = (frame + 0.5) % 8

//Show and Hide
if instance_exists(oKidFire) {
	alpha = lerp(alpha, 1, 0.2);
	percent = oKidFire.burn_time / oKidFire.burn_start;
} else {
	alpha = lerp(alpha, 0, 0.2);	
}