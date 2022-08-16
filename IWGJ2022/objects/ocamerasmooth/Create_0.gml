// Inherit the parent event
event_inherited();

//Setup Room Boundaries
xmin = 0
xmax = room_width
ymin = 0
ymax = room_height

//Ideal Positioning
var spawn = instance_exists(target) ? target : oPlayerStart;
x = clamp(spawn.x - GAME_WIDTH/2, xmin, xmax)
y = clamp(spawn.y - GAME_HEIGHT/2, ymin, ymax);
idealx = x
idealy = y

//Setup Locking
locked = false;

//Shake
shake = 0;
stopshake = true;