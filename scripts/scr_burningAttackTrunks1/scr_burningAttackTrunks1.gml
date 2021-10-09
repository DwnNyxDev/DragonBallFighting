function scr_burningAttackTrunks1() {
	if(sprite_index!=spr_burningAttackTrunks1){
		sprite_index=spr_burningAttackTrunks1;
		image_index=0;
		attacking=true;
		frames=-1
		sprite_set_speed(sprite_index,6,spritespeed_framespersecond);
	}

	if(frames>0){
		frames--;
	}

	if(jumping){
	
		yspeed=0;
		xspeed=0;
	}
	else{
		//slow_down moving up and down
		if(flying){
		
	
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
		//slow_down moving left and right
	

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
	if(image_index>2&&image_index<3&&!burningAttack_created){
		new_burningAttack=instance_create_layer(x+44*image_xscale,y,"Instances",obj_burningAttack);
		new_burningAttack.owner=id;
		new_burningAttack.move_direction=image_xscale;
		show_debug_message(id);
		show_debug_message(global.obj_player_1);
		new_burningAttack.enemy=enemy;
		burningAttack_created=true;
		sprite_set_speed(sprite_index,1.5,spritespeed_framespersecond);
	}
	else if(image_index>5&&image_index<6&&instance_exists(new_burningAttack)&&!new_burningAttack.can_move&&new_burningAttack!=-1&&!new_burningAttack.explode){
		new_burningAttack.can_move=true;
		sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		frames=random_range(120,180);
	}
	else if(instance_exists(new_burningAttack)&&new_burningAttack!=-1){
		if(new_burningAttack.can_move&&time_to_explode&&frames<=0){
			new_burningAttack.can_move=false;
			new_burningAttack.explode=true;
			new_burningAttack.increase_in_size=true;
			sprite_set_speed(sprite_index,6,spritespeed_framespersecond);
		}
	}

	if(instance_exists(new_burningAttack)&&new_burningAttack!=-1){
		if((new_burningAttack.x>enemy.x-100&&new_burningAttack.x<enemy.x+100)||frames=0){
			if(instance_exists(new_burningAttack)&&new_burningAttack!=-1){
				time_to_explode=true;
			}
		}
	}
	if(burningAttack_created&&!instance_exists(new_burningAttack)){
		sprite_set_speed(sprite_index,6,spritespeed_framespersecond);
	
	}

	if(image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){
		image_index=image_number-1;
		sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		attacking=false;
		if(state!=PSTATE.TIRED){
			if(jumping){
				state=PSTATE.JUMPING
			}
			else if(!flying){

			
					state=PSTATE.IDLE
			}
	
			else if(flying) {


					state=PSTATE.FLYING_IDLE
			
			}
		}
	}


}
