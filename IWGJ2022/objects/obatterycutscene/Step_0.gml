if global.cutscene {
	//Black Bars
	bars = lerp(bars, 48, 0.1);
	
	//Text Offset
	timer ++
	if timer >= 30 {
		//Text Delay
		counter = (counter + 1) % 3
		
		//Add Character
		if counter == 0 && count < string_length(text) {
			count ++;
			if string_char_at(text, count) != " " sfx_play_sound(sndText);
		}
	}
	
	//Skip Cutscene
	if input_check_pressed("skip") && timer < 400 {
		count = string_length(text);
		timer = 400;
	}
	
	//End Cutscene
	if timer == 520 with global.transitions transition(0, rTravel1);
	
}