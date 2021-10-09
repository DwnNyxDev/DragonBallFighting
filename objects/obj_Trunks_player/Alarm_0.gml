/// @description timer for dashing
// You can write your code in this editor

if(dashing_check_button!=vk_nokey){
	dashing_check_button=vk_nokey;
	if(!attacking&&state!=PSTATE.DASHING&&state!=PSTATE.DASHING_BACK){
		if(!jumping){
			if(!(keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&!(keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))&&!gamepad_button_check(global.gp_connected,gp_padr)&&!gamepad_button_check(global.gp_connected,gp_padl)){
				if(state=PSTATE.MOVING_FORWARD||state=PSTATE.BLOCKING){
					sprite_index=spr_idleGoku
					state=PSTATE.IDLE
				}
				else if(state=PSTATE.FLYING_MOVING_FORWARD||state=PSTATE.FLYING_BLOCKING){
					sprite_index=spr_flyingGoku;
					state=PSTATE.FLYING_IDLE;
				}	
			}
		}
		else{
			sprite_index=spr_jumpingGoku;
			state=PSTATE.JUMPING;
		}
	}
}