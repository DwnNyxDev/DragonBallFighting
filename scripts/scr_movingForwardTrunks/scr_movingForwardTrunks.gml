function scr_movingForwardTrunks() {
	if(ki<max_ki){
		ki+=.015*global.RelativeSpeed;
	}
	if(stamina<max_stamina&&out_of_combat&&!vampire_mode){
		stamina+=.075*global.RelativeSpeed;
	}

	if(sprite_index!=spr_movingTrunks){
		sprite_index=spr_movingTrunks;
		image_index=0;
		while(bbox_bottom<obj_ground.y){
				y++;
			}
		sprite_set_speed(sprite_index,20,spritespeed_framespersecond);
	}

	if(image_xscale=1){
		if(keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr)){
			xspeed=3;
		
				//can_dash=false; //if they try to move one way, and then dash the other, they can't
		
	
		}
		else if(keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl)){
			state=PSTATE.BLOCKING;
		
		
				//can_dash=false;

		}
	}
	else if(image_xscale=-1){
		if(keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr)){
			state=PSTATE.BLOCKING;
		
		
				//can_dash=false; //if they try to move one way, and then dash the other, they can't
		
	
		}
		else if(keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl)){
			xspeed=-3;
		
				//can_dash=false;

		}
	}

	if((keyboard_check_released(global.keyRight)||gamepad_button_check_released(global.gp_connected,gp_padr))&&!(keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))){
		if(dashing_check_button=vk_nokey){
		
			state=PSTATE.IDLE
		}
	}
	else if((keyboard_check_released(global.keyLeft)||gamepad_button_check_released(global.gp_connected,gp_padl))&&!(keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))){
		if(dashing_check_button=vk_nokey){
	
			state=PSTATE.IDLE
		}
	}
	if(image_xscale=1){
		if((keyboard_check_pressed(global.keyRight)||gamepad_button_check_pressed(global.gp_connected,gp_padr))&&dashing_check_button=global.keyRight&&stamina>10){
			state=PSTATE.DASHING;
			stamina-=10;
			xspeed=dash_speed

		
		}
	}
	else if(image_xscale=-1){
		if((keyboard_check_pressed(global.keyLeft)||gamepad_button_check_pressed(global.gp_connected,gp_padl))&&dashing_check_button=global.keyLeft&&stamina>10){
	
		
			state=PSTATE.DASHING;
			stamina-=10;
			xspeed=-1*dash_speed

		
		
		}
	}
	if (image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){
		image_index=image_number-1;
		sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
	}
	/*

	//use this only if the above code for changing out at the end of an animation doesn't work
	var temp_fast = (sprite_get_speed_type(sprite_index) == spritespeed_framespersecond);
	var temp_speed = sprite_get_speed(sprite_index)*image_speed;
	if (temp_fast){ temp_speed /= room_speed; }
	if(image_index + temp_speed >= sprite_get_number(sprite_index)){
	//put state transition code here
	}

	*/



}
