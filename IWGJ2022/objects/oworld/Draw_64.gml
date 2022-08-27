///@desc Draw pause surface if paused

if (DEBUG) {
	draw_set_color(c_red)
	draw_set_font(0)
	draw_text(4, GAME_HEIGHT - string_height("W") - 4, debug_text)
	draw_set_color(c_white)
}

if (global.game_paused) {
	//Draw Screen
	gpu_set_blendmode_ext(bm_one, bm_src_alpha_sat);
	draw_sprite(pause_sprite, 0, 0, 0);
	gpu_set_blendmode(bm_normal);
	
	//Draw Dim
	draw_set_color(c_black)
	draw_set_alpha(0.75)
	draw_rectangle(0, 0, GAME_WIDTH, GAME_HEIGHT, false)
	draw_set_color(c_white)
	draw_set_alpha(1.0)
	
	//Draw Text
	draw_set_font(fMenu);
	draw_text(4, 3, "DEATH: " + string(savedata_get_active("death")))
	draw_text(4, 21, "TIME: " + time_to_string(savedata_get_active("time") + 1))
	
	//Draw Options
	draw_set_halign(fa_right)
	draw_set_valign(fa_bottom)
	draw_text(GAME_WIDTH - 4, GAME_HEIGHT - 39, "Volume: " + string(round(global.setting[SETTING.MUSIC] * 100)) + "%")
	draw_text(GAME_WIDTH - 4, GAME_HEIGHT - 21, "H - Toggle Smooth Camera (" + (global.setting[SETTING.SMOOTH_CAMERA] ? "on" : "off" ) + ")" )
	draw_text(GAME_WIDTH - 4, GAME_HEIGHT - 3, "J - Toggle Screen Shake (" + (global.setting[SETTING.SCREEN_SHAKE] ? "on" : "off" ) + ")" )
	
	//Change Options
	var buttonUp = input_check_pressed("up")
	var buttonDown = input_check_pressed("down")
	config_setting_set(SETTING.MUSIC, global.setting[SETTING.MUSIC] + 0.1 * (buttonUp - buttonDown))
	if keyboard_check_pressed(ord("H")) config_setting_set(SETTING.SMOOTH_CAMERA, !global.setting[SETTING.SMOOTH_CAMERA])
	if keyboard_check_pressed(ord("J")) config_setting_set(SETTING.SCREEN_SHAKE, !global.setting[SETTING.SCREEN_SHAKE])
	
	//Draw Paused
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_text_transformed(GAME_WIDTH / 2, GAME_HEIGHT / 2, "PAUSE", 1.5, 1.5, 0)
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
} else if (!global.game_paused && sprite_exists(pause_sprite)) {
	sprite_delete(pause_sprite);
}