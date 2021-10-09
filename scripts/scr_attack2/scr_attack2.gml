function scr_attack2() {

	if((keyboard_check_pressed(global.keyPunch)||gamepad_button_check_pressed(global.gp_connected,gp_face3))){
		combo_string="";
	
	
		for(var index=ds_list_size(combo_chain)-4;index<ds_list_size(combo_chain);index++){
			combo_string+=string(ds_list_find_value(combo_chain,index))+",";
		}
		if(combo_string=kamehameha_string&&can_kame){
			if(ki>33){
				ki-=33;
				state=PSTATE.KAMEHAMEHA;
			}
			else{
				combo_string="";
			}
		}
		else {
			combo_string="";
	
		for(var index=ds_list_size(combo_chain)-3;index<ds_list_size(combo_chain);index++){
			combo_string+=string(ds_list_find_value(combo_chain,index))+",";
		}
		if(combo_string=ki_blast_string&&can_shoot){
				if(ki>10){
					state=PSTATE.shoot_ONCE;
				}
			}
	
	
		else if(!jumping&&!flying){
		
			if(state=PSTATE.CROUCHING_IDLE||state=PSTATE.CROUCHING_BLOCKING){
				state=PSTATE.CROUCHING_PUNCH;
			
			}
			else if(((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))&&image_xscale=1)||((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&image_xscale=-1)){
				state=PSTATE.LIGHT_PUNCHING;
			
			}
			else if(((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))&&image_xscale=-1)||((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&image_xscale=1)){
			
			}
			else {
				state=PSTATE.UP_PUNCH_GROUND;
			
			}
		}
		else{
			if((keyboard_check(global.keyDown)||gamepad_button_check(global.gp_connected,gp_padd))){
				state=PSTATE.DOWN_PUNCH
			
			}
			else if(((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))&&image_xscale=1)||((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&image_xscale=-1)){
				state=PSTATE.SIDE_PUNCH_AIR;
		
			}
			else if((((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))&&image_xscale=-1)||((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&image_xscale=1))&&jumping){
				state=PSTATE.BACK_PUNCH_AIR;
			
			}
			else{
			
			}
		}
		ds_list_clear(combo_chain);
		}
	}
	else if((keyboard_check_pressed(global.keyKick)||gamepad_button_check_pressed(global.gp_connected,gp_face4))){
		if(!jumping&&!flying){
		
			if(state=PSTATE.CROUCHING_IDLE||state=PSTATE.CROUCHING_BLOCKING){
				state=PSTATE.CROUCHING_KICK;
			
			}
			else if(((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))&&image_xscale=1)||((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&image_xscale=-1)){
				state=PSTATE.LIGHT_KICKING;
			
			}
			else if(((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))&&image_xscale=-1)||((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&image_xscale=1)){

			
			}
			else{
				state=PSTATE.UP_KICK_GROUND
		
			}
		}
		else{
			if((keyboard_check(global.keyDown)||gamepad_button_check(global.gp_connected,gp_padd))){
				state=PSTATE.DOWN_KICK
			
			}
			else if(((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))&&image_xscale=1)||((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&image_xscale=-1)){
				state=PSTATE.SIDE_KICK_AIR;
			
			}
			else if((((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))&&image_xscale=-1)||((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&image_xscale=1))&&jumping){
				state=PSTATE.BACK_KICK_AIR;
			
			}
			else{
				state=PSTATE.UP_KICK_AIR;
			
			}
		}
		ds_list_clear(combo_chain);

	}
	else if(keyboard_check_pressed(global.KeySpecial)||(gamepad_button_check(global.gp_connected,gp_shoulderlb)&&gamepad_button_check_pressed(global.gp_connected,gp_shoulderrb))||(gamepad_button_check_pressed(global.gp_connected,gp_shoulderlb)&&gamepad_button_check(global.gp_connected,gp_shoulderrb))){
		if(!ULTIMATE2){
			state=PSTATE.ULTIMATE1;
			ULTIMATE2=true;
			alarm[6]=room_speed*.3;
		}
		else if(shoulders_fully_released){
			show_debug_message("running");
			if(Genkidama_charge>50){
				state=PSTATE.ULTIMATE2;
			}
		}
	}




}
