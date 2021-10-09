function scr_movingForwardTrunks1() {
	if(ki<max_ki){
		ki+=.015*global.RelativeSpeed;
	}
	if(stamina<max_stamina&&out_of_combat&&!vampire_mode){
		stamina+=.075*global.RelativeSpeed;
	}

	if(sprite_index!=spr_movingTrunks1){
		sprite_index=spr_movingTrunks1;
		image_index=0;
		if(!go_dash){
			frames=irandom_range(15,45);
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
		if(!enemy_in_range||go_dash){
			xspeed=3;
		
				//can_dash=false; //if they try to move one way, and then dash the other, they can't
		
	
		}
		else if(keyboard_check(vk_f10)){
			state=ESTATE.BLOCKING;
		
		
				//can_dash=false;

		}
	}
	else if(image_xscale=-1){
		if(keyboard_check(vk_f10)){
			state=ESTATE.BLOCKING;
		
		
				//can_dash=false; //if they try to move one way, and then dash the other, they can't
		
	
		}
		else if(!enemy_in_range||go_dash){
			xspeed=-3;
		
				//can_dash=false;

		}
	}
	if(!go_dash){
		if((enemy_in_range&&enemy.xspeed=0)||frames=0){
	
			if(!flying){
				state=ESTATE.IDLE
			}
		}
	}
	else{
		if(frames=0){
			state=ESTATE.DASHING
			go_dash=false;
			stamina-=10;
			xspeed=dash_speed*image_xscale;
		}
	}

	if (image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){
		image_index=image_number-1;
		sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
	}
	/*

	//use this only if the above code for changing out at the end of an animation doesn't work
	var temp_fast = (sprite_get_speed_type(sprite_index) == spritespeed_framespersecond);
	var temp_speed = sprite_get_speed(sprite_index)*image_speed;
	if (temp_fast){ temp_speed /= room_speed; }
	if(image_index + temp_speed >= sprite_get_number(sprite_index)){
	//put state transition code here
	}

	*/



}
