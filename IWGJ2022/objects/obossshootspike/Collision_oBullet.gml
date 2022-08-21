instance_destroy(other);
if cooldown == 0 {
	instance_create_layer(x + 16, y + 4, layer_get_id("Instances"), oBossBullet);
	cooldown = 20;
	sfx_play_sound(sndBossShootSpike);
}