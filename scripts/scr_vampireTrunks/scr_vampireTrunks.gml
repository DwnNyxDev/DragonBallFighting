function scr_vampireTrunks() {

	if(keyboard_check_pressed(global.keyDodge)||gamepad_button_check_pressed(global.gp_connected,gp_face2)&&stamina>33){
		if(!vampire_mode){
			vampire_mode=true
		}
		else{
			vampire_mode=false
		}
	
	}


}
