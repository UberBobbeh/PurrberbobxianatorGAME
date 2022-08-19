//Create Ice Wall
var block = instance_create_depth(x + lengthdir_x(16, image_angle - 90), y + lengthdir_y(16, image_angle - 90), depth, oIceWallBlock);
var spikes = instance_create_depth(x + lengthdir_x(32, image_angle - 90), y + lengthdir_y(32, image_angle - 90), depth, oIceWallSpikes);
spikes.image_angle = image_angle;
spikes.image_yscale = (image_yscale - 1/3) * 3/2;
block.spikes = spikes;
instance_destroy();