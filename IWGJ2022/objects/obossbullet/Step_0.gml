image_xscale = lerp(image_xscale, 1, 0.2);
image_yscale = image_xscale;

with instance_create_depth(x, y, depth + 1, oBossPart) {
	sprite_index = other.sprite_index;
	image_xscale = other.image_xscale;
	image_yscale = other.image_yscale;
	image_alpha = 0.5;
}

var target = instance_exists(oBoss) ? oBoss : oBossFinal
if instance_exists(target) {
	var angle = point_direction(x, y, target.x, target.y);
	x += lengthdir_x(12, angle);
	y += lengthdir_y(12, angle);
}