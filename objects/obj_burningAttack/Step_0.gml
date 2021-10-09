/// @description Insert description here
// You can write your code in this editor

if(hitbox=-1){
	hitbox=hitbox_create(0,0,0,0,-1,0,0,10,30/frames,45/frames);
	hitbox.recurring_damage="true";
}
if(increase_in_size){
		size+=.01;
	if(size>2){
		if(sprite_index=spr_burningAttack_small){
			sprite_index=spr_burningAttack_medium;
			size=1
		}
		else if(sprite_index=spr_burningAttack_medium){
			sprite_index=spr_burningAttack_large;
			size=1
		}
		else if(sprite_index=spr_burningAttack_large){
			increase_in_size=false;
		}
	}
}
if(can_move){
	x+=move_direction;
	if(x>room_width||x<0){
		can_move=false;
		explode=true;
		increase_in_size=true;
	}
}
if(explode){
	frames--;
	if(place_meeting(x,y,owner)){
		owner.hit=true;
		owner.hitBy=hitbox;
		owner.xspeed=0;
		owner.yspeed=0;
		if(!owner.death_animation){
			if(owner.x<x-1){
				owner.x++;
			}
			else if(owner.x>x+1){
				owner.x--;
			}
			if(owner.y<y-1){
				owner.y++;
			}
			else if(owner.y>y+1){
				owner.y--;
			}
		}
	}
	if(place_meeting(x,y,enemy)){
		enemy.hit=true;
		enemy.hitBy=hitbox;
		if(!enemy.death_animation){
			if(enemy.x<x-1){
				enemy.x++;
			}
			else if(enemy.x>x+1){
				enemy.x--;
			}
			if(enemy.y<y-1){
				enemy.y++;
			}
			else if(enemy.y>y+1){
				enemy.y--;
			}
		}
	}
}
if(frames<=0){
	instance_destroy();
	owner.burningAttack_created="false";
}
image_xscale=size;
image_yscale=size;