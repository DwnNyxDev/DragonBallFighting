function scr_lightPunchGoku1() {
	if(sprite_index!=spr_lightPunchGoku1){
		sprite_index=spr_lightPunchGoku1;
		image_index=0;
		attacking=true;
		sprite_set_speed(sprite_index,9,spritespeed_framespersecond);
	}

	if(image_index>1&&image_index<2&&hitbox=-1){
		hitbox=hitbox_create(image_xscale,1,0*image_xscale,0,10*(1/global.RelativeSpeed),3*image_xscale,0,30,4,2);
		hitbox.sprite_index=spr_lightPunch_hitbox;
	}

	if(image_index>2&&keyboard_check_pressed(vk_f10)&&!keyboard_check(vk_f10)){
		if(hitbox!=-1){
			instance_destroy(hitbox);
			hitbox=-1;
		}
		state=ESTATE.LIGHT_KICKING
	}


	if(jumping){
		yspeed+=.2;
		if(xspeed!=0){
			xspeed-=sign(xspeed)/25;
		}
	}
	else{
		if(x<enemy.bbox_left&&image_xscale=1){
			xspeed=2;
		}
		else if(x>enemy.bbox_right&&image_xscale=-1){
			xspeed=-2;
		}
		else{
			if(xspeed!=0){
				if(xspeed>=1||xspeed<=-1){
					xspeed-=sign(xspeed);
				}
				else{
					if(xspeed>0){
						xspeed-=sign(xspeed)*xspeed
					}
					else{
						xspeed+=sign(xspeed)*xspeed
					}
				}
			}
		}
	}

	if(image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){
		alarm[9]=room_speed*3;
		image_index=image_number-1;
		var rando=random_range(0,100);
		if(rando<lerp(0,30,(ki-15)/85)&&can_shoot){
			state=ESTATE.shoot_ONCE
		}
		stateTimer=irandom_range(0,90);
		sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		attacking=false;
		if(state!=ESTATE.TIRED){
			if(jumping){

				state=ESTATE.JUMPING
			}
			else if(!flying){
			if(!keyboard_check(vk_f10)){
				if(keyboard_check(vk_f10)&&image_xscale=1){

					state=ESTATE.MOVING_FORWARD;
				}
				else if(keyboard_check(vk_f10)&&image_xscale=1){

					state=ESTATE.BLOCKING;
				}
				else if(keyboard_check(vk_f10)&&image_xscale=-1){

					state=ESTATE.BLOCKING;
				}
				else if(keyboard_check(vk_f10)&&image_xscale=-1){
		
					state=ESTATE.MOVING_FORWARD;
				}
				else{
			
					state=ESTATE.IDLE
				}
			}
			else{
				if((image_xscale=1&&keyboard_check(vk_f10))||(image_xscale=-1&&keyboard_check(vk_f10))){
					state=ESTATE.CROUCHING_BLOCKING;
				}
				else{
					state=ESTATE.CROUCHING_IDLE;
				}
			}
	
	}
			else if(flying) {
				if(keyboard_check(vk_f10)&&image_xscale=1){

					state=ESTATE.FLYING_MOVING_FORWARD;
				}
				else if(keyboard_check(vk_f10)&&image_xscale=1){

					state=ESTATE.FLYING_BLOCKING;
				}
				else if(keyboard_check(vk_f10)&&image_xscale=-1){

					state=ESTATE.FLYING_BLOCKING;
				}
				else if(keyboard_check(vk_f10)&&image_xscale=-1){

					state=ESTATE.FLYING_MOVING_FORWARD;
				}
				else{

					state=ESTATE.FLYING_IDLE
				}
			
			}
		}
	}


}
