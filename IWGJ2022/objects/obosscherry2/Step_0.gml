image_xscale = lerp(image_xscale, 0.6, 0.2);
image_yscale = image_xscale;

with instance_create_depth(x, y, depth + 1, oBossPart) {
	sprite_index = other.sprite_index;
	image_index = other.image_index;
	image_xscale = other.image_xscale;
	image_yscale = other.image_yscale;
	image_alpha = 0.6;
}