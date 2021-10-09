/// @description Insert description here
// You can write your code in this editor
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
                    if(!hit_enemy){

							
						    other.hit = true;
							other.hitBy=id;
							hit_enemy=true;
						   
					}
                }
			}
		}
		
    }
}
