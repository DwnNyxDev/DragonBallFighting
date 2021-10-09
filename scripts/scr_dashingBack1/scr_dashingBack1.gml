function scr_dashingBack1() {
	/*
	if(image_xscale=1){
		xspeed=-15;
	}
	else if(image_xscale=-1){
		xspeed=15;
	}
	*/

	if(flying||jumping){
		if(sprite_index!=spr_dashingBackFlyingGoku1){
			sprite_index=spr_dashingBackFlyingGoku1;
			image_index=0;
			frames=20;
			sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		}
	}
	else{
		if(sprite_index!=spr_dashingBackGoku1){
			sprite_index=spr_dashingBackGoku1;
			image_index=0;
			frames=20;
			sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		}
	}
	frames-=global.RelativeSpeed;
	if(frames=0){
		frames=-1;
		xspeed=0;
		stateTimer=random_range(120,15);
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
	else if(frames<=5){
		image_index=image_number-1;
	}
	else if(frames<=15){
		image_index=image_number-2;
	}


	
	/*
	if(state!=ESTATE.TIRED){
		if(jumping){
			sprite_index=spr_jumpingGoku;
			state=ESTATE.JUMPING
		}
		else if(!flying){
			if(state=ESTATE.DASHING||state=ESTATE.DASHING_BACK){
				if((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))&&image_xscale=1){
					sprite_index=spr_movingGoku;
					state=ESTATE.MOVING_FORWARD;
				}
				else if((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&image_xscale=1){
					sprite_index=spr_blockingGoku;
					state=ESTATE.BLOCKING;
				}
				else if((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))&&image_xscale=-1){
					sprite_index=spr_blockingGoku;
					state=ESTATE.BLOCKING;
				}
				else if((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&image_xscale=-1){
					sprite_index=spr_movingGoku;
					state=ESTATE.MOVING_FORWARD;
				}
				else{
					sprite_index=spr_idleGoku
					state=ESTATE.IDLE
				}
			}
		}
		else if(flying) {
			if(state=ESTATE.DASHING||state=ESTATE.DASHING_BACK){
				if((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))&&image_xscale=1){
					sprite_index=spr_movingGoku;
					state=ESTATE.FLYING_MOVING_FORWARD;
				}
				else if((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&image_xscale=1){
					sprite_index=spr_blockingGoku;
					state=ESTATE.FLYING_BLOCKING;
				}
				else if((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))&&image_xscale=-1){
					sprite_index=spr_blockingGoku;
					state=ESTATE.FLYING_BLOCKING;
				}
				else if((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&image_xscale=-1){
					sprite_index=spr_movingGoku;
					state=ESTATE.FLYING_MOVING_FORWARD;
				}
				else{
					sprite_index=spr_flyingGoku
					state=ESTATE.FLYING_IDLE
				}
			}
		}
	}
	/*

/* end scr_dashingBack1 */
}
