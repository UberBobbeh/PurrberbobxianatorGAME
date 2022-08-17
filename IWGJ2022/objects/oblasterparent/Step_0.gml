//Blast
if instance_exists(oPlayer) && place_meeting(x, y, oPlayer) && oPlayer.vertical_direction != blast && !collected {
	collected = true;
	with oPlayer player_set_gravity(other.blast);
	oBlasterGimmick.blastmode = blast;
}