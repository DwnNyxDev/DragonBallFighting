/// @description Insert description here
// You can write your code in this editor
if(state!=animSTATE.NONE){
	previous_state=state;
	state=animSTATE.NONE;
	alarm[0]=room_speed*2;
}
else{
	image_alpha=1;
	while(state=animSTATE.NONE||state=previous_state){
		state=choose(animSTATE.VEGITO_FUSION,animSTATE.GOTENKS_FUSION,animSTATE.GOGETA_FUSION);
	}
}
