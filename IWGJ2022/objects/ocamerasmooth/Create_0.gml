// Inherit the parent event
event_inherited();

//setup room boundaries
xmin = 0
xmax = room_width
ymin = 0
ymax = room_height

//ideal positioning
var spawn = instance_exists(target) ? target : oPlayerStart;
x = clamp(spawn.x - GAME_WIDTH/2, xmin, xmax)
y = clamp(spawn.y - GAME_HEIGHT/2, ymin, ymax);
idealx = x
idealy = y

//setup locking
locked = false;