if active {
	cooldown = max(cooldown - 1, 0)
	if cooldown == 0 {
		var pick = irandom_range(0, 2)
		for (var i = 0; i <= 3; i ++) instance_create_depth(x, y + i * 32, depth, (i == pick ? oBossWoodCherry : oBossCherry2));
		cooldown = oBossController.impossible ? 70 : 60;
		sfx_play_sound(sndBossCherryShot);
	}
}