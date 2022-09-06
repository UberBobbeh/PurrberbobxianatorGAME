phase = 0;
counter = 0;
impossible = savedata_get_active("difficulty") == DIFFICULTY.IMPOSSIBLE;
if impossible layer_background_index(layer_background_get_id("Background"), 1);