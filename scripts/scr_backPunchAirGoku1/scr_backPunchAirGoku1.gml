function scr_backPunchAirGoku1() {
	if(sprite_index!=spr_backPunchAirGoku1){
		sprite_index=spr_backPunchAirGoku1;
		image_index=0;
		attacking=true;
		sprite_set_speed(sprite_index,10,spritespeed_framespersecond);
	}

	if(image_index>2&&image_index<3&&hitbox=-1){
		hitbox=hitbox_create(image_xscale,1,0*image_xscale,0,6*(1/global.RelativeSpeed),-4*image_xscale,5,30,4,8);
		hitbox.sprite_index=spr_backPunchAir_hitbox;
	
	}

	if(jumping){
	
		yspeed+=.2;
		if(xspeed!=0){
			xspeed-=sign(xspeed)/25;
		}
	}
	else{
		//slow_down moving up and down
		if(flying){
			if(keyboard_check(vk_f10)){
				yspeed=-2;
			}
			else if(keyboard_check(vk_f10)){
				yspeed=2;
			}
			else{
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
		}
		//slow_down moving left and right
		if(x<enemy.bbox_left&&image_xscale=1){
			xspeed=2;
		}
		else if(x>enemy.bbox_right&&image_xscale=-1){
			xspeed=-2;
		}
		else{
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
	}

	if(image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){
		alarm[9]=room_speed*3;
		image_index=image_number-1;
		stateTimer=irandom_range(0,90);
		sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
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
