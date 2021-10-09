/// @description Insert description here
// You can write your code in this editor
if(go_left){
	x-=move_speed;
	if(x<=-75){
		move_speed=0;
		image_xscale*=-1;
		go_left=false;
		y=random_range(75,room_height-75);
		alarm[0]=room_speed*2;
	}
}
else{
	x+=move_speed;
	if(x>=room_width+75){
		move_speed=0;
		image_xscale*=-1;
		go_left=true;
		y=random_range(75,room_height-75);
		alarm[0]=room_speed*2;
	}
}