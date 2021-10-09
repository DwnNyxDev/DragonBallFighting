function scr_hitGoku() {



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

	alarm_set(2,-1);
	alarm_set(1,-1);
	alarm_set(3,-1);
	alarm_set(4,-1);
	poweringUp_effect=false;
	can_shoot=true;
	
	hitStun-=global.RelativeSpeed;
	if(hitStun<=0){
		if(ki>0){
			if(sprite_index=spr_hitGokuGrounded){
				state=PSTATE.GROUNDED;
			}
		else if(jumping){
				sprite_index=spr_jumpingGoku;
				state=PSTATE.JUMPING
			}
			else if(!flying){
			if(!(keyboard_check(global.keyDown)||gamepad_button_check(global.gp_connected,gp_padd))){
				if((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))&&image_xscale=1){

					state=PSTATE.MOVING_FORWARD;
				}
				else if((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&image_xscale=1){

					state=PSTATE.BLOCKING;
				}
				else if((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))&&image_xscale=-1){

					state=PSTATE.BLOCKING;
				}
				else if((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&image_xscale=-1){
		
					state=PSTATE.MOVING_FORWARD;
				}
				else{
			
					state=PSTATE.IDLE
				}
			}
			else{
				if((image_xscale=1&&(keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl)))||(image_xscale=-1&&(keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr)))){
					state=PSTATE.CROUCHING_BLOCKING;
				}
				else{
					state=PSTATE.CROUCHING_IDLE;
				}
			}
	
	}
			else if(flying) {
		
				if((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))&&image_xscale=1){
					sprite_index=spr_movingGoku;
					state=PSTATE.FLYING_MOVING_FORWARD;
				}
				else if((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&image_xscale=1){
					sprite_index=spr_blockingGoku;
					state=PSTATE.FLYING_BLOCKING;
				}
				else if((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))&&image_xscale=-1){
					sprite_index=spr_blockingGoku;
					state=PSTATE.FLYING_BLOCKING;
				}
				else if((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&image_xscale=-1){
					sprite_index=spr_movingGoku;
					state=PSTATE.FLYING_MOVING_FORWARD;
				}
				else{
					sprite_index=spr_flyingGoku
					state=PSTATE.FLYING_IDLE
				}
			
			}
		}
		else{
			state=PSTATE.TIRED;
		}
	
	}
	if (image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){
		sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		image_index=image_number-1;
	
	}


}
