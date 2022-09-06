if active {
	cooldown = max(cooldown - 1, 0);
	if cooldown == 0 {
		with instance_create_depth(x, y, depth, oBossGravImp) hspeed = -3;
		cooldown = 65;
	}
}