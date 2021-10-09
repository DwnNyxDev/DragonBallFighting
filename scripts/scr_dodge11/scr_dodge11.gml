function scr_dodge11() {

	if(go_dodge&&stamina>33){
		stamina-=33;
		blocking=false;
		if(hitbox!=-1){
			instance_destroy(hitbox);
		}
		sprite_index=spr_dodge1;

		alarm_set(2,-1);
		if(!can_shoot){
			can_shoot=true;
		}
		go_dodge=false;
		if(image_xscale=-1){
			dodge_direction="left";
		}
		else{
			dodge_direction="right";
		}
	
		state=ESTATE.DODGING;
		yspeed=0;
		xspeed=0;
		alarm[4]=room_speed*.1;

	
	
	}


}
