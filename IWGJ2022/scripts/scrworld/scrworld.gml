///@desc Checks if the world is resetting the room
///@func world_is_resetting()
function world_is_resetting() {
	return oWorld.resetting_room != ""
}

///@desc Gets the room that is being restarted to
///@func world_get_resetting_room()
function world_get_resetting_room() {
	return oWorld.resetting_room
}

///@func world_restart_game()
///@desc Save death, time & free memory
function world_restart_game() {
	if (global.game_running) {
		savedata_save("time")
		savedata_save("death")
		savedata_write()
	}
	
	instance_destroy(oPlayer)
	
	global.game_running = false
	global.game_playing = false
	global.game_paused = false
	
	// Free memory
	if (sprite_exists(pause_sprite))
		sprite_delete(pause_sprite)
	
	//Reset Transitions
	with oTransitions {
		mode = transitionmode.none;
		alpha = 0;
	}
	
	//Stop Sounds
	audio_stop_sound(sndWarp);
	
	room_goto(MENU_ROOM)
}