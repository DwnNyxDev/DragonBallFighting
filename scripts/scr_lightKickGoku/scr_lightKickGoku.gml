function scr_lightKickGoku() {
	if(sprite_index!=spr_lightKickGoku){
		sprite_index=spr_lightKickGoku;
		image_index=0;
		attacking=true;
		sprite_set_speed(sprite_index,11,spritespeed_framespersecond);
	}

	if(image_index>1&&image_index<2&&hitbox=-1){
		hitbox=hitbox_create(image_xscale,1,0*image_xscale,0,6*(1/global.RelativeSpeed),4*image_xscale,0,35,6,3);
		hitbox.sprite_index=spr_lightKick_hitbox;
	}

	if(jumping){
		yspeed+=.2;
		if(xspeed!=0){
			xspeed-=sign(xspeed)/25;
		}
	}
	else{
		if((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))){
			xspeed=2;
		}
		else if((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))){
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
		sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		attacking=false;
		if(state!=PSTATE.TIRED){
			if(jumping){
		
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


}