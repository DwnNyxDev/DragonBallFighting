function scr_movingForwardGoku2() {
	if(ki<100){
		ki+=.025*global.RelativeSpeed;
	}
	if(stamina<100&&out_of_combat){
		stamina+=.1*global.RelativeSpeed;
	}

	if(sprite_index!=spr_movingGoku){
		sprite_index=spr_movingGoku;
		image_index=0;
		while(bbox_bottom<obj_ground.y){
				y++;
			}
		sprite_set_speed(sprite_index,20,spritespeed_framespersecond);
	}




}
