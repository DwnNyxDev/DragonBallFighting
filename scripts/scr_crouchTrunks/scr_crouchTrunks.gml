function scr_crouchTrunks() {
	if((keyboard_check(global.keyDown)||gamepad_button_check(global.gp_connected,gp_padd))||gamepad_button_check(global.gp_connected,gp_padd)){
		if(!(keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))&&!(keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&!gamepad_button_check(global.gp_connected,gp_padr)&&!gamepad_button_check(global.gp_connected,gp_padl)){
			state=PSTATE.CROUCHING_IDLE;
		}
		else if((((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))||gamepad_button_check(global.gp_connected,gp_padl))&&image_xscale=1)||(((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))||gamepad_button_check(global.gp_connected,gp_padr))&&image_xscale=-1)){
			state=PSTATE.CROUCHING_BLOCKING;
		}
		else{
			state=PSTATE.CROUCHING_IDLE;
		}
	}


}
