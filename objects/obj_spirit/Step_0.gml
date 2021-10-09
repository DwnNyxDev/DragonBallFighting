/// @description Insert description here
// You can write your code in this editor
if(instance_exists(genkidama)&&genkidama!=-1){
	image_angle=point_direction(x,y,genkidama.x,genkidama.y)+90;
	if(x<mouse_x){
		image_xscale=1;
	}
	else{
		image_xscale=1;
	}
	if(y<mouse_y){
		image_yscale=1;
	}
	else{
		image_yscale=1;
	}
	direction = point_direction(x,y,genkidama.x,genkidama.y);
	speed=5;
}
else{
	instance_destroy();
}