/// @description Insert description here
// You can write your code in this editor
if(hitbox=-1){
	hitbox=hitbox_create(0*image_xscale,0,0*image_xscale,0,-1,0*image_xscale,0,90,5,4);
}
if(place_meeting(x,y,enemy)){
	enemy.hit=true;
	enemy.hitBy=hitbox;
}
if(shot_direction="straight"){
	if(image_xscale=1){
			x+=1*global.RelativeSpeed;
	}
	else{
		x-=1*global.RelativeSpeed;
	}
}
else if(shot_direction="down"){
	if(image_xscale=1){
			x+=1*global.RelativeSpeed;
			y+=1*global.RelativeSpeed;
	}
	else{
		x-=1*global.RelativeSpeed;
		y+=1*global.RelativeSpeed;
	}
}
if(shot_direction="up"){
	if(image_xscale=1){
			x+=1*global.RelativeSpeed;
			y-=1*global.RelativeSpeed;
	}
	else{
		x-=1*global.RelativeSpeed;
		y-=1*global.RelativeSpeed;
	}
}


if(bbox_left>room_width||bbox_right<0||bbox_top>room_height||bbox_bottom<0){
	instance_destroy();
}