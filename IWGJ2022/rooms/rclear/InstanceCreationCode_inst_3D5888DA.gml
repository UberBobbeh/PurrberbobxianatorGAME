switch savedata_get_active("difficulty") {
	case DIFFICULTY.NORMAL:
		ttext = "Thanks For Playing!";
		break;
	case DIFFICULTY.IMPOSSIBLE:
		ttext = "Impossible Clear!";
		break;
	case DIFFICULTY.DEATHLESS:
		ttext = "Deathless Clear!";
		break;
}
scale = 2;