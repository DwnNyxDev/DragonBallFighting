function scr_dodge() {

	if((keyboard_check_pressed(global.keyDodge)||gamepad_button_check_pressed(global.gp_connected,gp_face2))&&stamina>33){
		stamina-=33;
		if(hitbox!=-1){
			instance_destroy(hitbox);
		}
		sprite_index=spr_dodge;
		alarm[4]=room_speed*.1;
		alarm_set(2,-1);
		if(!can_shoot){
			can_shoot=true;
		}

	
		if((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))){
			dodge_direction="right";
		
		}
		else if((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))){
			dodge_direction="left";
	
		}
		else if((keyboard_check(global.keyUp)||gamepad_button_check(global.gp_connected,gp_padu))){
			dodge_direction="up";
		
		}
		else if((keyboard_check(global.keyDown)||gamepad_button_check(global.gp_connected,gp_padd))){
			dodge_direction="down";
		
		}
		else{
			dodge_direction="none";
		
		}
		if(attacking){
		
			if(instance_exists(kamehameha_charge)&&kamehameha_charge!=-1){
			instance_destroy(kamehameha_charge);
		}
			if(((dodge_direction="right"&&image_xscale=1)||(dodge_direction="left"&&image_xscale=-1))&&(state=PSTATE.KAMEHAMEHA&&!kamehameha_fired)){
				instant_transmission_attack=true;
				saved_state=state;
				alarm[4]=room_speed*.02;
			}
			else{
				attacking=false;
				can_attack=true;
				alarm[4]=room_speed*.1;
			}
		}
		else{
			alarm[4]=room_speed*.1;
		}
	
		state=PSTATE.DODGING;
		yspeed=0;
		xspeed=0;

	
	
	}


}
