if instance_exists(oPlayer) && place_meeting(x, y, oPlayer) && input_check_pressed("shoot") {
	savedata_save_player();
	oBossController.phase = 1;
	instance_destroy();
}