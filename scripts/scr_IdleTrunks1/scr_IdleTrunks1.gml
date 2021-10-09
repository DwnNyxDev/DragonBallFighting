function scr_IdleTrunks1() {
	if(ki<max_ki){
		ki+=.015*global.RelativeSpeed;
	}
	if(stamina<max_stamina&&out_of_combat&&!vampire_mode){
		stamina+=.15*global.RelativeSpeed;
	}

	if(sprite_index!=spr_idleTrunks1){
		sprite_index=spr_idleTrunks1;
		sprite_set_speed(sprite_index,8,spritespeed_framespersecond);
		if(bbox_bottom<obj_ground.y){
			while(bbox_bottom<obj_ground.y){
				y++;
			}
		}
		image_index=0;
	}
	if(go_block&&frames>0){
		frames--;
	}
	else if(go_block&&frames<=0){
		go_block=false;
		state=ESTATE.BLOCKING;
	}

	if(sprite_index!=spr_idleTrunks1){
		sprite_index=spr_idleTrunks1;
		sprite_set_speed(sprite_index,8,spritespeed_framespersecond);
		if(bbox_bottom<obj_ground.y){
			while(bbox_bottom<obj_ground.y){
				y++;
			}
		}
		image_index=0;
	}
	if(stateTimer<=0){
		if(enemy.flying&&!flying){
			go_fly=true;
			stateTimer=irandom_range(20,60);
		}
		else if(enemy.crouching&&!crouching){
			if(enemy_in_range){
				state=ESTATE.CROUCHING_IDLE;
				if(enemy.attacking){
					var rando=random_range(0,100);
					if(rando<65){
						state=ESTATE.CROUCHING_BLOCKING
					}
				}
				stateTimer=irandom_range(20,60);
			}
		}
		else{
			var rando=random_range(0,100);
			if(rando<lerp(0,20,(stamina-26)/74)&&enemy_in_kame_distance&&can_slash){ //kamehameha
				state=ESTATE.KAMEHAMEHA;
				stamina-=25;
				can_slash=false;
				alarm[3]=slash_cooldown;
			}
			else if(rando<30&&ki>65&&enemy_in_walking_distance){
						state=ESTATE.ULTIMATE1;
						ki-=60;
			}
			else{
				if(!enemy_in_range){
					var rando=random_range(0,100);
					var enemy_type=0;
					if(enemy.character="Goku"){
						enemy_type=25;
					}
					if(rando<lerp(15,50+enemy_type,(general_state-33)/67)){ //get closer
						if(enemy_in_walking_distance){
							state=ESTATE.MOVING_FORWARD;
							stateTimer=irandom_range(60,180);
						}
						else{
							var rando = random_range(0,100);
							var random_limit=irandom_range(20,40);
							if(rando<lerp(0,60-lerp(60,0,(ki-20)/80),(stamina-random_limit)/(100-random_limit))){
								go_dash=true;
								state=ESTATE.MOVING_FORWARD
							}
							else if(ki<random_range(25,50)){
								state=ESTATE.CHARGING;
								xspeed=0;
								yspeed=0;
							}
							else{
								state=ESTATE.MOVING_FORWARD
							}
						
							stateTimer=irandom_range(60,180);
						}
					}
					else if (rando<70&&can_shoot&&ki>30){ //ki blast
						state=ESTATE.shoot_ONCE;
					}
					else{
						if(enemy_in_walking_distance){
							state=ESTATE.MOVING_FORWARD;
							stateTimer=irandom_range(60,180);
						}
					}
				}
				else{
					if(enemy.attacking){
						var rando = random_range(0,100)
						if(rando<60){//block
							var rando = random_range(0,100);
							var random_limit=irandom_range(5,15);
							if(rando<lerp(30,100,(ki-random_limit)/(100-random_limit))){
									go_block=true;
									var enemy_type=0;
									if(enemy.character="Goku"){
										enemy_type=10;
									}
									frames=irandom_range(0,20+enemy_type);
									stateTimer=random_range(120,180);
							}
							else{
								var rando = random_range(0,100);
								var random_limit=irandom_range(5,15);
								if(rando<lerp(0,100,(stamina-random_limit)/(100-random_limit))){
									go_dash=true;
								}
								state=ESTATE.BLOCKING;
							}
						}
					}
					else{
						var rando=random_range(0,100);
						if(rando<lerp(0,40,(general_state-33)/67)){
							go_block=true;
							stateTimer=random_range(120,180);
							var enemy_type=0;
							if(enemy.character="Goku"){
								enemy_type=10;
							}
							frames=irandom_range(0,20+enemy_type);
						}
						else if(rando<85){
							go_attack=true;
						}
					}
				}
			}
		}
	}


	if(xspeed!=0){
		if(xspeed>=1||xspeed<=-1){
			xspeed-=sign(xspeed);
		}
		else{
			if(xspeed>0){
				xspeed-=sign(xspeed)*xspeed
			}
			else{
				xspeed+=sign(xspeed)*xspeed
			}
		}
	}



}
