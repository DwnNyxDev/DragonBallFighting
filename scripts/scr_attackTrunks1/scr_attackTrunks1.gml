function scr_attackTrunks1() {
	if(go_attack){
		var rando = random_range(0,100);
		if(rando<50){
	
	
		if(!jumping&&!flying){
			var rando=random_range(0,100);
				if(crouching){
					state=ESTATE.CROUCHING_PUNCH;
				}
				else if(rando<75){
					state=ESTATE.LIGHT_PUNCHING;
				}
				else if(rando<100){
					state=ESTATE.UP_PUNCH_GROUND;
				}
			}
			else{
				var rando=random_range(0,100);
				if(rando<25){
					state=ESTATE.DOWN_PUNCH
				}
				else if(rando<100){
					state=ESTATE.SIDE_PUNCH_AIR;
				}
				else if(((keyboard_check(vk_f10)&&image_xscale=-1)||(keyboard_check(vk_f10)&&image_xscale=1))&&jumping){
					state=ESTATE.BACK_PUNCH_AIR;
				}
				else{
			
				}
			}
		}
		else{
			if(!jumping&&!flying){
			var rando=random_range(0,100);
				if(crouching){
					state=ESTATE.CROUCHING_KICK;
				}
				else if(rando<75){
					state=ESTATE.LIGHT_KICKING;
				}
				else if(rando<100){
					state=ESTATE.UP_KICK_GROUND
				}
			}
			else{
				var rando=random_range(0,100);
				if(rando<25){
					state=ESTATE.DOWN_KICK
				}
				else if(rando<100){
					state=ESTATE.SIDE_KICK_AIR;
				}
				else if(((keyboard_check(vk_f10)&&image_xscale=-1)||(keyboard_check(vk_f10)&&image_xscale=1))&&jumping){
					state=ESTATE.BACK_KICK_AIR;
				}
				else{
					state=ESTATE.UP_KICK_AIR;
				}
			}

		}
		go_attack=false;
	}


}
