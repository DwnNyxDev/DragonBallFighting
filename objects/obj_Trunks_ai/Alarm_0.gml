/// @description timer for dashing 
// You can write your code in this editor

if(dashing_check_button!=vk_nokey){
	dashing_check_button=vk_nokey;
	if(!attacking&&state!=PSTATE.DASHING&&state!=PSTATE.DASHING_BACK){
		if(!jumping){
			if(!keyboard_check(vk_f10)&&!keyboard_check(vk_f10)){
				if(state=PSTATE.MOVING_FORWARD||state=PSTATE.BLOCKING){
					state=PSTATE.IDLE
				}
				else if(state=PSTATE.FLYING_MOVING_FORWARD||state=PSTATE.FLYING_BLOCKING){
					state=PSTATE.FLYING_IDLE;
				}	
			}
		}
		else{
			state=PSTATE.JUMPING;
		}
	}
}