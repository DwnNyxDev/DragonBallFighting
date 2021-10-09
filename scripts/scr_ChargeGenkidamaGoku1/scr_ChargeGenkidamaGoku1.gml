function scr_ChargeGenkidamaGoku1() {
	if(sprite_index!=spr_genkidamaChargingGoku1){
		sprite_index=spr_genkidamaChargingGoku1;
		image_index=0;
		frames=irandom_range(15,120);
		attacking=true;
		sprite_set_speed(sprite_index,10,spritespeed_framespersecond);
		shoulders_fully_released=false;
	}

	if(frames>0){
		frames-=global.RelativeSpeed;
	}

	if(jumping){
	
		yspeed=0;
		xspeed=0;
	}
	else{
		//slow_down moving up and down
		if(flying){
		
	
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
		
		}
		//slow_down moving left and right
	

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



	if(image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){
		image_index=image_number-1;
		sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		new_Genkidama=instance_create_layer(x-(30*image_xscale),y-111,"Instances",obj_Genkidama);
		new_Genkidama.owner=id;
	}

	if(stateTimer<=0){
		stateTimer=irandom_range(10,40);
		if(ki<random_range(25,65)||enemy_in_range){
		if(instance_exists(new_Genkidama)&&new_Genkidama!=-1){
			instance_destroy(new_Genkidama);
		}
		attacking=false;
		if(state!=ESTATE.TIRED){
			if(jumping){
				state=ESTATE.JUMPING
			}
			else if(!flying){
			if(!keyboard_check(vk_f10)){
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
			else{
				if((image_xscale=1&&keyboard_check(vk_f10))||(image_xscale=-1&&keyboard_check(vk_f10))){
					state=ESTATE.CROUCHING_BLOCKING;
				}
				else{
					state=ESTATE.CROUCHING_IDLE;
				}
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
	}
	
	}



}
