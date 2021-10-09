function scr_hitEnemy() {
	if(sprite_index!=spr_enemyHit){
		sprite_index=spr_enemyHit;
	}


	if(xspeed!=0){
			xspeed-=sign(xspeed)*.1;
	}

	
	hitStun--;
	if(hitStun<=0){
		state=PSTATE.IDLE;
	
	}


}
