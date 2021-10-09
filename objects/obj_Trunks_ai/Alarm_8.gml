/// @description Hit Recovery
// You can write your code in this editor
if(state=PSTATE.HIT){
		if(jumping){
	
	state=PSTATE.JUMPING
}
else if(!flying){

		if(keyboard_check(vk_f10)&&image_xscale=1){
			
			state=PSTATE.MOVING_FORWARD;
		}
		else if(keyboard_check(vk_f10)&&image_xscale=1){
			
			state=PSTATE.BLOCKING;
		}
		else if(keyboard_check(vk_f10)&&image_xscale=-1){
			state=PSTATE.BLOCKING;
		}
		else if(keyboard_check(vk_f10)&&image_xscale=-1){

			state=PSTATE.MOVING_FORWARD;
		}
		else{

			state=PSTATE.IDLE
		}
	
}
else if(flying) {
	
		if(keyboard_check(vk_f10)&&image_xscale=1){
		
			state=PSTATE.FLYING_MOVING_FORWARD;
		}
		else if(keyboard_check(vk_f10)&&image_xscale=1){
			
			state=PSTATE.FLYING_BLOCKING;
		}
		else if(keyboard_check(vk_f10)&&image_xscale=-1){
		
			state=PSTATE.FLYING_BLOCKING;
		}
		else if(keyboard_check(vk_f10)&&image_xscale=-1){
			
			state=PSTATE.FLYING_MOVING_FORWARD;
		}
		else{
			
			state=PSTATE.FLYING_IDLE
		}
	
}
}