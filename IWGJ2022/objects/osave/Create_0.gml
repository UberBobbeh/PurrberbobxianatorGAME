//Setup Sprite
image_speed = 0
animation_counter = 0
animation_length = 40

//Setup Animation Curve
curvex = animcurve_get_channel(aSaveEffect, "xscale");
curvey = animcurve_get_channel(aSaveEffect, "yscale");
percent = 1;

//Impossible Mode
if savedata_get_active("difficulty") == DIFFICULTY.IMPOSSIBLE sprite_index = impossible ? sSaveImpossible : sSaveAbsent;

//Deathless Mode
if savedata_get_active("difficulty") == DIFFICULTY.DEATHLESS {
	if ending sprite_index = sSaveDeathless;
	else instance_destroy();
}