function scr_dashingTrunks1() {
	/*
	if(image_xscale=1){
		xspeed=15;
	}
	else if(image_xscale=-1){
		xspeed=-15;
	}
	*/
	if(flying||jumping){
		if(sprite_index!=spr_dashingFlyingTrunks1){
			sprite_index=spr_dashingFlyingTrunks1;
			image_index=0;
			frames=20;
			sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		}
	}
	else{
		if(sprite_index!=spr_dashingTrunks){
			sprite_index=spr_dashingTrunks;
			image_index=0;
			frames=20;
			sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		}
	}
	frames-=global.RelativeSpeed;

	if(frames=0){
		frames=-1;
		if(!flying){
			state=ESTATE.IDLE;
		}
		else{
			state=ESTATE.FLYING_IDLE
		}
		
	
	}
	else if(frames<=5){
		image_index=image_number-1;
	}
	else if(frames<=15){
		image_index=image_number-2;
	}


}
