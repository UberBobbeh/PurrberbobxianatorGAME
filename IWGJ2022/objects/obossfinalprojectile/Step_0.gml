with instance_create_depth(x, y, depth + 1, oBossPart) {
	sprite_index = other.sprite_index;
	image_index = irandom(5)
	image_xscale = other.image_xscale;
	image_yscale = other.image_yscale;
	image_alpha = 0.6;
}

counter --;
if counter <= 0 {
	image_index = irandom(5);
	counter = irandom_range(5, 10);
}