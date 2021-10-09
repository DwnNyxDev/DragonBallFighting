function scr_dashingGoku2() {
	/*
	if(image_xscale=1){
		xspeed=15;
	}
	else if(image_xscale=-1){
		xspeed=-15;
	}
	*/
	if(flying){
		if(sprite_index!=spr_dashingFlyingGoku){
			sprite_index=spr_dashingFlyingGoku;
			image_index=0;
			frames=20;
			sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		}
	}
	else{
		if(sprite_index!=spr_dashingGoku){
			sprite_index=spr_dashingGoku;
			image_index=0;
			frames=20;
			sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		}
	}
	frames-=global.RelativeSpeed;

	if(frames=0){
		frames=-1;
	
	
	}
	else if(frames<=5){
		image_index=image_number-1;
	}
	else if(frames<=15){
		image_index=image_number-2;
	}


}
