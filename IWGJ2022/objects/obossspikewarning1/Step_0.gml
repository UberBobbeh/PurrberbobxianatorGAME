// Inherit the parent event
event_inherited();

if place_meeting(x, y, oBossSpikeBouncer) hspeed *= -1;
if instance_exists(oBossShootSpike) oBossShootSpike.x = x;