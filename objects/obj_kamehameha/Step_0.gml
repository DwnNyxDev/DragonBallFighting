/// @description Insert description here
// You can write your code in this editor
if(!created){

	if(total_power=30&&sprite_index!=spr_kamehameha_ssj){
		sprite_index=spr_kamehameha_ssj;
	}
	else if(total_power>20&&sprite_index!=spr_kamehameha_red){
		sprite_index=spr_kamehameha_red;
	}
	new_hitbox=hitbox_create(0,0,0,0,10000,1*image_xscale,0,10,(total_power/150)*global.RelativeSpeed,(total_power/200)*global.RelativeSpeed);
	new_hitbox.recurring_damage="true";
	created=true;
}

image_speed=global.RelativeSpeed;
if(owner.state!=PSTATE.KAMEHAMEHA&&owner.state!=ESTATE.KAMEHAMEHA){
	instance_destroy();
}

if (image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){
	image_index=image_number-1;
	sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
}
if(place_meeting(x,y,enemy)&&can_hit&&!enemy.death_animation&&owner.enemy.can_be_hit){
	
	enemy.hit=true;
	enemy.hitBy=new_hitbox;			
}
