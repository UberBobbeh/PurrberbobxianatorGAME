//Transitions
switch mode {
	case transitionmode.fadeout:
		color = c_black;
		alpha = min(alpha + 0.04, 1);
		counter ++;
		if counter == 50 warp(destination, oPlayer, 0, 0, false, true);
		break;
		
	case transitionmode.fadein:
		color = c_black;
		alpha = max(alpha - 0.04, 0);
		if alpha == 0 mode = transitionmode.none;
		break;
		
	case transitionmode.travelout1:
		color = c_white;
		counter ++;
		if counter == 35 audio_play_sound(sndWarp, 10, false);
		if counter >= 40 {
			alpha = min(alpha + 0.004, 1);
			oCameraSmooth.shake = (counter - 40)/10;
		}
		if counter == 320 warp(destination, oPlayer, 0, 0, false, true);
		break;
	
	case transitionmode.travelout2:
		color = c_white;
		counter ++;
		if counter == 50 audio_play_sound(sndQuickWarp, 10, false);
		if counter >= 50 alpha = min(alpha + 0.02, 1);
		if counter == 120 warp(destination, oPlayer, 0, 0, false, true);
		break;
	
	case transitionmode.travelin:
		color = c_white;
		alpha = max(alpha - 0.04, 0);
		if alpha == 0 mode = transitionmode.none;
		break;
		
	case transitionmode.staticout:
		counter ++;
		if counter == 15 warp(destination, oPlayer, 0, 0, false, true);
		break;
}