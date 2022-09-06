//Manage Animations
animation_counter = max(animation_counter - 1, 0)
percent = min(percent + 0.08, 1);

//Save
if instance_exists(oPlayer) && place_meeting(x, y, oPlayer) && oPlayer.vertical_direction == 1 && sprite_index != sSaveAbsent && input_check_pressed("shoot") {
	//Setup Animation
	animation_counter = animation_length
	percent = 0;
	instance_create_depth(x, y - 10, depth - 1, oSaveText);
	sfx_play_sound(sndSave);
	
	//Save Data
	savedata_save_player()
}