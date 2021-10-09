function scr_Vegito_fusion() {
	if(sprite_index!=spr_Vegito_fusion){
		sprite_index=spr_Vegito_fusion;
		sprite_set_speed(sprite_index,8,spritespeed_framespersecond);
		image_index=0;
	}
	if (image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){
		alarm[0]=room_speed*2;
		image_index=image_number-1;
		sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
	}


}
