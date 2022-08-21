//Reset Counter
counter = 0;

//Select Transition
switch mode {
	case transitionmode.fadeout:
		mode = transitionmode.fadein;
		break;
	case transitionmode.travelout1:
	case transitionmode.travelout2: 
		mode = transitionmode.travelin;
		break;
	default:
		mode = transitionmode.none;
		break;
}