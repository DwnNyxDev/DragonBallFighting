/// @description Insert description here
// You can write your code in this editor
if(!gamepad_button_check(global.gp_connected,gp_shoulderlb)&&!gamepad_button_check(global.gp_connected,gp_shoulderrb)){
	shoulders_fully_released=true;
}
attack_blocked=false;
attack_parried=false;

if(hitbox != -1){
    with(hitbox){
        x = other.x + xOffset;
        y = other.y + yOffset;
		with(owner.enemy){

			if(place_meeting(x,y,other)){
				with(other){
                    //check to see if your target is on the ignore list
                    //if it is on the ignore list, dont hit it again

                    //if it is NOT on the ignore list, hit it, and add it to
                    //the ignore list
                    if(!hit_enemy&&other.active_hurtbox){

							if(owner.vampire_mode){
								if(owner.ki<owner.max_ki){
									owner.ki+=2.5;
								}
								if(owner.player_health<owner.max_health){
									owner.player_health+=2.5;
								}
							}
						    other.hit = true;
							other.hitBy=id;
							hit_enemy=true;
                    }
                }
			}
		}
		
    }
}
