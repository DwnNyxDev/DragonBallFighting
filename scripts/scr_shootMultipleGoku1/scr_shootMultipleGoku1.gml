function scr_shootMultipleGoku1() {
	if(stamina<100&&out_of_combat){
		stamina+=.1*global.RelativeSpeed;
	}
	if(sprite_index!=spr_shootMultipleGoku1){
		sprite_index=spr_shootMultipleGoku1;
		image_index=0;
		attacking=true;
		frames=irandom_range(120,240);
		if(!jumping&&!flying){
			while(bbox_bottom<obj_ground.y){
				y++;
			}
		}
		sprite_set_speed(sprite_index,8,spritespeed_framespersecond);
	}

	if(frames>0){
		frames-=global.RelativeSpeed;
	}

	if(ki>7.5){
		if(image_index>1&&image_index<2&&!kiBlast_made){
			new_kiBlast=instance_create_layer(x+90*image_xscale,y-27,"Instances",obj_kiBlast);
			new_kiBlast.image_xscale=image_xscale;
			new_kiBlast.enemy=enemy;
			kiBlast_made=true;
			ki-=7.5

		}
		else if(image_index>4&&image_index<5&&!kiBlast2_made){
			new_kiBlast=instance_create_layer(x+90*image_xscale,y-27,"Instances",obj_kiBlast);
			new_kiBlast.image_xscale=image_xscale;
			new_kiBlast.enemy=enemy;
			kiBlast2_made=true;
			ki-=7.5
	
		}
	}

	if(jumping){
		yspeed+=.2;
		if(xspeed!=0){
			xspeed-=sign(xspeed)/25;
		}
	}
	else{
		//slow_down moving up and down
		if(flying){
			if(keyboard_check(vk_f10)){
				yspeed=-2;
			}
			else if(keyboard_check(vk_f10)){
				yspeed=2;
			}
			else{
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
		//slow_down moving left and right
		if(keyboard_check(vk_f10)){
			xspeed=2;
		}
		else if(keyboard_check(vk_f10)){
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
	if(stateTimer<=0){
		stateTimer=irandom_range(30,75);
	if(enemy.bbox_bottom<bbox_top||enemy.bbox_top>y||ki<=random_range(15,30)||enemy_in_range||frames<=0){
		shoot_multiple=false;
		alarm[9]=room_speed*3;
		sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		attacking=false;
		can_shoot=false;
		alarm[1]=kiBlast_cooldown;
		kiBlast_made=false;
		kiBlast2_made=false;
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
	if(image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){
		kiBlast_made=false;
		kiBlast2_made=false;
	}



}
