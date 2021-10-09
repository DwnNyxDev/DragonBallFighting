function scr_flyingIdle11() {
	if(stamina<100&&out_of_combat){
		stamina+=.2*global.RelativeSpeed;
	}

	if(sprite_index!=spr_flyingGoku1){
		sprite_index=spr_flyingGoku1;
		sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		image_index=0;
	}

	if(yspeed!=0){
		if(yspeed>=1||yspeed<=-1){
			yspeed-=sign(yspeed);
		}
		else{
			if(yspeed>0){
				yspeed-=sign(yspeed)*yspeed;
			}
			else{
				yspeed+=sign(yspeed)*yspeed;
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
	ki-=.025*global.RelativeSpeed;

	if(go_block&&frames>0){
		frames--;
	}
	else if(go_block&&frames<=0){
		go_block=false;
		state=ESTATE.FLYING_BLOCKING;
	}

	if(stateTimer<=0){
		var rando=random_range(0,100);
		if(!enemy.flying||ki<15){
			state=ESTATE.JUMPING;
		}
		else if(rando<lerp(0,20,(ki-33)/67)&&enemy_in_kame_distance){ //kamehameha
			state=ESTATE.KAMEHAMEHA;
			ki-=33;
		}
		else if(rando<30&&Genkidama_charge>random_range(50,60)&&enemy_in_walking_distance){
					state=ESTATE.ULTIMATE2;
		}
		else{
			if(!enemy_in_range||!enemy_in_Yrange){
				var rando=random_range(0,100);
				if(rando<lerp(15,50,(general_state-33)/67)){ //get closer
					if(enemy_in_walking_distance){
						state=ESTATE.FLYING_MOVING_FORWARD;
						stateTimer=irandom_range(60,180);
					}
					else{
						var rando = random_range(0,100);
						var random_limit=irandom_range(20,40);
						if(rando<lerp(0,60-lerp(60,0,(ki-20)/80),(stamina-random_limit)/(100-random_limit))){
							go_dash=true;
							state=ESTATE.FLYING_MOVING_FORWARD
						}
						else if(ki<random_range(50,75)){
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
				else if (rando<70&&can_shoot&&ki>20){ //ki blast
					state=ESTATE.shoot_ONCE;
				}
				else if (rando<100&&ki>random_range(40,60)&&Genkidama_charge<random_range(50,75)){
					state=ESTATE.ULTIMATE1;
				}
			
			}
			else{
				if(enemy.attacking){
					var rando = random_range(0,100)
					if(rando<60){//block
						var rando = random_range(0,100);
						var random_limit=irandom_range(20,40);
						if(rando<lerp(30,100,(ki-random_limit)/(100-random_limit))){
								go_block=true;
									frames=irandom_range(0,20);
									stateTimer=random_range(120,180);
						}
						else{
							var rando = random_range(0,100);
							var random_limit=irandom_range(20,40);
							if(rando<lerp(0,100,(stamina-random_limit)/(100-random_limit))){
								go_dash=true;
							}
							state=ESTATE.FLYING_BLOCKING;
						}
					}
					else if(rando<lerp(60,100,(stamina-33)/67)){
						go_dodge=true;
						stateTimer=irandom_range(60,180);
					}
				}
				else{
					var rando=random_range(0,100);
					general_state = (ki+stamina+player_health)/3;
						if(rando<lerp(0,70,(general_state-33)/67)){
							go_block=true;
							stateTimer=random_range(120,180);
							frames=irandom_range(0,20);
						}
						else if(rando<85){
							go_attack=true;
						}
				}
			}
		}
	}

	if(image_xscale=1){
		if(keyboard_check(vk_f10)){

			state=ESTATE.FLYING_MOVING_FORWARD
			going_forward=true;
			can_dash=true;
			dashing_check_button=global.keyRight;
			alarm[0]=room_speed*.3
		}
		else if(keyboard_check(vk_f10)){

			state=ESTATE.FLYING_BLOCKING
			going_forward=false;
			can_dash=true;
			dashing_check_button=global.keyLeft;
			alarm[0]=room_speed*.3
		}
	}
	else if(image_xscale=-1){
		if(keyboard_check(vk_f10)){

			state=ESTATE.FLYING_BLOCKING
			going_forward=false;
			can_dash=true;
			dashing_check_button=global.keyRight;
			alarm[0]=room_speed*.3
		}
		else if(keyboard_check(vk_f10)){

			state=ESTATE.FLYING_MOVING_FORWARD
			going_forward=true;
			can_dash=true;
			dashing_check_button=global.keyLeft;
			alarm[0]=room_speed*.3
		}
	}
	if(keyboard_check(vk_f10)||keyboard_check(vk_f10)){
		state=ESTATE.FLYING_MOVING_FORWARD

	}




}
