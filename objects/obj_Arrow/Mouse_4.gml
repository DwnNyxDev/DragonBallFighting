/// @description Insert description here
// You can write your code in this editor
if(sprite_index=spr_leftArrow){
	if(owner.type="rounds"){
		if(global.rounds>1){
			global.rounds-=2;
			audio_play_sound(sfx_button,-1,false);
		}
	}
	else if(owner.type="timer"){
		if(global.beginning_timer>1800){
			global.beginning_timer-=1800;
			audio_play_sound(sfx_button,-1,false);
		}
	}
}
else {
	show_debug_message("running");
	if(owner.type="rounds"){
		if(global.rounds<5){
			global.rounds+=2;
			audio_play_sound(sfx_button,-1,false);
		}
	}
	else if(owner.type="timer"){
		if(global.beginning_timer<7200){
			global.beginning_timer+=1800;
			audio_play_sound(sfx_button,-1,false);
		}
	}
}