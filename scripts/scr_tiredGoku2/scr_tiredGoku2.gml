function scr_tiredGoku2() {
	if(sprite_index!=spr_tiredGoku){
		sprite_index=spr_tiredGoku;
		image_index=0;
		sprite_set_speed(sprite_index,8,spritespeed_framespersecond);
		ki=0;
		xspeed=0;
		yspeed=0;
		attacking=false;
		can_attack=true;
		//dashing_check_button=vk_nokey;
		alarm_set(2,-1);
		alarm_set(1,-1);
		alarm_set(3,-1);
		alarm_set(4,-1);
		if(instance_exists(new_kamehameha)&&new_kamehameha!=-1){
			instance_destroy(new_kamehameha);
		}
		if(instance_exists(kamehameha_charge)&&kamehameha_charge!=-1){
			instance_destroy(kamehameha_charge);
		}
		if(!tired){
			alarm[7]=room_speed*4;
			tired=true;
		}
	}



	if(flying||jumping){
		yspeed+=.2;
	}



}
