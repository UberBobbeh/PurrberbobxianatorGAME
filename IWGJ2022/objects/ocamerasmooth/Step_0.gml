//Set Ideal Positioning
if instance_exists(target) {
	idealx = clamp(target.x - GAME_WIDTH/2, xmin, xmax);
	idealy = clamp(target.y - GAME_HEIGHT/2, ymin, ymax);
}

//Smooth Movement
x = lerp(x, idealx, 0.1)
y = lerp(y, idealy, 0.1)

//Screen Shake
var shakex = sin(random(360)) * shake;
var shakey = cos(random(360)) * shake;
if stopshake shake = max(shake - 1, 0);

//Set Camera
if active camera_set_view_pos(camera, x + shakex, y + shakey);