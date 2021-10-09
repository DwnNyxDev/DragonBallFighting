/// @description Tired alarm
// You can write your code in this editor
new_energy_release=instance_create_layer(x,y,"Instances",obj_energy_released);
new_energy_release.owner=id;
ki=30;
tired=false;
	if(instance_exists(obj_sleepingZs)){
		instance_destroy(obj_sleepingZs);
	}

		if(jumping){
			sprite_index=spr_jumpingGoku;
			state=PSTATE.JUMPING
		}
		else if(!flying){
		if(!keyboard_check(vk_f10)){
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
		else{
			if((image_xscale=1&&keyboard_check(vk_f10))||(image_xscale=-1&&keyboard_check(vk_f10))){
				state=PSTATE.CROUCHING_BLOCKING;
			}
			else{
				state=PSTATE.CROUCHING_IDLE;
			}
		}
	
}
		else if(flying) {
		
			if(keyboard_check(vk_f10)&&image_xscale=1){
				sprite_index=spr_movingGoku;
				state=PSTATE.FLYING_MOVING_FORWARD;
			}
			else if(keyboard_check(vk_f10)&&image_xscale=1){
				sprite_index=spr_blockingGoku;
				state=PSTATE.FLYING_BLOCKING;
			}
			else if(keyboard_check(vk_f10)&&image_xscale=-1){
				sprite_index=spr_blockingGoku;
				state=PSTATE.FLYING_BLOCKING;
			}
			else if(keyboard_check(vk_f10)&&image_xscale=-1){
				sprite_index=spr_movingGoku;
				state=PSTATE.FLYING_MOVING_FORWARD;
			}
			else{
				sprite_index=spr_flyingGoku
				state=PSTATE.FLYING_IDLE
			}
		}	