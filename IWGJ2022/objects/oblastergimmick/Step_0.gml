if blastmode != 0 with oPlayer {
	velocity.y = -7 * vertical_direction;
	oCameraSmooth.shake = 1;
	with instance_create_depth(x, y, depth + 1, oBlastParticle) {
		sprite_index = other.sprite_index;
		image_index = other.image_index;
		image_angle = other.vertical_direction == 1 ? 0 : 180;
		image_blend = other.vertical_direction == 1 ? c_aqua : c_red;
	}
	if place_meeting(x, y - vertical_direction, oBlock) {
		sfx_play_sound(sndSlam);
		other.blastmode = 0;
		oCameraSmooth.shake = 8;
	}
}