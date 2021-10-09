function scr_crouchingBlockTrunks1() {

	if(stamina<max_stamina&&out_of_combat&&!vampire_mode){
		stamina+=.075*global.RelativeSpeed;
	}

	if(sprite_index!=spr_crouchingBlockTrunks1){
		sprite_index=spr_crouchingBlockTrunks1;
		image_index=0;
		can_parry=true;
		xspeed=0;
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


	if (image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){
		sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		image_index=image_number-1;
		can_parry=false;
	}




}
