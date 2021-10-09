function scr_crouchingIdleGoku2() {
	if(ki<100){
		ki+=.025*global.RelativeSpeed;
	}
	if(stamina<100&&out_of_combat){
		stamina+=.2*global.RelativeSpeed;
	}

	if(sprite_index!=spr_crouchingGoku){
		sprite_index=spr_crouchingGoku;
		xspeed=0;
		if(bbox_bottom<obj_ground.y){
			while(bbox_bottom<obj_ground.y){
				y++;
			}
		}
		sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		image_index=0;
	}




}
