/// @description Insert description here
// You can write your code in this editor
size+=.5*global.RelativeSpeed;
image_xscale=size;
image_yscale=size;
if(size>=20){
	instance_destroy();
}
if(place_meeting(x,y,owner.enemy)&&can_hit_enemy){
	can_hit_enemy=false;
	new_hitbox=hitbox_create(0,0,0,0,2,10*owner.image_xscale,0,30,8,0);
	owner.enemy.hit=true;
	owner.enemy.hitBy=new_hitbox;
}