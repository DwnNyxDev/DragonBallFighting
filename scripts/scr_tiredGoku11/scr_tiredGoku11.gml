function scr_tiredGoku11() {
	if(sprite_index!=spr_tiredGoku1){
		sprite_index=spr_tiredGoku1;
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
		if(!tired){
			alarm[7]=room_speed*4;
			tired=true;
		}
	}



	if(flying||jumping){
		yspeed+=.2;
	}



}
