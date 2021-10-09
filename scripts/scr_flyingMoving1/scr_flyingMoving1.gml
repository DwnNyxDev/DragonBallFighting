function scr_flyingMoving1() {

		ki-=.025*global.RelativeSpeed;
		if(stamina<100&&out_of_combat){
		stamina+=.1*global.RelativeSpeed;
	}
	if(sprite_index!=spr_movingGoku1){
		sprite_index=spr_movingGoku1;
		image_index=0;
		sprite_set_speed(sprite_index,20,spritespeed_framespersecond);
		if(!go_dash){
			frames=irandom_range(15,45);
		}
		else{
			frames=irandom_range(6,16);
		}
	}

	if(frames>0){
		frames-=global.RelativeSpeed;
	}

	if(image_xscale=1){
		if(!enemy_in_range||go_dash){
			xspeed=4;
		
				//can_dash=false; //if they try to move one way, and then dash the other, they can't
		
	
			if(enemy_in_Yrange){
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
			state=ESTATE.FLYING_BLOCKING;

		}
	}
	else if(image_xscale=-1){
		if(!enemy_in_range||go_dash){
			xspeed=-4;
		
		
				//can_dash=false; //if they try to move one way, and then dash the other, they can't
		
	
			if(enemy_in_Yrange){
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
			state=ESTATE.FLYING_BLOCKING;

		}
	}
		/*
		else if((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))){
			xspeed=-7;
	
				//can_dash=false;
	
			if(!(keyboard_check(global.keyUp)||gamepad_button_check(global.gp_connected,gp_padu))&&!(keyboard_check(global.keyDown)||gamepad_button_check(global.gp_connected,gp_padd))){
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
	
	}
	*/
	if(!enemy_in_Yrange&&enemy.y<y){
			yspeed=-4;
			if(enemy_in_range){
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
	else if(!enemy_in_Yrange&&enemy.y>y){
		yspeed=4;
		if(enemy_in_range){
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
	if(!go_dash){
		if((enemy_in_range&&enemy_in_Yrange&&enemy.yspeed=0&&enemy.xspeed=0)||frames=0){
	
		
				state=ESTATE.FLYING_IDLE
		}
	}
	else{
		if(frames=0){
			state=ESTATE.DASHING
			go_dash=false;
			stamina-=5;
			xspeed=dash_speed*image_xscale;
		}
	}


	if(image_xscale=1){
		if(keyboard_check_pressed(vk_f10)&&dashing_check_button=global.keyRight&&stamina>5){


			xspeed=dash_speed;
			stamina-=5;
			state=ESTATE.DASHING;
		
		}
	}
	else if(image_xscale=-1){
		if(keyboard_check_pressed(vk_f10)&&dashing_check_button=global.keyLeft&&stamina>5){


			xspeed=-1*dash_speed;
			stamina-=5;
			state=ESTATE.DASHING;
		
		}
	}

	if (image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){
		image_index=image_number-1;
		sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
	}


}
