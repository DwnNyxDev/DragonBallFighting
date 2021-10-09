function scr_groundedTrunks1() {
	if(sprite_index!=spr_hitTrunksGroundedRecovery1){
		sprite_index=spr_hitTrunksGroundedRecovery1;
		image_index=0;
		sprite_set_speed(sprite_index,12,spritespeed_framespersecond);
	}






	if(image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){
		image_index=image_number-1;
		sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
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
