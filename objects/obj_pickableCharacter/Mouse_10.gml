/// @description Insert description here
// You can write your code in this editor
if(character="Goku"){
	if(!(audio_is_playing(Goku_character_select_sound)||audio_is_playing(Goku_character_select_sound1))){
		audio_play_sound(audio[audio_index],-1,false);
		if(audio_index=1){
			audio_index=0;
		}
		else{
			audio_index=1;
		}
	}
}
else if(character="Trunks"){
	if(!(audio_is_playing(Trunks_character_select_sound)||audio_is_playing(Trunks_character_select_sound1))){
		audio_play_sound(audio[audio_index],-1,false);
		if(audio_index=1){
			audio_index=0;
		}
		else{
			audio_index=1;
		}
	}
}