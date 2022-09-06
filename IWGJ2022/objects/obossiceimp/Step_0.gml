image_xscale = lerp(image_xscale, 0.7, 0.1);
image_yscale = image_xscale;

counter++

if counter < 35 {
	if instance_exists(oPlayer) x = oPlayer.x;
	y = lerp(y, ystart - 80, 0.1);
}

if counter == 50 {
	vspeed = 9;
	sfx_play_sound(sndIcicle);
}

if counter > 50 with instance_create_depth(x, y, depth + 1, oBossPart) {
	sprite_index = other.sprite_index;
	image_xscale = other.image_xscale;
	image_yscale = other.image_yscale;
	image_alpha = 0.5;
}