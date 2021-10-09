function scr_upKickGroundTrunks1() {
	if(sprite_index!=spr_upKickGroundTrunks1){
		sprite_index=spr_upKickGroundTrunks1;
		image_index=0;
		attacking=true;
		sprite_set_speed(sprite_index,6,spritespeed_framespersecond);
	}

	if(image_index>2&&image_index<3&&hitbox=-1){
		hitbox=hitbox_create(image_xscale,1,0*image_xscale,0,8*(1/global.RelativeSpeed),1.5*image_xscale,-5,50,7,8);
		hitbox.sprite_index=spr_upKickGroundTrunks_hitbox;
	}



	if(jumping){
		yspeed+=.2;
		if(xspeed!=0){
			xspeed-=sign(xspeed)/25;
		}
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
	

			else if(flying) {
	

					state=PSTATE.FLYING_IDLE
			}
		}
	}


}
