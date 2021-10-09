function scr_shootOnceGoku11() {
	if(stamina<100&&out_of_combat){
		stamina+=.2*global.RelativeSpeed;
	}
	if(sprite_index!=spr_shootOnceGoku1){
		sprite_index=spr_shootOnceGoku1;
		image_index=0;
		attacking=true;
		shoot_multiple=true;
		if(!jumping&&!flying){
			while(bbox_bottom<obj_ground.y){
				y++;
			}
		}
		sprite_set_speed(sprite_index,10,spritespeed_framespersecond);
	}


	if(image_index>1&&image_index<2&&!kiBlast_made){
		new_kiBlast=instance_create_layer(x+78*image_xscale,y-45,"Instances",obj_kiBlast);
		new_kiBlast.image_xscale=image_xscale;
		new_kiBlast.enemy=enemy;
		kiBlast_made=true;
		ki-=10;
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
	if(enemy.bbox_bottom<bbox_top||enemy.bbox_top>y){
		shoot_multiple=false;
	}
	else{
		var rando=random_range(0,100);
		if(rando<lerp(60,0,ki-25/75)){
			shoot_multiple=false;
		}
	}
	if(image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){
		alarm[9]=room_speed*3;
		image_index=image_number-1;
		sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		attacking=false;
		kiBlast_made=false;
	
		if(state!=ESTATE.TIRED){
			if(!shoot_multiple){
				can_shoot=false;
				alarm[1]=kiBlast_cooldown;
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
			else{
				state=ESTATE.shoot_MULTIPLE;
			}
		}
	}


}
