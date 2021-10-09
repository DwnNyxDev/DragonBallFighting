function scr_dashingBackTrunks1() {
	/*
	if(image_xscale=1){
		xspeed=-15;
	}
	else if(image_xscale=-1){
		xspeed=15;
	}
	*/

	if(flying||jumping){
		if(sprite_index!=spr_dashingBackFlyingTrunks1){
			sprite_index=spr_dashingBackFlyingTrunks1;
			image_index=0;
			frames=20;
			sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		}
	}
	else{
		if(sprite_index!=spr_dashingBackTrunks1){
			sprite_index=spr_dashingBackTrunks1;
			image_index=0;
			frames=20;
			sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		}
	}
	frames-=global.RelativeSpeed;
	if(frames=0){
		frames=-1;
		xspeed=0;
		if(!flying){
			state=ESTATE.IDLE;
		}
		else{
			state=ESTATE.FLYING_IDLE
		}
		
	
	}
	else if(frames<=5){
		image_index=image_number-1;
	}
	else if(frames<=15){
		image_index=image_number-2;
	}


	
	/*
	if(state!=PSTATE.TIRED){
		if(jumping){
			sprite_index=spr_jumpingGoku;
			state=PSTATE.JUMPING
		}
		else if(!flying){
			if(state=PSTATE.DASHING||state=PSTATE.DASHING_BACK){
				if((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))&&image_xscale=1){
					sprite_index=spr_movingGoku;
					state=PSTATE.MOVING_FORWARD;
				}
				else if((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&image_xscale=1){
					sprite_index=spr_blockingGoku;
					state=PSTATE.BLOCKING;
				}
				else if((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))&&image_xscale=-1){
					sprite_index=spr_blockingGoku;
					state=PSTATE.BLOCKING;
				}
				else if((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&image_xscale=-1){
					sprite_index=spr_movingGoku;
					state=PSTATE.MOVING_FORWARD;
				}
				else{
					sprite_index=spr_idleGoku
					state=PSTATE.IDLE
				}
			}
		}
		else if(flying) {
			if(state=PSTATE.DASHING||state=PSTATE.DASHING_BACK){
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
	}
	/*

/* end scr_dashingBackTrunks1 */
}
