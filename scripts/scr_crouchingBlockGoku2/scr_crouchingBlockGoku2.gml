function scr_crouchingBlockGoku2() {

	if(stamina<100&&out_of_combat){
		stamina+=.1*global.RelativeSpeed;
	}

	if(sprite_index!=spr_crouchingBlockGoku){
		sprite_index=spr_crouchingBlockGoku;
		image_index=0;
		can_parry=true;
		xspeed=0;
		if(bbox_bottom<obj_ground.y){
			while(bbox_bottom<obj_ground.y){
				y++;
			}
		}
		sprite_set_speed(sprite_index,15,spritespeed_framespersecond);
	}





}
