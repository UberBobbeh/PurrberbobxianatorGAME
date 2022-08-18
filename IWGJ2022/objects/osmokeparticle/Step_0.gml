image_xscale -= shrink_speed
image_yscale -= shrink_speed
if image_xscale <= 0 {
	instance_destroy(self)
}
