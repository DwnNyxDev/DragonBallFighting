function scr_IdleGoku2() {
	if(ki<100){
		ki+=.025*global.RelativeSpeed;
	}
	if(stamina<100&&out_of_combat){
		stamina+=.2*global.RelativeSpeed;
	}

	if(sprite_index!=spr_idleGoku){
		sprite_index=spr_idleGoku;
		sprite_set_speed(sprite_index,8,spritespeed_framespersecond);
		if(bbox_bottom<obj_ground.y){
			while(bbox_bottom<obj_ground.y){
				y++;
			}
		}
		image_index=0;
	}




}
