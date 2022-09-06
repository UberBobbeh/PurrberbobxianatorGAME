if active {
	cooldown = max(cooldown - 1, 0);
	if cooldown == 0 {
		instance_create_depth(random_range(bbox_left, bbox_right), y, depth, oBossGravAttack);
		cooldown = oBossController.impossible ? random_range(18, 25) : random_range(10, 18);
		sfx_play_sound(sndBossGravShot);
	}
}