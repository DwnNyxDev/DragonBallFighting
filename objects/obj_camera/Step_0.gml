/// @description Insert description here
// You can write your code in this editor
camera_width=camera_get_view_width(view_camera[0]);
camera_height=camera_get_view_height(view_camera[0]);
camera_x=camera_get_view_x(view_camera[0]);
camera_y=camera_get_view_y(view_camera[0]);
shake_range=5*power((scr_pythag("hypotenuse",camera_width,camera_height)/550),6.5)*shake_intensity;
if(!instance_exists(obj_pause_menu_bg)&&room!=TutorialRoom){
	camera_set_view_target(view_camera[0],obj_camera);
	if(instance_exists(global.obj_player_1)&&instance_exists(global.obj_player_2)){
		if(!shake_screen){

			x=(global.obj_player_1.x+global.obj_player_2.x)/2;
			y=(global.obj_player_1.y+global.obj_player_2.y)/2;
		}
		else{
		
		
			x=((global.obj_player_1.x+global.obj_player_2.x)/2)+random_range(-shake_range,shake_range);
			y=(global.obj_player_1.y+global.obj_player_2.y)/2+random_range(-shake_range,shake_range);
		}


	w_distance= abs(global.obj_player_1.x-global.obj_player_2.x);
	if(w_distance<=160){
		w_distance=0;
	}
	else{
		w_distance-=160;
	}

	var new_w=w_distance+460;
	difference=new_w/camera_width;
	var new_h=camera_height*difference;
	if(new_w>1024){
		new_w=1024;
	}
	if(new_h>768){
		new_h=768;
	}
	camera_set_view_size(view_camera[0],new_w,new_h);


	camera_width=camera_get_view_width(view_camera[0]);
	camera_height=camera_get_view_height(view_camera[0]);




	h_distance=abs(global.obj_player_1.y-global.obj_player_2.y);
	if(h_distance<=160){
		h_distance=0;
	}
	else{
		h_distance-=160;
	}
	var new_h=h_distance+camera_height;


	difference=new_h/camera_height;
	var new_w = camera_width*difference;
	if(new_w>1024){
		new_w=1024;
	}
	if(new_h>768){
		new_h=768;
	}

	camera_set_view_size(view_camera[0],new_w,new_h);
	}
}
else if(instance_exists(obj_pause_menu_bg)||room=TutorialRoom){
	show_debug_message("running")
	camera_set_view_target(view_camera[0],noone);
	camera_set_view_size(view_camera[0],room_width,room_height);
	camera_set_view_pos(view_camera[0],0,0);
}
