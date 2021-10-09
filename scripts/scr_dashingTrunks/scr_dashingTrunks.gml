function scr_dashingTrunks() {
	/*
	if(image_xscale=1){
		xspeed=15;
	}
	else if(image_xscale=-1){
		xspeed=-15;
	}
	*/
	if(flying||jumping){
		if(sprite_index!=spr_dashingFlyingTrunks){
			sprite_index=spr_dashingFlyingTrunks;
			image_index=0;
			frames=20;
			sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		}
	}
	else{
		if(sprite_index!=spr_dashingTrunks){
			sprite_index=spr_dashingTrunks;
			image_index=0;
			frames=20;
			sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		}
	}
	frames-=global.RelativeSpeed;

	if(frames=0){
		frames=-1;
		if(state!=PSTATE.TIRED){
			if(jumping){
				state=PSTATE.JUMPING
				xspeed/=2;
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

					state=PSTATE.FLYING_MOVING_FORWARD;
				}
				else if((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&image_xscale=1){

					state=PSTATE.FLYING_BLOCKING;
				}
				else if((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))&&image_xscale=-1){
					state=PSTATE.FLYING_BLOCKING;
				}
				else if((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&image_xscale=-1){
					state=PSTATE.FLYING_MOVING_FORWARD;
				}
				else{
					state=PSTATE.FLYING_IDLE
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
