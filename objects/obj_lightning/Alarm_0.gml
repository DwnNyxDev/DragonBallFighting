/// @description Insert description here
// You can write your code in this editor
if(segments_drawn<total_segments){
	segments_drawn+=1;
}
else if(flash){
	
	obj_Shenron.sprite_index=spr_Shenron;
	obj_kameHouse.sprite_index=spr_startScreen_bg1;
	flash=false;
	audio_play_sound(sfx_lightning,-1,false);
	
	
}

alarm[0]=life/total_segments