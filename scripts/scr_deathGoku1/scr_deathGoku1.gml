function scr_deathGoku1() {
	if(sprite_index!=spr_deathGoku1&&sprite_index!=spr_hitGokuGrounded1){
		sprite_index=spr_deathGoku1;
		image_index=0;
		if(bbox_bottom>obj_ground.y){
			while(bbox_bottom>obj_ground.y){
				y--;
			}
		}
		sprite_set_speed(sprite_index,10,spritespeed_framespersecond);
	}


	yspeed+=.2*global.RelativeSpeed;




	if(image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){
		image_index=image_number-1;
		sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
	}


}
