function scr_crouchingIdleGoku() {
	if(ki<100){
		ki+=.025*global.RelativeSpeed;
	}
	if(stamina<100&&out_of_combat){
		stamina+=.2*global.RelativeSpeed;
	}

	if(sprite_index!=spr_crouchingGoku){
		sprite_index=spr_crouchingGoku;
		xspeed=0;
		if(bbox_bottom<obj_ground.y){
			while(bbox_bottom<obj_ground.y){
				y++;
			}
		}
		sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		image_index=0;
	}

	if(image_xscale=1&&((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))||gamepad_button_check(global.gp_connected,gp_padl))){

			state=PSTATE.CROUCHING_BLOCKING;
	}
	else if(image_xscale=-1&&((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))||gamepad_button_check(global.gp_connected,gp_padr))){
		state=PSTATE.CROUCHING_BLOCKING;
	}


	if((keyboard_check_released(global.keyDown)||gamepad_button_check_released(global.gp_connected,gp_padd))||gamepad_button_check_released(global.gp_connected,gp_padd)){
		if(((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))||gamepad_button_check(global.gp_connected,gp_padr))&&image_xscale=1){

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
			while(bbox_bottom>obj_ground.y){
			y--;
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



}
