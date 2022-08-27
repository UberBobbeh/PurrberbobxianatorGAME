if active {
	cooldown = max(cooldown - 1, 0);
	if cooldown == 0 {
		with instance_create_layer(x, y, layer, oSnowflake) hspeed = -5;
		cooldown = 8;
	}
}