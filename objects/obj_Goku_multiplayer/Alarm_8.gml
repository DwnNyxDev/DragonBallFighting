/// @description Hit Recovery
// You can write your code in this editor
if(state=PSTATE.HIT){
		if(jumping){
	sprite_index=spr_jumpingGoku;
	state=PSTATE.JUMPING
}
else if(!flying){

		if((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))&&image_xscale=1){
			sprite_index=spr_movingGoku;
			state=PSTATE.MOVING_FORWARD;
		}
		else if((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&image_xscale=1){
			sprite_index=spr_blockingGoku;
			state=PSTATE.BLOCKING;
		}
		else if((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))&&image_xscale=-1){
			sprite_index=spr_blockingGoku;
			state=PSTATE.BLOCKING;
		}
		else if((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&image_xscale=-1){
			sprite_index=spr_movingGoku;
			state=PSTATE.MOVING_FORWARD;
		}
		else{
			sprite_index=spr_idleGoku
			state=PSTATE.IDLE
		}
	
}
else if(flying) {
	
		if((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))&&image_xscale=1){
			sprite_index=spr_movingGoku;
			state=PSTATE.FLYING_MOVING_FORWARD;
		}
		else if((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&image_xscale=1){
			sprite_index=spr_blockingGoku;
			state=PSTATE.FLYING_BLOCKING;
		}
		else if((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))&&image_xscale=-1){
			sprite_index=spr_blockingGoku;
			state=PSTATE.FLYING_BLOCKING;
		}
		else if((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&image_xscale=-1){
			sprite_index=spr_movingGoku;
			state=PSTATE.FLYING_MOVING_FORWARD;
		}
		else{
			sprite_index=spr_flyingGoku
			state=PSTATE.FLYING_IDLE
		}
	
}
}