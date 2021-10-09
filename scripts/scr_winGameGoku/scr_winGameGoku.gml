function scr_winGameGoku() {
	if(sprite_index!=spr_winGameGoku){
		sprite_index=spr_winGameGoku;
		image_index=0;
		if(bbox_bottom>obj_ground.y){
			while(bbox_bottom>obj_ground.y){
				y--;
			}
		}
		sprite_set_speed(sprite_index,10,spritespeed_framespersecond);
	}







	if(image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){
		image_index=image_number-1;
		sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
	}


}
