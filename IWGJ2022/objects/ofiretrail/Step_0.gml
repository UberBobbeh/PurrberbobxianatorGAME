image_xscale -= (delta_time / 1000000) * shrink_speed
image_yscale -= (delta_time / 1000000) * shrink_speed

if image_xscale <= 0 {
	instance_destroy(self)
}
