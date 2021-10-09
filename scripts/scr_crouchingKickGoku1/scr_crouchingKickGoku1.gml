function scr_crouchingKickGoku1() {
	if(sprite_index!=spr_crouchKickGoku){
		sprite_index=spr_crouchKickGoku;
		image_index=0;
		attacking=true;
		sprite_set_speed(sprite_index,8,spritespeed_framespersecond);
	}

	if(image_index>2&&image_index<3&&hitbox=-1){
		hitbox=hitbox_create(image_xscale,1,0*image_xscale,0,15*(1/global.RelativeSpeed),4*image_xscale,0,15,4,4);
		hitbox.sprite_index=spr_crouchKick_hitbox;
	}




	if(image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){
		alarm[9]=room_speed*3;
		image_index=image_number-1;
		var rando=random_range(0,100);
		if(rando<lerp(0,30,(ki-15)/85)&&can_shoot){
			state=ESTATE.shoot_ONCE
		}
		stateTimer=irandom_range(0,90);
		sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		attacking=false;
		if(state!=ESTATE.TIRED){
		

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

		
	
	}


}
