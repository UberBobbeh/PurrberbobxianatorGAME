image_alpha = max(image_alpha - faderate, 0);
image_xscale = max(image_xscale + growrate, 0);
image_yscale = image_xscale;
if image_alpha <= 0 instance_destroy();