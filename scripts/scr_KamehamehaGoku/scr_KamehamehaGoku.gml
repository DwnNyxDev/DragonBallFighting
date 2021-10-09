function scr_KamehamehaGoku() {
	if(sprite_index!=spr_normalKamehamehaGoku&&sprite_index!=spr_kaiokenKamehamehaGoku&&sprite_index!=spr_ssjKamehamehaGoku){
		sprite_index=spr_normalKamehamehaGoku;
		image_index=0;
		charging_kamehameha=true;
		kamehameha_total_power=10;
		attacking=true;
		sprite_set_speed(sprite_index,9,spritespeed_framespersecond);
	}
	if(kamehameha_fired){
		if(frames>0){
			frames-=global.RelativeSpeed;
	
		}
		else{
			sprite_set_speed(sprite_index,9,spritespeed_framespersecond);
		}
	}
	if(jumping){
	
		yspeed=0;
		xspeed=0;
	}
	else{
		//slow_down moving up and down
		if(flying){
		
	
				if(yspeed!=0){
					if(yspeed>=1||yspeed<=-1){
						yspeed-=sign(yspeed);
					}
					else{
						if(yspeed>0){
							yspeed-=sign(yspeed)*yspeed;
						}
						else{
							yspeed+=sign(yspeed)*yspeed;
						}
					}
				}
		
		}
		//slow_down moving left and right
	

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

	if(keyboard_check_released(global.keyPunch)||gamepad_button_check_released(global.gp_connected,gp_face3)){
		charging_kamehameha=false;
		charge_time=false;
		if(instance_exists(kamehameha_charge)&&kamehameha_charge!=-1){
			instance_destroy(kamehameha_charge)
		}
		if(image_index>=4&&!kamehameha_fired){
			sprite_set_speed(sprite_index,9,spritespeed_framespersecond);
		
		}
	}
	else if(charging_kamehameha&&charge_time){
		if(kamehameha_total_power<30){
			kamehameha_total_power+=.05*global.RelativeSpeed
			if(kamehameha_total_power>=20&&sprite_index!=spr_kaiokenKamehamehaGoku){
				sprite_index=spr_kaiokenKamehamehaGoku;
				sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
			}
		}
		else{
			charging_kamehameha=false;
		charge_time=false;
		if(sprite_index!=spr_ssjKamehamehaGoku){

				sprite_index=spr_ssjKamehamehaGoku;
		
		}
		if(image_index>=4&&!kamehameha_fired){
			sprite_set_speed(sprite_index,9,spritespeed_framespersecond);
		
		}
		}
	}
	if(image_index>4&&charging_kamehameha&&!charge_time){
		image_index=4;
		charge_time=true;
		kamehameha_charge=instance_create_layer(x-36*image_xscale,y-14,"Instances",obj_kamehameha_charging);
		kamehameha_charge.owner=id;
		kamehameha_charge.depth=depth-1;
	
		sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
	
	}
	if(image_index>=6&&!kamehameha_fired){
			kamehameha_fired=true;
			frames=200;
			image_index=6;
			if(instance_exists(kamehameha_charge)&&kamehameha_charge!=-1){
				instance_destroy(kamehameha_charge);

		}
			sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
			new_kamehameha=instance_create_layer(x+59*image_xscale,y-32,"Instances",obj_kamehameha);
			new_kamehameha.enemy=enemy;
			new_kamehameha.image_xscale=image_xscale;
			new_kamehameha.total_power=kamehameha_total_power;
			new_kamehameha.owner=id;
			new_kamehameha.depth=depth-1;
		}




	if(image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){
		alarm[9]=room_speed*3;
		image_index=image_number-1;
		sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		if(instance_exists(new_kamehameha)&&new_kamehameha!=-1){
			instance_destroy(new_kamehameha);
		}
		new_kamehameha=-1;
		attacking=false;
		kamehameha_fired=false;
		can_kame=false;
		alarm[3]=kame_cooldown;
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
