function scr_charge() {

	if(keyboard_check(global.keyCharge)||(gamepad_button_check(global.gp_connected,gp_shoulderlb)&&gamepad_button_check_pressed(global.gp_connected,gp_face1))){
	
	
		state=PSTATE.CHARGING;

		yspeed=0;
		xspeed=0;
	

	
	
	}


}
