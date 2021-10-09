function scr_chargingGoku1() {
	if(stamina<100&&out_of_combat){
		stamina+=.2*global.RelativeSpeed;
	}
	if(sprite_index!=spr_chargingGoku1){
		sprite_index=spr_chargingGoku1;
	
		if(bbox_bottom>obj_ground.y){
			while(bbox_bottom>obj_ground.y){
				y--;
			}
		}
		image_index=0;
		sprite_set_speed(sprite_index,10,spritespeed_framespersecond);
	}



	if(stateTimer<=0){
		if(enemy_in_walking_distance||ki>random_range(75,100)){
			if(instance_exists(obj_aura)){
				instance_destroy(obj_aura);
			}
			if(poweringUp_effect){
					poweringUp_effect=false;
					alarm_set(5,-1);
				}
			if(!flying){

					if(keyboard_check(vk_f10)&&image_xscale=1){

						state=ESTATE.MOVING_FORWARD;
					}
					else if(keyboard_check(vk_f10)&&image_xscale=1){
	
						state=ESTATE.BLOCKING;
					}
					else if(keyboard_check(vk_f10)&&image_xscale=-1){

						state=ESTATE.BLOCKING;
					}
					else if(keyboard_check(vk_f10)&&image_xscale=-1){

						state=ESTATE.MOVING_FORWARD;
					}
					else{
				
						state=ESTATE.IDLE
					}
			
	
			}
			else if(flying) {
	
					if(keyboard_check(vk_f10)&&image_xscale=1){

						state=ESTATE.FLYING_MOVING_FORWARD;
					}
					else if(keyboard_check(vk_f10)&&image_xscale=1){

						state=ESTATE.FLYING_BLOCKING;
					}
					else if(keyboard_check(vk_f10)&&image_xscale=-1){

						state=ESTATE.FLYING_BLOCKING;
					}
					else if(keyboard_check(vk_f10)&&image_xscale=-1){

						state=ESTATE.FLYING_MOVING_FORWARD;
					}
					else{

						state=ESTATE.FLYING_IDLE
					}
			
	
			}
		}
			stateTimer=random_range(60,120);
	}
	if(ki<100){
		if(ki+.1>100){
			ki=100;
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
