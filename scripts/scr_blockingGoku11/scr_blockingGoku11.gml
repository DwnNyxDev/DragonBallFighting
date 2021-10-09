function scr_blockingGoku11() {

	if(stamina<100&&out_of_combat){
		stamina+=.1*global.RelativeSpeed;
	}

	if(sprite_index!=spr_blockingGoku1){
		sprite_index=spr_blockingGoku1;
		image_index=0;
		can_parry=true;
		if(!go_dash){
			frames=irandom_range(60*lerp(2,1,stamina-25/75),120*lerp(2,1,stamina-25/75));
		}
		else{
			frames=irandom_range(6,16);
		}
		while(bbox_bottom<obj_ground.y){
				y++;
			}
		sprite_set_speed(sprite_index,20,spritespeed_framespersecond);
	}
	if(frames>0){
		frames-=global.RelativeSpeed;
	}

	if(image_xscale=1){
		if(keyboard_check(vk_f10)){
			blocking=false;
			state=ESTATE.MOVING_FORWARD
		
	
	
			
		
				//can_dash=false; //if they try to move one way, and then dash the other, they can't
		
	
		}
		else if(enemy_in_range||go_dash){
			xspeed=-2;
		
				//can_dash=false;

		}
	}
	else if(image_xscale=-1){
		if(enemy_in_range||go_dash){
			xspeed=2;
		
				//can_dash=false; //if they try to move one way, and then dash the other, they can't
		
	
		}
		else if(keyboard_check(vk_f10)){
			blocking=false;
			state=ESTATE.MOVING_FORWARD
		
		
	
				//can_dash=false;

		}
	}
	if(!go_dash&&stateTimer<=0){
		if(!enemy_in_range&&enemy.xspeed=0&&frames<=0){
				var rando=random_range(0,100);
				if(rando<lerp(50,100,general_state)){
					state=ESTATE.IDLE
				}
		}
		stateTimer=irandom_range(60,180);
	}
	else{
		if(frames=0){
			state=ESTATE.DASHING_BACK
			go_dash=false;
			stamina-=5;
			xspeed=dash_speed*(-1*image_xscale);
		}
	}


	if(image_xscale=-1){
		if(keyboard_check_pressed(vk_f10)&&dashing_check_button=global.keyRight&&stamina>5){
		

			xspeed=dash_speed
			blocking=false;
			state=ESTATE.DASHING_BACK;
			stamina-=5;

		
		}
	}	
	else if(image_xscale=1){
	
		if(keyboard_check_pressed(vk_f10)&&dashing_check_button=global.keyLeft&&stamina>5){

			blocking=false;
			state=ESTATE.DASHING_BACK;
			stamina-=5;
			xspeed=-1*dash_speed

		
		
		}
	}
	if (image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){
		can_parry=false;
		sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		image_index=image_number-1;
	
	}




}
