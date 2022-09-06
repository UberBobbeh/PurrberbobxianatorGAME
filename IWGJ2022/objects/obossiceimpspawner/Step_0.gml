if active {
	cooldown = max(cooldown - 1, 0);
	if cooldown == 0 {
		if instance_exists(oPlayer) spawnx = oPlayer.x
		instance_create_depth(spawnx, y, depth - 1, oBossIceImp);
		cooldown = 60;
	}
}