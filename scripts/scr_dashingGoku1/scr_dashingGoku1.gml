function scr_dashingGoku1() {
	/*
	if(image_xscale=1){
		xspeed=15;
	}
	else if(image_xscale=-1){
		xspeed=-15;
	}
	*/
	if(flying){
		if(sprite_index!=spr_dashingFlyingGoku1){
			sprite_index=spr_dashingFlyingGoku1;
			image_index=0;
			frames=20;
			sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		}
	}
	else{
		if(sprite_index!=spr_dashingGoku1){
			sprite_index=spr_dashingGoku1;
			image_index=0;
			frames=20;
			sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		}
	}
	frames-=global.RelativeSpeed;

	if(frames=0){
		frames=-1;
		stateTimer=random_range(120,15);
		if(state!=ESTATE.TIRED){
			if(jumping){
				state=ESTATE.JUMPING
				xspeed/=2;
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
	else if(frames<=5){
		image_index=image_number-1;
	}
	else if(frames<=15){
		image_index=image_number-2;
	}


}
