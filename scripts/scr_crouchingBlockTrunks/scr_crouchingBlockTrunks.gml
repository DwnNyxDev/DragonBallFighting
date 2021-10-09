function scr_crouchingBlockTrunks() {

	if(stamina<max_stamina&&out_of_combat&&!vampire_mode){
		stamina+=.075*global.RelativeSpeed;
	}

	if(sprite_index!=spr_crouchingBlockTrunks){
		sprite_index=spr_crouchingBlockTrunks;
		image_index=0;
		can_parry=true;
		xspeed=0;
		if(bbox_bottom<obj_ground.y){
			while(bbox_bottom<obj_ground.y){
				y++;
			}
		}
		sprite_set_speed(sprite_index,15,spritespeed_framespersecond);
	}


	if((keyboard_check_released(global.keyDown)||gamepad_button_check_released(global.gp_connected,gp_padd))){
		if((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))&&image_xscale=1){
				blocking=false;
				state=PSTATE.MOVING_FORWARD;
			}
			else if((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&image_xscale=1){
				state=PSTATE.BLOCKING;
			}
			else if((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))&&image_xscale=-1){
				state=PSTATE.BLOCKING;
			}
			else if((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&image_xscale=-1){
				blocking=false;
				state=PSTATE.MOVING_FORWARD;
			}
			else{
				blocking=false;
				state=PSTATE.IDLE
			}
			while(bbox_bottom>obj_ground.y){
			y--;
		}
	}
	else if((keyboard_check_released(global.keyLeft)||gamepad_button_check_released(global.gp_connected,gp_padl))){
		blocking=false;
		state=PSTATE.CROUCHING_IDLE;
	}
	if (image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){
		sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		image_index=image_number-1;
		can_parry=false;
	}




}
