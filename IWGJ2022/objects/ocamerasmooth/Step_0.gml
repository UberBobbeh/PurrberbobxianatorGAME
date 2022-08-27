//Set Ideal Positioning
if instance_exists(target) {
	idealx = clamp(target.x - GAME_WIDTH/2, xmin, xmax);
	idealy = clamp(target.y - GAME_HEIGHT/2, ymin, ymax);
}

//Smooth Movement
var rate = global.setting[SETTING.SMOOTH_CAMERA] ? 0.1 : 1;
x = lerp(x, idealx, rate)
y = lerp(y, idealy, rate)

//Screen Shake
var shakex = sin(random(2 * pi)) * shake * global.setting[SETTING.SCREEN_SHAKE];
var shakey = cos(random(2 * pi)) * shake * global.setting[SETTING.SCREEN_SHAKE];
if stopshake shake = max(shake - 1, 0);

//Set Camera
if active camera_set_view_pos(camera, x + shakex, y + shakey);