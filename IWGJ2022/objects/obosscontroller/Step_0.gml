switch phase {
	//Gravity Phase
	case 1:
		//Start Boss
		if counter == 0 {
			oBossDarkness.alpha = 0;
			oBossFlash.alpha = 1;
			instance_destroy(oBossStartBlock);
			oBossBlock.visible = true;
			instance_create_layer(752, 512, "Instances_Middle", oBoss);
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
		if counter == 100 {
			oBossGravSpawner.active = true;
			if impossible {
				oBossGravImpSpawner1.active = true;
				oBossGravImpSpawner2.active = true;	
			}
		}
		
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
			instance_destroy(oBossGravImp);
			instance_destroy(oBossGravImpSpawner1);
			instance_destroy(oBossGravImpSpawner2);
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
		if counter == 0 oBoss.hp = 20;
	
		if counter <= 115 counter ++;
		
		//Screech and Set Warnings
		if counter == 25 {
			oBoss.idealx = 512;
			oBoss.idealy = 560;
			sfx_play_sound(sndScreech);
			oBossCherryWarning2.active = true;
			oBossSpikeWarning2.active = true;
			oBossSpikeWarning3.active = true;
			oBossGimmickWarning1.active = true;
			oBossGimmickWarning2.active = true;
		}
		
		//Screen Shake
		if counter > 25 && counter < 105 oCameraSmooth.shake = 8;
		
		//Start Attack
		if counter == 50 {
			oBossCherrySpawner.active = true;
			if impossible oBossShotImpSpawner.active = true;	
		}
		
		if counter == 95 {
			//Spawn Cherries
			with oBossCherryWarning2 {
				instance_create_depth(x, y, depth - 1, oBossCherry);
				active = false;
			}
			//Spawn Shoot Spike
			with oBossSpikeWarning2 {
				instance_create_layer(x, y + 32, layer, oBossShootSpike);
				active = false;
			}
			//Spawn Normal Spike
			with oBossSpikeWarning3 {
				instance_create_layer(x, y + 32, layer, oBossSpike);
				active = false;
			}
			//Spawn Water
			with oBossGimmickWarning1 {
				instance_create_layer(x, y, layer, oBossWater);
				active = false;
			}
			//Spawn Fire
			with oBossGimmickWarning2 {
				instance_create_layer(x, y, layer, oBossFire);
				active = false;
			}
			//Make Boss Vulnerable
			oBoss.vulnerable = true;
		}
		
		//End Phase
		if oBoss.hp <= 0 {
			instance_destroy(oBossCherry);
			instance_destroy(oBossSpike);
			instance_destroy(oBossShootSpike);
			instance_destroy(oBossBullet);
			instance_destroy(oBossPart);
			instance_destroy(oBossCherry2);
			instance_destroy(oBossWoodCherry);
			instance_destroy(oBossFire);
			instance_destroy(oBossWater);
			instance_destroy(oKidFire);
			instance_destroy(oBossCherrySpawner);
			instance_destroy(oWoodParticle);
			instance_destroy(oBossShotImp);
			instance_destroy(oBossShotImpSpawner);
			sfx_play_sound(sndBossEndPhase);
			with oPlayer image_blend = c_white;
			oBossFlash.alpha = 1;
			oBoss.vulnerable = false;
			oCameraSmooth.shake = 16;
			counter = 0;
			phase = 3;
		}
		
		break
		
	//Ice Phase
	case 3:
	//Set HP
		if counter == 0 oBoss.hp = impossible ? 20 : 25;
	
		if counter <= 175 counter ++;
		
		//Move Offscreen
		if counter == 25 {
			oBoss.idealx = 128;
			oBossWarning.active = true;
		}
		
		//Start Snowflake Phase
		if counter == 60 {
			oBoss.x = oBossWarning.x + 400;
			oBoss.y = oBossWarning.y;
			oBoss.idealx = oBossWarning.x;
			oBoss.idealy = oBoss.y;
			oBoss.vulnerable = true;
			oBossWarning.active = false;
			oBossSnowflakeSpawner.active = true;
			oBossCherrySpawner2.active = true;
			if impossible oBossIceImpSpawner.active = true;	
			oBossSpikeWarning4.active = true;
			sfx_play_sound(sndScreech);
		}
		
		//Screen Shake
		if counter > 60 && counter < 140 oCameraSmooth.shake = 8;
		
		//Spawn Spikes
		if counter == 160 with oBossSpikeWarning4 {
			instance_create_layer(x, y + 32, layer, oBossSpike);
			active = false;
		}
		
		//End Phase
		if oBoss.hp <= 0 {
			instance_destroy(oSnowflake);
			instance_destroy(oBossSpike);
			instance_destroy(oBossSnowflakeSpawner);
			instance_destroy(oBossPart);
			instance_destroy(oBossCherry3);
			instance_destroy(oBossCherrySpawner2);
			instance_destroy(oBossIceImp);
			instance_destroy(oBossIceImpSpawner);
			sfx_play_sound(sndBossEndPhase);
			oBossFlash.alpha = 1;
			oBoss.vulnerable = false;
			oCameraSmooth.shake = 16;
			counter = 0;
			phase = 4;
		}
		
		break
	
	//Final
	case 4:
		if counter <= 180 counter ++;
	
		//Move Offscreen
		if counter == 40 oBoss.idealx = oBossWarning.x + 400;
		
		//Fade to Black
		if counter > 40 && counter < 120 {
			oBossBlock.alpha = min(oBossBlock.alpha + 0.02, 1);
			oBossDarkness.alpha = min(oBossBlock.alpha + 0.02, 1);
		}
		
		//Spawn Final
		if counter == 90 {
			instance_destroy(oBoss);
			instance_create_layer(736, 144, "Instances_Below", oBossFinal);
			oBossFinal.idealy = 416;
			sfx_play_sound(sndScreech);
			oBossSpikeWarning5.active = true;
		}
		
		//Screen Shake
		if counter > 90 && counter < 170 oCameraSmooth.shake = 8;
		if counter > 170 oCameraSmooth.shake = max(oCameraSmooth.shake, 1);
		
		//Start Attack
		if counter == 170 {
			oBossFinalProjectileSpawner.active = true;
			if impossible oBossBombImpSpawner.active = true;	
		}
			
		//Spawn Spike
		if counter == 170 with oBossSpikeWarning5 {
			instance_create_layer(x, y + 32, layer, oBossShootSpike);
			oBossFinal.vulnerable = true;
			active = false;
		}
		
		//End Phase
		if instance_exists(oBossFinal) && oBossFinal.hp <= 0 {
			instance_destroy(oBossFinal);
			instance_destroy(oBossShootSpike);
			instance_destroy(oBossBullet);
			instance_destroy(oBossFinalProjectile);
			instance_destroy(oBossPart);
			instance_destroy(oBossFinalProjectileSpawner);
			instance_destroy(oBossKiller);
			instance_destroy(oBossBombImpSpawner);
			instance_destroy(oBossBombImp);
			instance_destroy(oBossCherryImp);
			sfx_play_sound(sndBossEndPhase);
			bgm_stop_music()
			oCameraSmooth.shake = 16;
			oBossFlash.alpha = 1;
			counter = 0;
			phase = 5;
		}
		
		break
		
	//Ending
	case 5:
		//Start Cutscene
		if counter == 0 {
			oPlayer.frozen = true;
			global.cutscene = true;
		}
		
		counter ++;
		
		//Transition Out
		if counter == 100 with global.transitions transition(3, rClear);
}