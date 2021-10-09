function scr_flyingBlocking1() {

		ki-=.025*global.RelativeSpeed;
		if(stamina<100&&out_of_combat){
		stamina+=.1*global.RelativeSpeed;
	}
	if(sprite_index!=spr_blockingGoku1){
		sprite_index=spr_blockingGoku1;
		image_index=0;
		sprite_set_speed(sprite_index,20,spritespeed_framespersecond);
		can_parry=true;
		if(!go_dash){
			frames=irandom_range(60*lerp(2,1,stamina-25/75),120*lerp(2,1,stamina-25/75));
		}
		else{
			frames=irandom_range(6,16);
		}
	}

	if(frames>0){
		frames-=global.RelativeSpeed;
	}
	if(image_xscale=1){
		if(enemy_in_range){
			xspeed=-2;
		
				//can_dash=false; //if they try to move one way, and then dash the other, they can't
		
	
			if(!enemy_in_Yrange){
					if(yspeed!=0){
					if(yspeed>=1||yspeed<=-1){
						yspeed-=sign(yspeed);
					}
					else{
						if(yspeed>0){
							yspeed-=sign(yspeed)*yspeed;
						}
						else{
							yspeed+=sign(yspeed)*yspeed;
						}
					}
				}
			}
		}
		else if(keyboard_check(vk_f10)){
			blocking=false;
			state=ESTATE.FLYING_MOVING_FORWARD;

		}
	}
	else if(image_xscale=-1){
		if(enemy_in_range){
			xspeed=2;
		
				//can_dash=false; //if they try to move one way, and then dash the other, they can't
		
	
			if(!enemy_in_Yrange){
					if(yspeed!=0){
					if(yspeed>=1||yspeed<=-1){
						yspeed-=sign(yspeed);
					}
					else{
						if(yspeed>0){
							yspeed-=sign(yspeed)*yspeed;
						}
						else{
							yspeed+=sign(yspeed)*yspeed;
						}
					}
				}
			}
		}
		else if(keyboard_check(vk_f10)){
			blocking=false;
			state=ESTATE.FLYING_MOVING_FORWARD;

		}
	}
	if(enemy_in_Yrange&&enemy.y>y){
			yspeed=-4;
			if(!enemy_in_range){
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
	else if(enemy_in_Yrange&&enemy.y<y){
		yspeed=4;
		if(!enemy_in_range){
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
	if(!go_dash&&stateTimer<=0){
		if(!enemy_in_range&&enemy.xspeed=0&&frames<=0){
				var rando=random_range(0,100);
				if(rando<25){
					state=ESTATE.FLYING_IDLE
				}
		}
		stateTimer=irandom_range(120,240);
	}
	else{
		if(frames=0){
			state=ESTATE.DASHING_BACK
			go_dash=false;
			stamina-=5;
			xspeed=dash_speed*(-1*image_xscale);
		}
	}

	if(image_xscale=1){
		if(keyboard_check_pressed(vk_f10)&&dashing_check_button=vk_f10&&stamina>5){


			xspeed=-1*dash_speed;
			blocking=false;
			state=ESTATE.DASHING_BACK;
			stamina-=5;

		}
	}
	else if(image_xscale=-1){
		if(keyboard_check_pressed(vk_f10)&&dashing_check_button=vk_f10&&stamina>5){


			xspeed=dash_speed;
			blocking=false;
			state=ESTATE.DASHING_BACK;
			stamina-=5;

		}
	}

	if (image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){
		image_index=image_number-1;
		sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
	}


}
