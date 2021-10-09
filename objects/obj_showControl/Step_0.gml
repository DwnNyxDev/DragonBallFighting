/// @description Insert description here
// You can write your code in this editor
if(!continue_animation){
	if (image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){
		image_index=image_number-1;
		image_speed=0;
	}
}
else if(continue_animation&&character="Goku"&&move="kamehameha"){
	if (image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){
		if(sprite_index=spr_normalKamehamehaGoku2){
			sprite_index=spr_kaiokenKamehamehaGoku2;
		}
		else if(sprite_index=spr_kaiokenKamehamehaGoku2){
			sprite_index=spr_ssjKamehamehaGoku2;
		}
		else if(sprite_index=spr_ssjKamehamehaGoku2){
			image_index=image_number-1;
			image_speed=0;
		}
	}
}
else{
	if (image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){
		image_index=image_number-1;
		image_speed=0;
		alarm[0]=room_speed*2;
	}
}