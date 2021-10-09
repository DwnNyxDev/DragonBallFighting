function scr_IdleGoku() {
	if(ki<100){
		ki+=.025*global.RelativeSpeed;
	}
	if(stamina<100&&out_of_combat){
		stamina+=.2*global.RelativeSpeed;
	}

	if(sprite_index!=spr_idleGoku){
		sprite_index=spr_idleGoku;
		sprite_set_speed(sprite_index,8,spritespeed_framespersecond);
		if(bbox_bottom<obj_ground.y){
			while(bbox_bottom<obj_ground.y){
				y++;
			}
		}
		image_index=0;
	}

	if(image_xscale=1){
		if(keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr)){

			state=PSTATE.MOVING_FORWARD

			dashing_check_button=global.keyRight;
			alarm[0]=room_speed*.3
		}
		else if(keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl)){

			state=PSTATE.BLOCKING

			dashing_check_button=global.keyLeft;
			alarm[0]=room_speed*.3
		}
	}
	else if(image_xscale=-1){
		if(keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr)){

			state=PSTATE.BLOCKING

			dashing_check_button=global.keyRight;
			alarm[0]=room_speed*.3
		}
		else if(keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl)){
		
			state=PSTATE.MOVING_FORWARD

			dashing_check_button=global.keyLeft;
			alarm[0]=room_speed*.3
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
