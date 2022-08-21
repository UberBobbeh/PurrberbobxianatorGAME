image_xscale = lerp(image_xscale, idealscale, 0.1);
image_yscale = image_xscale;
image_angle += 1;

with instance_create_depth(x, y, depth + 1, oBossPart) {
	sprite_index = other.sprite_index;
	image_blend = other.vspeed > 0 ? c_red : c_blue;
	image_xscale = other.image_xscale;
	image_yscale = other.image_yscale;
	image_alpha = 0.8;
	growrate = 0.01;
}

if place_meeting(x, y, oBlock) && vspeed > 0 {
	vspeed *= -1;
	oCameraSmooth.shake = max(oCameraSmooth.shake, 4);
	sfx_play_sound(sndSlam);
}