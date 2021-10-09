function scr_blockingTrunks() {

	if(stamina<max_stamina&&out_of_combat&&!vampire_mode){
		stamina+=.075*global.RelativeSpeed;
	}


	if(sprite_index!=spr_blockingTrunks){
		sprite_index=spr_blockingTrunks;
		image_index=0;
		can_parry=true;
		while(bbox_bottom<obj_ground.y){
				y++;
			}
		sprite_set_speed(sprite_index,20,spritespeed_framespersecond);
	}

	if(image_xscale=1){
		if(keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr)){
			blocking=false;
			state=PSTATE.MOVING_FORWARD
	
	
			
		
				//can_dash=false; //if they try to move one way, and then dash the other, they can't
		
	
		}
		else if(keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl)){
			xspeed=-1.5;
		
				//can_dash=false;

		}
	}
	else if(image_xscale=-1){
		if(keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr)){
			xspeed=1.5;
		
				//can_dash=false; //if they try to move one way, and then dash the other, they can't
		
	
		}
		else if(keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl)){
			blocking=false;
			state=PSTATE.MOVING_FORWARD
		
	
				//can_dash=false;

		}
	}

	if((keyboard_check_released(global.keyRight)||gamepad_button_check_released(global.gp_connected,gp_padr))&&!(keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))){
		if(dashing_check_button=vk_nokey){
			blocking=false;
			state=PSTATE.IDLE
		}
	}
	else if((keyboard_check_released(global.keyLeft)||gamepad_button_check_released(global.gp_connected,gp_padl))&&!(keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))){
		if(dashing_check_button=vk_nokey){
			blocking=false;
			state=PSTATE.IDLE
		}
	}
	if(image_xscale=-1){
		if((keyboard_check_pressed(global.keyRight)||gamepad_button_check_pressed(global.gp_connected,gp_padr))&&dashing_check_button=global.keyRight&&stamina>10){
		
			blocking=false;
			xspeed=dash_speed
			stamina-=10;
		
			state=PSTATE.DASHING_BACK;

		
		}
	}	
	else if(image_xscale=1){
	
		if((keyboard_check_pressed(global.keyLeft)||gamepad_button_check_pressed(global.gp_connected,gp_padl))&&dashing_check_button=global.keyLeft&&stamina>10){
			blocking=false;
			state=PSTATE.DASHING_BACK;
			stamina-=10;
			xspeed=-1*dash_speed

		
		
		}
	}
	if (image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){
		can_parry=false;
		sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		image_index=image_number-1;
	
	}




}
