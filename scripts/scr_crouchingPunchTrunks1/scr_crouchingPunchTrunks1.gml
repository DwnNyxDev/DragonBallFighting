function scr_crouchingPunchTrunks1() {
	if(sprite_index!=spr_crouchPunchTrunks1){
		sprite_index=spr_crouchPunchTrunks1;
		image_index=0;
		attacking=true;
		sprite_set_speed(sprite_index,9,spritespeed_framespersecond);
	}

	if(image_index>1&&image_index<2&&hitbox=-1){
		hitbox=hitbox_create(image_xscale,1,0*image_xscale,0,10*(1/global.RelativeSpeed),2*image_xscale,0,15,3,3);
		hitbox.sprite_index=spr_crouchPunchTrunks_hitbox;
	}




	if(image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){
		alarm[9]=room_speed*3;
		image_index=image_number-1;
		sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		attacking=false;
		if(state!=PSTATE.TIRED){
					state=PSTATE.CROUCHING_IDLE
			}

		
	
	}


}
