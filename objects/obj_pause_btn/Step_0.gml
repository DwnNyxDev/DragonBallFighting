/// @description Insert description here
// You can write your code in this editor
if(!instance_exists(owner)){
	instance_destroy();
}
else{
	if(selected&&sprite_index!=spr_startButtons_1ball_hover){
		sprite_index=spr_startButtons_1ball_hover
	}
	else if(!selected&&sprite_index!=spr_startButtons_1ball){
		sprite_index=spr_startButtons_1ball;
	}
	if(selected&&(gamepad_button_check_pressed(global.gp_connected,gp_face1)||keyboard_check_pressed(vk_enter))){
		if(type="Moves"){
			with(obj_pause_menu_bg){
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
		
	}
	if(selected&&type="Moves"&&(gamepad_button_check_pressed(global.gp_connected,gp_padd)||keyboard_check_pressed(global.keyDown))){
		selected=false;
		with(obj_pause_btn){
			if(type="Quit"){
				selected=true;
			}
		}
	}
	if(selected&&type="Quit"&&(gamepad_button_check_pressed(global.gp_connected,gp_padu)||keyboard_check_pressed(global.keyUp))){
		selected=false;
		with(obj_pause_btn){
			if(type="Moves"){
				selected=true;
			}
		}
	}
}
