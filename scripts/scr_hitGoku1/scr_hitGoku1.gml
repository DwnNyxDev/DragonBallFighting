function scr_hitGoku1() {



	if(xspeed!=0){
			xspeed-=sign(xspeed)*.1;
	}
	if(jumping||flying){
		yspeed+=.2;
	}
	if(attacking){
		attacking=false;
		can_attack=true;
		if(hitbox!=-1){
			if(instance_exists(hitbox)){
				instance_destroy(hitbox);
			}
				hitbox=-1;
		}
		if(instance_exists(kamehameha_charge)&&kamehameha_charge!=-1){
			instance_destroy(kamehameha_charge)
		}
		if(instance_exists(new_Genkidama)&&new_Genkidama!=-1){
			instance_destroy(new_Genkidama)
		}
	}
	blocking=false;
	can_parry=false;
	go_fly=false;
	go_jump=false;
	go_dash=false;
	go_dodge=false;
	go_attack=false;
	go_block=false;
	poweringUp_effect=false;
	alarm_set(2,-1);
	alarm_set(1,-1);
	alarm_set(3,-1);
	alarm_set(4,-1);
	
	hitStun-=global.RelativeSpeed;
	if(hitStun<=0){
		if(state!=ESTATE.TIRED){
			if(sprite_index=spr_hitGokuGrounded1){
				state=ESTATE.GROUNDED;
			}
		else if(jumping){
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
	if (image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){
		sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		image_index=image_number-1;
	
	}


}
