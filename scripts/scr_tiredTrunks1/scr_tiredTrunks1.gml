function scr_tiredTrunks1() {
	if(sprite_index!=spr_tiredTrunks1){
		sprite_index=spr_tiredTrunks1;
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
		if(instance_exists(new_burningAttack)&&new_burningAttack!=-1&&!new_burningAttack.explode){
			instance_destroy(new_burningAttack);
			burningAttack_created=false;
			time_to_explode=false;
		}
		burningAttack_created=false;
		if(!tired){
			alarm[7]=room_speed*4;
			tired=true;
		}
	}



	if(flying||jumping){
		yspeed+=.2;
	}



}
