///@desc Set setting strings
setting[0] = global.setting[SETTING.FULLSCREEN] ? "on" : "off"
setting[1] = global.setting[SETTING.SMOOTHING] ? "on" : "off"
setting[2] = string(global.setting[SETTING.SCALE]) + "x"
//setting[3] = string(global.setting[SETTING.FRAMERATE])
setting[3] = string(global.setting[SETTING.MUSIC] * 100) + "%"
//setting[4] = string(global.setting[SETTING.SOUND])
setting[4] = global.setting[SETTING.VSYNC] ? "on" : "off"
setting[5] = global.setting[SETTING.CONTROL_ROTATIONAL] ? "rotational" : "standard"
setting[6] = string(global.setting[SETTING.INPUT_DELAY])
setting[7] = global.setting[SETTING.SMOOTH_CAMERA] ? "on" : "off"
setting[8] = global.setting[SETTING.SCREEN_SHAKE] ? "on" : "off"