cherries = 6
radius = 96
velocity = 1.5 * global.fps_adjust
object = oCherry

cherry_image = sBurntCherry

initialized = false
angle_separation = 0

activated = savedata_get_active("difficulty") == DIFFICULTY.NORMAL;
triggerid = 0;