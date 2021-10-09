function scr_flyingBlocking2() {

		ki-=.025;
		if(stamina<100&&out_of_combat){
		stamina+=.1*global.RelativeSpeed;
	}
	if(sprite_index!=spr_blockingGoku){
		sprite_index=spr_blockingGoku;
		image_index=0;
		sprite_set_speed(sprite_index,20,spritespeed_framespersecond);
	}

	if(image_xscale=1){
		if((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))){
			xspeed=-2;
		
				//can_dash=false; //if they try to move one way, and then dash the other, they can't
		
	
			if(!(keyboard_check(global.keyUp)||gamepad_button_check(global.gp_connected,gp_padu))&&!(keyboard_check(global.keyDown)||gamepad_button_check(global.gp_connected,gp_padd))){
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
		else if((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))){
			blocking=false;
			state=PSTATE.FLYING_MOVING_FORWARD;

		}
	}
	else if(image_xscale=-1){
		if((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))){
			xspeed=2;
		
				//can_dash=false; //if they try to move one way, and then dash the other, they can't
		
	
			if(!(keyboard_check(global.keyUp)||gamepad_button_check(global.gp_connected,gp_padu))&&!(keyboard_check(global.keyDown)||gamepad_button_check(global.gp_connected,gp_padd))){
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
		else if((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))){
			blocking=false;
			state=PSTATE.FLYING_MOVING_FORWARD;

		}
	}
	if((keyboard_check(global.keyUp)||gamepad_button_check(global.gp_connected,gp_padu))){
			yspeed=-4;
			if(!(keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&!(keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))){
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
	else if((keyboard_check(global.keyDown)||gamepad_button_check(global.gp_connected,gp_padd))){
		yspeed=4;
		if(!(keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&!(keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))){
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

	if((keyboard_check_released(global.keyRight)||gamepad_button_check_released(global.gp_connected,gp_padr))&&image_xscale=-1&&!(keyboard_check(global.keyUp)||gamepad_button_check(global.gp_connected,gp_padu))&&!(keyboard_check(global.keyDown)||gamepad_button_check(global.gp_connected,gp_padd))){
		if(dashing_check_button=vk_nokey){
			blocking=false;
			state=PSTATE.FLYING_IDLE
		}
	}
	else if((keyboard_check_released(global.keyLeft)||gamepad_button_check_released(global.gp_connected,gp_padl))&&image_xscale=1&&!(keyboard_check(global.keyUp)||gamepad_button_check(global.gp_connected,gp_padu))&&!(keyboard_check(global.keyDown)||gamepad_button_check(global.gp_connected,gp_padd))){
		if(dashing_check_button=vk_nokey){
			blocking=false;
			state=PSTATE.FLYING_IDLE
		}
	}
	else if((keyboard_check_released(global.keyDown)||gamepad_button_check_released(global.gp_connected,gp_padd))&&yspeed>=0&&!(keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&!(keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))){
		blocking=false;
		state=PSTATE.FLYING_IDLE
	}
	else if((keyboard_check_released(global.keyUp)||gamepad_button_check_released(global.gp_connected,gp_padu))&&yspeed<=0&&!(keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&!(keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))){
		blocking=false;
		state=PSTATE.FLYING_IDLE
	}
	if(image_xscale=1){
		if((keyboard_check_pressed(global.keyLeft)||gamepad_button_check_pressed(global.gp_connected,gp_padl))&&dashing_check_button=global.keyLeft&&stamina>5){


			xspeed=-1*dash_speed;
			blocking=false;
			state=PSTATE.DASHING_BACK;
			stamina-=5;

		}
	}
	else if(image_xscale=-1){
		if(keyboard_check_pressed(global.keyRight)&&dashing_check_button=global.keyRight&&stamina>5){


			xspeed=dash_speed;
			blocking=false;
			state=PSTATE.DASHING_BACK;
			stamina-=5;

		}
	}

	if (image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){
		image_index=image_number-1;
		sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
	}


}
