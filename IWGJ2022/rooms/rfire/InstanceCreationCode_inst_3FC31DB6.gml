cherries = 1
radius = 24
velocity = -3 * global.fps_adjust
object = oCherry3
var impossible = savedata_get_active("difficulty") == DIFFICULTY.IMPOSSIBLE
direction = impossible ? -25 : 25