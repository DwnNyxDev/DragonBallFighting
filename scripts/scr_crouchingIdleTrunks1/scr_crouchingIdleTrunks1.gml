function scr_crouchingIdleTrunks1() {
	if(ki<max_ki){
		ki+=.015*global.RelativeSpeed;
	}
	if(stamina<max_stamina&&out_of_combat&&!vampire_mode){
		stamina+=.15*global.RelativeSpeed;
	}

	if(sprite_index!=spr_crouchingTrunks1){
		sprite_index=spr_crouchingTrunks1;
		xspeed=0;
		if(bbox_bottom<obj_ground.y){
			while(bbox_bottom<obj_ground.y){
				y++;
			}
		}
		sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		image_index=0;
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
