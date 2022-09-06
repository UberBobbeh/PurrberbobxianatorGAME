if active {
	cooldown = max(cooldown - 1, 0);
	if cooldown == 0 {
		instance_create_layer(x, random_range(bbox_bottom, bbox_top), layer, oBossCherry3);
		cooldown = oBossController.impossible ? 40 : 34;
	}
}