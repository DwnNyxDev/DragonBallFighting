function scr_jump2() {

	if(keyboard_check_pressed(global.keyJump)||(gamepad_button_check_pressed(global.gp_connected,gp_face1)&&!gamepad_button_check(global.gp_connected,gp_shoulderlb))){
		state=PSTATE.JUMPING;
		yspeed=-7.5;
		jumping=true;
	
	
	
		can_dash=false;
		going_forward=false;
	
	
	}


}
