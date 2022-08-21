if active {
	cooldown = max(cooldown - 1, 0);
	if cooldown == 0 {
		instance_create_depth(random_range(bbox_left, bbox_right), y, depth, oBossGravAttack);
		cooldown = random_range(10, 25);
		sfx_play_sound(sndBossGravShot);
	}
}