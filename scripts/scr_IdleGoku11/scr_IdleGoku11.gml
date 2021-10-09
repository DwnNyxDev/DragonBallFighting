function scr_IdleGoku11() {
	if(ki<100){
		ki+=.025*global.RelativeSpeed;
	}
	if(stamina<100&&out_of_combat){
		stamina+=.2*global.RelativeSpeed;
	}
	if(go_block&&frames>0){
		frames--;
	}
	else if(go_block&&frames<=0){
		go_block=false;
		state=ESTATE.BLOCKING;
	}

	if(sprite_index!=spr_idleGoku1){
		sprite_index=spr_idleGoku1;
		sprite_set_speed(sprite_index,8,spritespeed_framespersecond);
		if(bbox_bottom<obj_ground.y){
			while(bbox_bottom<obj_ground.y){
				y++;
			}
		}
		image_index=0;
	}
	if(stateTimer<=0){
				if(!enemy_in_range){
					var rando=random_range(0,100);
					if(rando<lerp(15,50,(general_state-33)/67)){ //get closer
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
							else{
								state=ESTATE.MOVING_FORWARD
							}
						
							stateTimer=irandom_range(60,180);
						}
					}
					else{
						if(enemy_in_walking_distance){
							state=ESTATE.MOVING_FORWARD;
							stateTimer=irandom_range(60,180);
						}
					}
				}
				else{
					if(practice_ai="tired"){
					
					
									go_block=true;
									frames=irandom_range(15,20);
									stateTimer=random_range(120,180);
					}
					else{
						if(practice_ai="blocking"){
							go_attack=true;
						}
					}
		}
	}

	if(image_xscale=1){
		if(keyboard_check(vk_f10)){

			state=ESTATE.MOVING_FORWARD

			dashing_check_button=global.keyRight;
			alarm[0]=room_speed*.3
		}
		else if(keyboard_check(vk_f10)){

			state=ESTATE.BLOCKING

			dashing_check_button=global.keyLeft;
			alarm[0]=room_speed*.3
		}
	}
	else if(image_xscale=-1){
		if(keyboard_check(vk_f10)){

			state=ESTATE.BLOCKING

			dashing_check_button=global.keyRight;
			alarm[0]=room_speed*.3
		}
		else if(keyboard_check(vk_f10)){
		
			state=ESTATE.MOVING_FORWARD

			dashing_check_button=global.keyLeft;
			alarm[0]=room_speed*.3
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
