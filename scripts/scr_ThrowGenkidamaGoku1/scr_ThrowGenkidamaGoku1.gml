function scr_ThrowGenkidamaGoku1() {
	if(sprite_index!=spr_genkidamaThrownGoku1){
		sprite_index=spr_genkidamaThrownGoku1;
		image_index=0;
		attacking=true;
		sprite_set_speed(sprite_index,10,spritespeed_framespersecond);
	}

	if(image_index >= 7 - sprite_get_speed(sprite_index)/room_speed){
		new_Genkidama.throw_direction=sign(image_xscale);
		new_Genkidama.thrown=true;
	}
	else if(image_index >= 6 - sprite_get_speed(sprite_index)/room_speed){
		new_Genkidama.x=x-(60*image_xscale);
	}
	else if(image_index >= 3 - sprite_get_speed(sprite_index)/room_speed&&!instance_exists(new_Genkidama)){
		new_Genkidama=instance_create_layer(x-(3*image_xscale),y-111,"Instances",obj_Genkidama);
		new_Genkidama.owner=id;
		new_Genkidama.x_size=lerp(1,4,Genkidama_charge/100);
		new_Genkidama.y_size=lerp(1,4,Genkidama_charge/100);
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
		attacking=false;
		Genkidama_charge=0;
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
