if active {
	cooldown = max(cooldown - 1, 0);
	if cooldown == 0 {
		instance_create_layer(random_range(bbox_left, bbox_right), y, layer, oBossFinalProjectile);
		cooldown = random_range(1, 3);
	}
}