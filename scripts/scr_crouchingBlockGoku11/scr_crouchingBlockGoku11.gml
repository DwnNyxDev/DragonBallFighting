function scr_crouchingBlockGoku11() {

	if(stamina<100&&out_of_combat){
		stamina+=.1*global.RelativeSpeed;
	}

	if(sprite_index!=spr_crouchingBlockGoku1){
		sprite_index=spr_crouchingBlockGoku1;
		image_index=0;
		xspeed=0;
		can_parry=true;
		frames=irandom_range(60,120);
		if(bbox_bottom<obj_ground.y){
			while(bbox_bottom<obj_ground.y){
				y++;
			}
		}
		sprite_set_speed(sprite_index,15,spritespeed_framespersecond);
	}

	if(frames>0){
		frames-=global.RelativeSpeed;
	}
	if(!enemy_in_range||frames=0){
	
				stateTimer=irandom_range(30,150);
				state=ESTATE.CROUCHING_IDLE;
	}

	if(keyboard_check_released(vk_f10)){
		if(keyboard_check(vk_f10)&&image_xscale=1){
				blocking=false;
				state=ESTATE.MOVING_FORWARD;
			}
			else if(keyboard_check(vk_f10)&&image_xscale=1){

				state=ESTATE.BLOCKING;
			}
			else if(keyboard_check(vk_f10)&&image_xscale=-1){

				state=ESTATE.BLOCKING;
			}
			else if(keyboard_check(vk_f10)&&image_xscale=-1){
				blocking=false;
				state=ESTATE.MOVING_FORWARD;
			}
			else{
				blocking=false;
				state=ESTATE.IDLE
			}
			while(bbox_bottom>obj_ground.y){
			y--;
		}
	}
	else if(keyboard_check_released(vk_f10)){
		blocking=false;
		state=ESTATE.CROUCHING_IDLE;
	}
	if (image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){
		sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		image_index=image_number-1;
		can_parry=false;
	}




}
