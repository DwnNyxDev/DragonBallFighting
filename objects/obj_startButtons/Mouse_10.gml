/// @description Insert description here
// You can write your code in this editor
if(type="Start"||type="Back"||type="Tutorial"){
	sprite_index=spr_startButtons_1ball_hover;
}
else if(type="Controls"){
	sprite_index=spr_startButtons_2ball_hover;
}
with(obj_startButtons){
	selected=false;
}
selected=true;