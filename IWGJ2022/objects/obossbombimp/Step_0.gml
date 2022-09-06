image_angle += rotation;
y = lerp(y, ystart + ydist, 0.05);

counter ++;

if counter < 50 with instance_create_depth(x, y, depth + 1, oBossPart) {
	sprite_index = other.sprite_index;
	image_index = other.image_index;
	image_xscale = other.image_xscale;
	image_yscale = other.image_yscale;
	image_angle = other.image_angle;
	image_alpha = 0.6;
}

if counter == 50 {
	for (var i = 0; i < cherries; i ++) {
		var angle = i / cherries * 360;
		with instance_create_depth(x, y, depth - 1, oBossCherryImp) {
			image_index = other.image_index;
			hspeed = lengthdir_x(other.cherryspd, angle);
			vspeed = lengthdir_y(other.cherryspd, angle);
		}
	}
	sfx_play_sound(sndBossBomb);
}

if counter > 50 {
	image_xscale = lerp(image_xscale, idealscale, 0.1);
	image_yscale = image_xscale;
	image_alpha -= 0.05;
}

if counter == 100 instance_destroy();