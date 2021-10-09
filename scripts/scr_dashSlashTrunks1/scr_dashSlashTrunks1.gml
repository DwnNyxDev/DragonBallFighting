function scr_dashSlashTrunks1() {
	if(sprite_index!=spr_dashSlashTrunks1){
		sprite_index=spr_dashSlashTrunks1;
		image_index=0;
		if(!flying&&!jumping){
			if(bbox_bottom<obj_ground.y){
				while(bbox_bottom<obj_ground.y){
					y++;
				}
			}
		}
		attacking=true;
		sprite_set_speed(sprite_index,7,spritespeed_framespersecond);
	}

	yspeed=0;
	if(image_index>3){
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
	else{
		xspeed=15*image_xscale;
	}


	if(image_index>1&&image_index<2&&hitbox=-1){
		hitbox=hitbox_create(image_xscale,1,0*image_xscale,0,10*(1/global.RelativeSpeed),0*image_xscale,0,25,15,6);
		hitbox.sprite_index=spr_dashSlashTrunks_hitbox;
	}





	if(image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){
		alarm[9]=room_speed*3;
		image_index=image_number-1;
		sprite_set_speed(sprite_index,0,spritespeed_framespersecond);

		attacking=false;
		can_slash=false;
		alarm[3]=slash_cooldown;
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
