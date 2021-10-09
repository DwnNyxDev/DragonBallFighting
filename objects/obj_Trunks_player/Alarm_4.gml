/// @description dodging alarm
// You can write your code in this editor
if(image_alpha=1){
	image_alpha=0;
	if(dodge_direction="right"){
		if(instant_transmission_attack){
			while(bbox_left<=enemy.bbox_right){
				x+=1;
			}

			image_xscale=-1;
			ds_list_clear(ki_blast_combo);
			ds_list_add(ki_blast_combo,global.keyDown);
			ds_list_add(ki_blast_combo,global.keyLeft);
			ds_list_add(ki_blast_combo,global.keyPunch);
			ki_blast_string="";
			for(var index=0;index<ds_list_size(ki_blast_combo);index++){
				ki_blast_string+=string(ds_list_find_value(ki_blast_combo,index))+",";
			}
			ds_list_clear(kamehameha_combo);
			ds_list_add(kamehameha_combo,global.keyRight);
			ds_list_add(kamehameha_combo,global.keyDown);
			ds_list_add(kamehameha_combo,global.keyLeft);
			ds_list_add(kamehameha_combo,global.keyPunch);
			kamehameha_string="";
			for(var index=0;index<ds_list_size(kamehameha_combo);index++){
				kamehameha_string+=string(ds_list_find_value(kamehameha_combo,index))+",";
			}
			y=enemy.y;
			if(enemy.jumping||enemy.flying){
				flying=true;
				jumping=false;
			}
			else{
				flying=false;
				jumping=false;
			}
			if(bbox_right>room_width){
				while(bbox_right>room_width){
					x-=1;
				}
			}
			if(bbox_bottom>obj_ground.y){
				while(bbox_bottom>obj_ground.y){
					y--;
				}
			}
		}
		else{
			if(bbox_right+200>room_width){
				while(bbox_right+1<room_width){
					x+=1;
				}
			}
			else{
				x+=200;
			}
		}
	}
	else if(dodge_direction="left"){
		if(instant_transmission_attack){
			while(bbox_right>=enemy.bbox_left){
				x-=1;
			}

			image_xscale=1;
			ds_list_clear(ki_blast_combo);
			ds_list_add(ki_blast_combo,global.keyDown);
			ds_list_add(ki_blast_combo,global.keyRight);
			ds_list_add(ki_blast_combo,global.keyPunch);
			ki_blast_string="";
			for(var index=0;index<ds_list_size(ki_blast_combo);index++){
				ki_blast_string+=string(ds_list_find_value(ki_blast_combo,index))+",";
			}
			ds_list_clear(kamehameha_combo);
			ds_list_add(kamehameha_combo,global.keyLeft);
			ds_list_add(kamehameha_combo,global.keyDown);
			ds_list_add(kamehameha_combo,global.keyRight);
			ds_list_add(kamehameha_combo,global.keyPunch);
			kamehameha_string="";
			for(var index=0;index<ds_list_size(kamehameha_combo);index++){
				kamehameha_string+=string(ds_list_find_value(kamehameha_combo,index))+",";
			}
			y=enemy.y;
			if(enemy.jumping||enemy.flying){
				flying=true;
				jumping=false;
			}
			else{
				flying=false;
				jumping=false;
			}
			if(bbox_left<0){
				while(bbox_left<0){
					x+=1;
				}
			}
			if(bbox_bottom>obj_ground.y){
				while(bbox_bottom>obj_ground.y){
					y--;
				}
			}
		}
		else{
			if(bbox_left-200<0){
				while(bbox_left-1>0){
					x-=1;
				}
			}
			else{
				x-=200;
			}
		}
	}
	else if(dodge_direction="up"){
		if(bbox_top-200<41){
			while(bbox_top-1>41){
				y-=1;
			}
			if(!flying&&!jumping){
				jumping=true;
			}
		}
		else{
			y-=200;
			if(!flying&&!jumping){
				jumping=true;
			}
		}
	}
	else if(dodge_direction="down"){
		if(bbox_bottom+200>obj_ground.y){
			while(bbox_bottom+1<obj_ground.y){
				y+=1;
			}
			flying=false;
			jumping=false;
		}
		else{
			y+=200;
			
		}
	}
	else if(dodge_direction="up_left"){
		if(bbox_top-200<41){
			while(bbox_top-1>41){
				y-=1;
			}
			if(!flying&&!jumping){
				jumping=true;
			}
		}
		else{
			y-=200;
			if(!flying&&!jumping){
				jumping=true;
			}
		}
		if(bbox_left-200<0){
			while(bbox_left-1>0){
				x-=1;
			}
		}
		else{
			x-=200;
		}
	}
	else if(dodge_direction="up_right"){
		if(bbox_top-200<41){
			while(bbox_top-1>41){
				y-=1;
			}
			if(!flying&&!jumping){
				jumping=true;
			}
		}
		else{
			y-=200;
			if(!flying&&!jumping){
				jumping=true;
			}
		}
		if(bbox_right+200>room_width){
			while(bbox_right+1<room_width){
				x+=1;
			}
		}
		else{
			x+=200;
		}
	}
	else if(dodge_direction="down_left"){
		if(bbox_bottom+200>obj_ground.y){
			while(bbox_bottom+1<obj_ground.y){
				y+=1;
			}
			flying=false;
			jumping=false;
		}
		else{
			y+=200;
			
		}
		if(bbox_left-200<0){
			while(bbox_left-1>0){
				x-=1;
			}
		}
		else{
			x-=200;
		}
	}
	else if(dodge_direction="down_right"){
		if(bbox_bottom+200>obj_ground.y){
			while(bbox_bottom+1<obj_ground.y){
				y+=1;
			}
			flying=false;
			jumping=false;
		}
		else{
			y+=200;
			
		}
		if(bbox_right+200>room_width){
			while(bbox_right+1<room_width){
				x+=1;
			}
		}
		else{
			x+=200;
		}
	}
	if(instant_transmission_attack){
		alarm[4]=room_speed*.02;
	}
	else{
		alarm[4]=room_speed*.1;
	}
}
else{
	image_alpha=1;
	active_hurtbox=true;
	if(!attacking){
			can_attack=true;
	

	
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
		else{
			state=saved_state;
			if(state=PSTATE.KAMEHAMEHA){
				sprite_index=spr_normalKamehamehaGoku;
				charging_kamehameha=true;
				image_index=4;
				charge_time=true;
				new_kamehameha_charge=instance_create_layer(x-36*image_xscale,y-14,"Instances",obj_kamehameha_charging);
				new_kamehameha_charge.owner=id;
				kamehameha_charge=new_kamehameha_charge;
				sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
			}
		}

}