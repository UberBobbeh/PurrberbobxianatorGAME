cherries = 2
radius = 48
velocity = -1.5 * global.fps_adjust
object = oCherry3
var impossible = savedata_get_active("difficulty") == DIFFICULTY.IMPOSSIBLE
direction = impossible ? -50 : 10
triggerid = 3