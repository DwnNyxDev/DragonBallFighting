/// @description Insert description here
/// @description Insert description here
// You can write your code in this editor
camera_x=camera_get_view_x(view_camera[0]);
camera_y=camera_get_view_y(view_camera[0]);
camera_width=camera_get_view_width(view_camera[0]);
camera_height=camera_get_view_height(view_camera[0]);
draw_set_halign(fa_left);
draw_healthbar(camera_x+camera_width*(50/1024),camera_y+camera_height*(10/768),camera_x+camera_width*(250/1024),camera_y+camera_height*(20/768),(player_health/max_health)*100,c_gray,c_red,c_lime,0,true,true);
draw_healthbar(camera_x+camera_width*(50/1024),camera_y+camera_height*(30/768),camera_x+camera_width*(250/1024),camera_y+camera_height*(40/768),(ki/max_ki)*100,c_gray,make_color_rgb(178,155,0),make_color_rgb(255,235,87),0,true,true);
draw_healthbar(camera_x+camera_width*(50/1024),camera_y+camera_height*(50/768),camera_x+camera_width*(250/1024),camera_y+camera_height*(60/768),(stamina/max_stamina)*100,c_gray,make_color_rgb(0,200,200),c_aqua,0,true,true);

combo_string="";
for(var index=0;index<ds_list_size(combo_chain);index++){
	combo_string+=string(ds_list_find_value(combo_chain,index))+",";
}
if(vampire_mode&&player_active){
	draw_sprite(spr_vampireWings,0,x,bbox_top);
}
if(state=PSTATE.WIN_GAME){
	draw_text(camera_x+camera_width*(512/1024),camera_y+camera_height*(80/768),"Player 1 Wins!!!");
}





if(!instance_exists(obj_aura)&&state!=PSTATE.DODGING&&!jumping){
	gpu_set_fog(true,c_black,0,1);
	if(y-10+((obj_ground.y-bbox_bottom)/2)>obj_ground.y-98){
		if(image_xscale=1){
		
			draw_sprite_pos(sprite_index,image_index,
			bbox_left-25-((abs(obj_camera.x-x))/3),y-10+((obj_ground.y-bbox_bottom)/2),
			bbox_right-25-((abs(obj_camera.x-x))/3),y-10+((obj_ground.y-bbox_bottom)/2),
			bbox_right,bbox_bottom,
			bbox_left,bbox_bottom,.5
			);
		}
		else{		
			draw_sprite_pos(sprite_index,image_index,
			bbox_right+25+((abs(obj_camera.x-x))/3),y-10+((obj_ground.y-bbox_bottom)/2),
			bbox_left+25+((abs(obj_camera.x-x))/3),y-10+((obj_ground.y-bbox_bottom)/2),
			bbox_left,bbox_bottom,
			bbox_right,bbox_bottom,.5
			);
		}
	}
	gpu_set_fog(false,c_white,0,0);
}
draw_self();