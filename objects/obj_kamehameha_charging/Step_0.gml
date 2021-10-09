/// @description Insert description here
// You can write your code in this editor

size=lerp(1,2.5,(owner.kamehameha_total_power-10)/20);
image_angle_speed=lerp(.5,3,(owner.kamehameha_total_power-10)/20);

 if(size>=2.5&&sprite_index!=spr_kamehameha_charging_ssj){
	sprite_index=spr_kamehameha_charging_ssj;
	image_index=0;
}
else if(size>=1.75&&sprite_index!=spr_kamehameha_charging_red){
	sprite_index=spr_kamehameha_charging_red;
	image_index=0;
}


image_xscale=size;
image_yscale=size;
