function scr_movingForwardGoku1() {
	if(ki<100){
		ki+=.025*global.RelativeSpeed;
	}
	if(stamina<100&&out_of_combat){
		stamina+=.1*global.RelativeSpeed;
	}

	if(sprite_index!=spr_movingGoku1){
		sprite_index=spr_movingGoku1;
		if(!go_dash){
			frames=irandom_range(15,45);
		}
		else{
			frames=irandom_range(6,16);
		}
		image_index=0;
	
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
			xspeed=4;
		
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
			xspeed=-4;
		
				//can_dash=false;

		}
	}
	if(!go_dash){
		if((enemy_in_range&&enemy.xspeed=0)||frames=0){
	
		
				state=ESTATE.IDLE
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

			state=ESTATE.DASHING;
			stamina-=5;
			xspeed=dash_speed

		
		}
	}
	else if(image_xscale=-1){
		if(keyboard_check_pressed(vk_f10)&&dashing_check_button=global.keyLeft&&stamina>5){
	
		
			state=ESTATE.DASHING;
			stamina-=5;
			xspeed=-1*dash_speed

		
		
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
