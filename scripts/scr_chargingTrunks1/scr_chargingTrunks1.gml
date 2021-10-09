function scr_chargingTrunks1() {
	if(sprite_index!=spr_chargingTrunks1){
		sprite_index=spr_chargingTrunks1;
		if(bbox_bottom>obj_ground.y){
			while(bbox_bottom>obj_ground.y){
				y--;
			}
		}
		image_index=0;
		sprite_set_speed(sprite_index,10,spritespeed_framespersecond);
	}
	if(stamina<max_stamina&&out_of_combat&&!vampire_mode){
		stamina+=.1*global.RelativeSpeed;
	}


	if(stateTimer<=0){
		if(enemy_in_walking_distance||ki>random_range(45,65)){
			if(instance_exists(obj_aura)){
				instance_destroy(obj_aura);
			}
			if(poweringUp_effect){
					poweringUp_effect=false;
					alarm_set(5,-1);
				}
			if(!flying){

				
				
						state=ESTATE.IDLE
				
			
	
			}
			else if(flying) {
	
				

						state=ESTATE.FLYING_IDLE
			
	
			}
		}
			stateTimer=random_range(60,120);
	}

		if(ki<max_ki){
			if(ki+.1>max_ki){
				ki=max_ki;
			}
			else{
				ki+=.2*global.RelativeSpeed;
			}
	
		}

	
		if(!poweringUp_effect){
			poweringUp_effect=true;
			alarm[5]=lerp(room_speed*1.25,room_speed*.05,ki/85);
		}
		if (image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){
			image_index=image_number-1;
			sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		}



}
