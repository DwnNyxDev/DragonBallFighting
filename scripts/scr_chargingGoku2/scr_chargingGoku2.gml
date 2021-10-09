function scr_chargingGoku2() {
	if(sprite_index!=spr_chargingGoku){
		sprite_index=spr_chargingGoku;
		if(bbox_bottom>obj_ground.y){
			while(bbox_bottom>obj_ground.y){
				y--;
			}
		}
		image_index=0;
		sprite_set_speed(sprite_index,10,spritespeed_framespersecond);
	}
	if(stamina<100&&out_of_combat){
		stamina+=.2*global.RelativeSpeed;
	}


	if(keyboard_check_released(global.keyCharge)||gamepad_button_check_released(global.gp_connected,gp_shoulderlb)||gamepad_button_check_released(global.gp_connected,gp_face1)){
		if(instance_exists(obj_aura)){
			instance_destroy(obj_aura);
		}
		if(poweringUp_effect){
				poweringUp_effect=false;
				alarm_set(5,-1);
			}
		if(!flying){

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
	else{
		if(ki<100){
			if(ki+.1>100){
				ki=100;
			}
			else{
				ki+=.2*global.RelativeSpeed;
			}
	
		}

	
		if(!poweringUp_effect){
			poweringUp_effect=true;
			alarm[5]=lerp(room_speed*1.25,room_speed*.05,ki/85);
		}
		if (image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){
			image_index=image_number-1;
			sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		}
	}


}
