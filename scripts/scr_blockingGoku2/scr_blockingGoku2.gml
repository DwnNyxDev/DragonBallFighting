function scr_blockingGoku2() {

	if(stamina<100&&out_of_combat){
		stamina+=.1*global.RelativeSpeed;
	}


	if(sprite_index!=spr_blockingGoku){
		sprite_index=spr_blockingGoku;
		image_index=0;
		can_parry=true;
		while(bbox_bottom<obj_ground.y){
				y++;
			}
		sprite_set_speed(sprite_index,20,spritespeed_framespersecond);
	}




}
