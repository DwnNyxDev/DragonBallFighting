/// @description Insert description here 
// You can write your code in this editor
if(ki<100){
	effect_create_above(ef_ellipse,x,y,1,c_aqua);
	if(ki>65){
		effect_create_above(ef_spark,random_range(x-50,x+50),random_range(y-50,y+50),1,c_yellow);
	}
	if(state=ESTATE.CHARGING){
		alarm[5]=lerp(room_speed*1.25,room_speed*.05,ki/100);
	}
}