function scr_crouchingIdleGoku11() {
	if(ki<100){
		ki+=.025*global.RelativeSpeed;
	}
	if(stamina<100&&out_of_combat){
		stamina+=.2*global.RelativeSpeed;
	}

	if(sprite_index!=spr_crouchingGoku1){
		sprite_index=spr_crouchingGoku1;
		xspeed=0;
		if(bbox_bottom<obj_ground.y){
			while(bbox_bottom<obj_ground.y){
				y++;
			}
		}
		sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		image_index=0;
	}

	if(image_xscale=1&&keyboard_check(vk_f10)){

			state=ESTATE.CROUCHING_BLOCKING;
	}
	else if(image_xscale=-1&&keyboard_check(vk_f10)){
		state=ESTATE.CROUCHING_BLOCKING;
	}

	if(stateTimer<=0){
		if(!enemy_in_range||!enemy.crouching){
			state=ESTATE.IDLE
			while(bbox_bottom>obj_ground.y){
				y--;
			}
		}
		else if(enemy.attacking){
			var rando = random_range(0,100);
					var random_limit=irandom_range(20,40);
					if(rando<lerp(35,100,(ki-random_limit)/(100-random_limit))){
							state=ESTATE.CROUCHING_BLOCKING;
					}
		}
		else{
			var rando = random_range(0,100);
			if(rando<60){
				go_attack=true;
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
