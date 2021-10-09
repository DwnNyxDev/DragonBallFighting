function scr_crouchingKickTrunks1() {
	if(sprite_index!=spr_crouchKickTrunks1){
		sprite_index=spr_crouchKickTrunks1;
		image_index=0;
		attacking=true;
		sprite_set_speed(sprite_index,8,spritespeed_framespersecond);
	}

	if(image_index>2&&image_index<3&&hitbox=-1){
		hitbox=hitbox_create(image_xscale,1,0*image_xscale,0,15*(1/global.RelativeSpeed),2*image_xscale,0,25,6,7);
		hitbox.sprite_index=spr_crouchKickTrunks_hitbox;
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
