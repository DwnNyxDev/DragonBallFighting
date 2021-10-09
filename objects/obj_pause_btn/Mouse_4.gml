/// @description Insert description here
// You can write your code in this editor
if(type="Moves"){
	with(owner){
		show_moves=true;
	}
	instance_destroy(obj_pause_btn);
			new_button=instance_create_layer(room_width/2,room_height*.9,"Instances",obj_pause_btn);
			new_button.type="Exit Moves";
			new_button.owner=instance_nearest(x,y,obj_pause_menu_bg);
			new_button.depth=depth-1;
			new_button.selected=true;
}
else if(type="Exit Moves"){
	with(owner){
		show_moves=false;
		instance_destroy(obj_showControl);
		characters_created=false;
	}
	instance_destroy(obj_pause_btn);
	moves_btn = instance_create_layer(room_width/2,room_height*.25,"Instances",obj_pause_btn);
	moves_btn.type="Moves";
	moves_btn.owner=instance_nearest(x,y,obj_pause_menu_bg);;
	moves_btn.depth=depth-1;
	moves_btn.selected=true;
}
else if(type="Quit"){
	room_goto(Start_Screen);
}