function scr_jumpingGoku2() {



		yspeed+=.2;
		if (image_index >= (image_number-1) - sprite_get_speed(sprite_index)/room_speed){
			sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
			image_index=image_number-2;
	
		}

	if(ki<100){
		ki+=.025*global.RelativeSpeed;
	}
	if(sprite_index!=spr_jumpingGoku){
		sprite_index=spr_jumpingGoku;
		if(bbox_bottom+1>obj_ground.y){
			while(bbox_bottom+1>obj_ground.y){
		
				y--;
			}
		}
		sprite_set_speed(sprite_index,8,spritespeed_framespersecond);
		if(yspeed<0){
			image_index=0;
		}
		else{
			image_index=3;
		}
	}



	if(xspeed!=0){

		xspeed-=sign(xspeed)/25;
	}


	/*
	if(image_xscale=1){
		if(keyboard_check_pressed(global.keyRight)){

			going_forward=true;
			can_dash=true;
			alarm[0]=room_speed*.3
		}
		else if((keyboard_check_pressed(global.keyLeft)||gamepad_button_check_pressed(global.gp_connected,gp_padl))){
		
			going_forward=false;
			can_dash=true;
			alarm[0]=room_speed*.3
		}
	}
	else if(image_xscale=-1){
		if(keyboard_check_pressed(global.keyRight)){

			going_forward=false;
			can_dash=true;
			alarm[0]=room_speed*.3
		}
		else if((keyboard_check_pressed(global.keyLeft)||gamepad_button_check_pressed(global.gp_connected,gp_padl))){
			going_forward=true;
			can_dash=true;
			alarm[0]=room_speed*.3
		}
	}
	if(image_xscale=1){
		if((keyboard_check_pressed(global.keyLeft)||gamepad_button_check_pressed(global.gp_connected,gp_padl))&&can_dash){
			can_dash=false;
			sprite_index=spr_dashingBackGoku;
			state=PSTATE.DASHING_BACK;
			xspeed=-1*dash_speed
			alarm[1]=room_speed*.25;
		
		}
		else if(keyboard_check_pressed(global.keyRight)&&can_dash){
			sprite_index=spr_dashingGoku;
			can_dash=false;
			state=PSTATE.DASHING;
			xspeed=dash_speed
			alarm[1]=room_speed*.25;
		
		}
	}
	else if(image_xscale=-1){
		if((keyboard_check_pressed(global.keyLeft)||gamepad_button_check_pressed(global.gp_connected,gp_padl))&&can_dash){
			can_dash=false;
			sprite_index=spr_dashingGoku;
			state=PSTATE.DASHING;
			xspeed=-1*dash_speed
			alarm[1]=room_speed*.25;
		
		}
		else if(keyboard_check_pressed(global.keyRight)&&can_dash){
			sprite_index=spr_dashingBackGoku;
			can_dash=false;
			xspeed=dash_speed
			state=PSTATE.DASHING_BACK;
			alarm[1]=room_speed*.25;
		
		}
	}
	*/
	





}
