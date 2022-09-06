if active {
	cooldown = max(cooldown - 1, 0);
	if cooldown == 0 {
		instance_create_depth(random_range(bbox_left, bbox_right), y, depth - 1, oBossBombImp);
		cooldown = 30;
	}
}