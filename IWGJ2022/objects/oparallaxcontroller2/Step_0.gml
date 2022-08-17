xval = (xval + 0.5) % 360
yval = (yval + 0.5) % 360

var layerid = layer_get_id("Background")
layer_x(layerid, xval + lerp(0, oCameraParent.x, 0.4));
layer_y(layerid, yval + lerp(0, oCameraParent.y, 0.4));