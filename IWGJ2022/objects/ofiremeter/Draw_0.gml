draw_set_alpha(alpha);
draw_sprite(sFireMeter, 0, x, y);
draw_sprite_part(sFireMeterFill, frame, 0, 0, 20 * percent, 4, x - 10, y - 2);
draw_set_defaults();