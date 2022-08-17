//Sinewave
percent = (percent + 0.01) % 1
var offset = animcurve_channel_evaluate(curve, percent) * 5;

//Draw Tablet
draw_sprite(sTablet, 0, x, y + offset);
if redGem draw_sprite(sTablet, 1, x, y + offset);
if blueGem draw_sprite(sTablet, 2, x, y + offset);
if greenGem draw_sprite(sTablet, 3, x, y + offset);
if redGem && greenGem draw_sprite(sTablet, 4, x, y + offset);
if redGem && blueGem draw_sprite(sTablet, 5, x, y + offset);
if greenGem && blueGem draw_sprite(sTablet, 6, x, y + offset);
if redGem && greenGem && blueGem draw_sprite(sTablet, 7, x, y + offset);