function scr_lightKickTrunks1() {
	if(sprite_index!=spr_lightKickTrunks1){
		sprite_index=spr_lightKickTrunks1;
		image_index=0;
		attacking=true;
		sprite_set_speed(sprite_index,8,spritespeed_framespersecond);
	}

	if(image_index>1&&image_index<2&&hitbox=-1){
		hitbox=hitbox_create(image_xscale,1,0*image_xscale,0,10*(1/global.RelativeSpeed),3*image_xscale,0,50,8,6);
		hitbox.sprite_index=spr_lightKickTrunks_hitbox;
	}

	if(jumping){
		yspeed+=.2;
		if(xspeed!=0){
			xspeed-=sign(xspeed)/25;
		}
	}
	else{
		if((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))){
			xspeed=1.5;
		}
		else if((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))){
			xspeed=-1.5;
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
	
			
					state=PSTATE.IDLE
			
			}
			else if(crouching){
		
					state=PSTATE.CROUCHING_IDLE;
		
	
	}
			else if(flying) {
			

					state=PSTATE.FLYING_IDLE
				}
			
		}
	}


}
