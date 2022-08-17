with oPlayer if place_meeting(x, y, oTrollTrigger) && !place_meeting(x, y, oTrollSpawner) other.triggered = true;
if triggered & !spawned {
	instance_create_layer(x, y, layer, oTrollBlock);
	spawned = true;
}