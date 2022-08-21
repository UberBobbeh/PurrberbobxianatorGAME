switch phase {
	//Gravity Phase
	case 1:
		//Start Boss
		if counter == 0 {
			oBossDarkness.alpha = 0;
			oBossFlash.alpha = 1;
			instance_destroy(oBossStartBlock);
			oBossBlock.visible = true;
			instance_create_depth(752, 512, depth, oBoss);
			bgm_set_music(musBoss);
			sfx_play_sound(sndScreech);
		}
		
		if counter <= 125 counter++;
		
		//Screen Shake
		if counter < 80 oCameraSmooth.shake = 8;
		
		if counter == 50 {
			//Move Boss
			oBoss.idealy = 400
			//Activate Warnings
			oBossCherryWarning1.active = true;
			oBossSpikeWarning1.active = true;
		}
		
		//Start Attack
		if counter == 100 oBossGravSpawner.active = true;
		
		if counter == 120 {
			//Spawn Cherries
			with oBossCherryWarning1 {
				instance_create_depth(x, y, depth - 1, oBossCherry);
				active = false;
			}
			//Spawn Spike
			with oBossSpikeWarning1 {
				instance_create_layer(x, y + 32, layer, oBossShootSpike);
				active = false;
			}
			//Make Boss Vulnerable
			oBoss.vulnerable = true;
		}
		
		//End Phase
		if oBoss.hp <= 0 {
			instance_destroy(oBossCherry);
			instance_destroy(oBossSpikeWarning1);
			instance_destroy(oBossShootSpike);
			instance_destroy(oBossBullet);
			instance_destroy(oBossPart);
			instance_destroy(oBossGravAttack);
			instance_destroy(oBossGravSpawner);
			sfx_play_sound(sndBossEndPhase);
			oBossFlash.alpha = 1;
			oBoss.vulnerable = false;
			oCameraSmooth.shake = 16;
			counter = 0;
			phase = 2;
		}
		
		break
	
	//Fire Phase
	case 2:
		//Set HP
		if counter == 0 oBoss.hp = 25;
	
		counter ++;
		
		//Screech and Set Warnings
		if counter == 25 {
			oBoss.idealx = 512;
			oBoss.idealy = 560;
			sfx_play_sound(sndScreech);
			oBossCherryWarning2.active = true;
			oBossSpikeWarning2.active = true;
			oBossSpikeWarning3.active = true;
		}
		
		if counter > 25 && counter < 105 oCameraSmooth.shake = 8;
		
		break
}