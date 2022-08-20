fogxval = (fogxval + 0.5) % 300
fogyval = (fogyval + 0.5) % 300
snowxval = (snowxval + 4) % 256
snowyval = (snowyval + 6) % 256

var fogid = layer_get_id("Backgrounds_1")
var snowid = layer_get_id("Backgrounds_2")
layer_x(fogid, fogxval + lerp(0, oCameraParent.x, 0.4));
layer_y(fogid, fogyval + lerp(0, oCameraParent.y, 0.4));
layer_x(snowid, snowxval + lerp(0, oCameraParent.x, 0.4));
layer_y(snowid, snowyval + lerp(0, oCameraParent.y, 0.4));