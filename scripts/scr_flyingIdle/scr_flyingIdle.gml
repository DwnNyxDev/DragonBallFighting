function scr_flyingIdle() {
	if(stamina<100&&out_of_combat){
		stamina+=.2*global.RelativeSpeed;
	}

	if(sprite_index!=spr_flyingGoku){
		sprite_index=spr_flyingGoku;
		sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		image_index=0;
	}

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
	ki-=.025*global.RelativeSpeed;
	if(image_xscale=1){
		if((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))){

			state=PSTATE.FLYING_MOVING_FORWARD
			going_forward=true;
			can_dash=true;
			dashing_check_button=global.keyRight;
			alarm[0]=room_speed*.3
		}
		else if((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))){

			state=PSTATE.FLYING_BLOCKING
			going_forward=false;
			can_dash=true;
			dashing_check_button=global.keyLeft;
			alarm[0]=room_speed*.3
		}
	}
	else if(image_xscale=-1){
		if((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))){

			state=PSTATE.FLYING_BLOCKING
			going_forward=false;
			can_dash=true;
			dashing_check_button=global.keyRight;
			alarm[0]=room_speed*.3
		}
		else if((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))){

			state=PSTATE.FLYING_MOVING_FORWARD
			going_forward=true;
			can_dash=true;
			dashing_check_button=global.keyLeft;
			alarm[0]=room_speed*.3
		}
	}
	if((keyboard_check(global.keyUp)||gamepad_button_check(global.gp_connected,gp_padu))||(keyboard_check(global.keyDown)||gamepad_button_check(global.gp_connected,gp_padd))){
		state=PSTATE.FLYING_MOVING_FORWARD

	}




}
