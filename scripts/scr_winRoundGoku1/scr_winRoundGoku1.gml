function scr_winRoundGoku1() {
	if(sprite_index!=spr_winRoundGoku1){
		sprite_index=spr_winRoundGoku1;
		image_index=0;
		if(bbox_bottom>obj_ground.y){
			while(bbox_bottom>obj_ground.y){
				y--;
			}
		}
		sprite_set_speed(sprite_index,10,spritespeed_framespersecond);
	}







	if(image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){
		image_index=image_number-2;
		sprite_set_speed(sprite_index,3,spritespeed_framespersecond);

	}


}
