function scr_shootOnceTrunks() {
	if(stamina<max_stamina&&out_of_combat&&!vampire_mode){
		stamina+=.15*global.RelativeSpeed;
	}
	if(sprite_index!=spr_shootOnceTrunks){
		sprite_index=spr_shootOnceTrunks;
		image_index=0;
		attacking=true;
		shoot_multiple=true;
		if(!jumping&&!flying){
			while(bbox_bottom<obj_ground.y){
				y++;
			}
		}
		sprite_set_speed(sprite_index,10,spritespeed_framespersecond);
	}


	if(image_index>1&&image_index<2&&!kiBlast_made){
		new_kiBlast=instance_create_layer(x+62*image_xscale,y-42,"Instances",obj_stunBlast);
		new_kiBlast.image_xscale=image_xscale;
		new_kiBlast.enemy=enemy;
		kiBlast_made=true;
		ki-=15;
	}

	if(jumping){
		yspeed+=.2;
		if(xspeed!=0){
			xspeed-=sign(xspeed)/25;
		}
	}
	else{
		//slow_down moving up and down
		if(flying){
			if((keyboard_check(global.keyUp)||gamepad_button_check(global.gp_connected,gp_padu))){
				yspeed=-2;
			}
			else if((keyboard_check(global.keyDown)||gamepad_button_check(global.gp_connected,gp_padd))){
				yspeed=2;
			}
			else{
				if(yspeed!=0){
					if(yspeed>=1||yspeed<=-1){
						yspeed-=sign(yspeed);
					}
					else{
						if(yspeed>0){
							yspeed-=sign(yspeed)*yspeed;
						}
						else{
							yspeed+=sign(yspeed)*yspeed;
						}
					}
				}
			}
		}
		//slow_down moving left and right
		if((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))){
			xspeed=2;
		}
		else if((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))){
			xspeed=-2;
		}
		else{
			if(xspeed!=0){
				if(xspeed>=1||xspeed<=-1){
					xspeed-=sign(xspeed);
				}
				else{
					if(xspeed>0){
						xspeed-=sign(xspeed)*xspeed
					}
					else{
						xspeed+=sign(xspeed)*xspeed
					}
				}
			}
		}
	}
	if(keyboard_check_released(global.keyPunch)||gamepad_button_check_released(global.gp_connected,gp_face3)){
		shoot_multiple=false;
	}
	if(image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){
		alarm[9]=room_speed*3;
		image_index=image_number-1;
		sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		attacking=false;
		kiBlast_made=false;
	
		if(state!=PSTATE.TIRED){
				can_shoot=false;
				alarm[1]=kiBlast_cooldown;
				if(jumping){

					state=PSTATE.JUMPING
				}
				else if(!flying){
				if(!(keyboard_check(global.keyDown)||gamepad_button_check(global.gp_connected,gp_padd))){
					if((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))&&image_xscale=1){

						state=PSTATE.MOVING_FORWARD;
					}
					else if((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&image_xscale=1){

						state=PSTATE.BLOCKING;
					}
					else if((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))&&image_xscale=-1){

						state=PSTATE.BLOCKING;
					}
					else if((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&image_xscale=-1){
		
						state=PSTATE.MOVING_FORWARD;
					}
					else{
			
						state=PSTATE.IDLE
					}
				}
				else{
					if((image_xscale=1&&(keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl)))||(image_xscale=-1&&(keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr)))){
						state=PSTATE.CROUCHING_BLOCKING;
					}
					else{
						state=PSTATE.CROUCHING_IDLE;
					}
				}
	
		}
				else if(flying) {
					if((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))&&image_xscale=1){

						state=PSTATE.FLYING_MOVING_FORWARD;
					}
					else if((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&image_xscale=1){

						state=PSTATE.FLYING_BLOCKING;
					}
					else if((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))&&image_xscale=-1){

						state=PSTATE.FLYING_BLOCKING;
					}
					else if((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&image_xscale=-1){

						state=PSTATE.FLYING_MOVING_FORWARD;
					}
					else{

						state=PSTATE.FLYING_IDLE
					}
			
				}
		}
	}


}
