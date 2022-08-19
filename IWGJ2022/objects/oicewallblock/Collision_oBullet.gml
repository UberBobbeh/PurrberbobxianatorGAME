// Inherit the parent event
event_inherited();

//Play Sound
sfx_play_sound(sndSnowBreak);

//Create Particles
for (var i = 0; i < 10; i++) {
	var part = instance_create_depth(x, y, depth - 1, oIceWallParticle);
	part.image_index = i;
}
	
//Destroy Wall
spikes.destroyed = true;
	
//Destroy Self
instance_destroy();