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
	if input_check_pressed("skip") && timer < 450 {
		count = string_length(text);
		timer = 450;
	}
	
	//End Cutscene
	if timer == 520 {
		//Fix Potential Bug
		if !instance_exists(oTransitions) global.transitions = instance_create_depth(x, y, depth. oTransitions);
		
		//Transition
		with global.transitions transition(0, rTravel1);
	}
	
}