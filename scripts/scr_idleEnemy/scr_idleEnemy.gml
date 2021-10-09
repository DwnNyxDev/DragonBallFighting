function scr_idleEnemy() {
	if(sprite_index!=spr_enemy){
		sprite_index=spr_enemy;
	}
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
