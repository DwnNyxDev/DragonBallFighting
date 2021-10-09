function scr_hitTrunks1() {



	if(xspeed!=0){
			xspeed-=sign(xspeed)*.1;
	}
	if(jumping||flying){
		yspeed+=.2;
	}
	if(attacking){
		attacking=false;
		can_attack=true;
		if(hitbox!=-1){
			if(instance_exists(hitbox)){
				instance_destroy(hitbox);
			}
				hitbox=-1;
		}
		if(instance_exists(new_burningAttack)&&new_burningAttack!=-1&&!new_burningAttack.explode){
			instance_destroy(new_burningAttack);
			burningAttack_created=false;
			time_to_explode=false;
		}
		burningAttack_created=false;
	}

	alarm_set(2,-1);
	alarm_set(1,-1);
	alarm_set(3,-1);
	alarm_set(4,-1);
	poweringUp_effect=false;
	can_shoot=true;
	can_slash=true;
	
	hitStun-=global.RelativeSpeed*1.5;
	if(hitStun<=0){
		if(ki>0){
			if(sprite_index=spr_hitTrunksGrounded1){
				state=PSTATE.GROUNDED;
			}
		else if(jumping){
				state=PSTATE.JUMPING
			}
			else if(!flying){

			
					state=PSTATE.IDLE
			
			}
			else if(crouching){

					state=PSTATE.CROUCHING_IDLE;			
		
	
	}
			else if(flying) {
		

					state=PSTATE.FLYING_IDLE
			
			
			}
		}
		else{
			state=PSTATE.TIRED;
		}
	
	}
	if (image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){
		sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		image_index=image_number-1;
	
	}


}
