/// @description Insert description here
// You can write your code in this editor
if(global.summonShenron_animation){
	effect_create_above(ef_rain,0,0,1,c_gray);
	if(!created_Shenron){
		if(fadeOut){
			if(merge_amount<1){
				merge_amount+=merge_speed;
		
			}
		}
		else {
			if(merge_amount>0){
				merge_amount-=merge_speed;
			}
		}
	
		if(merge_amount>=1&&!created_Shenron){
		
			instance_destroy();
			new_bg=instance_create_layer(0,0,"Instances",obj_kameHouse);
			new_bg.sprite_index=spr_startScreen_bg_faded;
			new_bg.created_Shenron=true;
			new_Shenron=instance_create_layer(224,32,"Instances",obj_Shenron);
			new_Shenron.sprite_index=spr_Shenron_faded;
			new_Shenron.depth=depth-2;

		}
		layer_background_blend(layer_get_id("Background"),merge_color(starting_blue,ending_blue,merge_amount));
		image_blend=merge_color(c_white,make_color_rgb(90,90,90),merge_amount);
	}
	
	any_pressed = false


for (i=gp_face1; i<gp_axisrv; i++){
    if gamepad_button_check_pressed(global.gp_connected, i){
        any_pressed = true;
        break;
	}
}
	if(keyboard_check_pressed(vk_anykey)||any_pressed){
		
		global.summonShenron_animation=false;
		if(!created_Shenron){
			created_Shenron=true;
			new_Shenron=instance_create_layer(224,32,"Instances",obj_Shenron);
			new_Shenron.sprite_index=spr_Shenron_faded;
			new_Shenron.depth=depth-2;
			with(new_Shenron){
				alarm_set(0,-1);
				image_alpha=1;
				sprite_index=spr_Shenron
			}
		}
		else{
			if(instance_exists(obj_lightning)){
				instance_destroy(obj_lightning);
			}
			with(obj_Shenron){
				alarm_set(0,-1);
				image_alpha=1;
				sprite_index=spr_Shenron
			}
		}
		
		sprite_index=spr_startScreen_bg1;
		image_blend=c_white;
		layer_background_blend(layer_get_id("Background"),starting_blue);
		ground_animation=true;
		with(obj_groundAnim){
			alarm[0]=room_speed*3;
			depth=other.depth-1;
		}
		nimbus=instance_create_layer(choose(room_width+75),128,"Instances",obj_gokuNimbus);
		nimbus.depth=depth-1;
		nimbus.y=random_range(75,room_height-75);
		nimbus.move_speed=irandom_range(3,10);
		start_btn=instance_create_layer(1200,450,"Instances",obj_startButtons);
		start_btn.depth=depth-2;
		start_btn.type="Start";
		start_btn.selected=true;
		controls_btn=instance_create_layer(1200,550,"Instances",obj_startButtons);
		controls_btn.depth=depth-2;
		controls_btn.sprite_index=spr_startButtons_2ball;
		controls_btn.type="Controls";
		tutorial_btn=instance_create_layer(1200,650,"Instances",obj_startButtons);
		tutorial_btn.depth=depth-2;
		tutorial_btn.sprite_index=spr_startButtons_1ball;
		tutorial_btn.type="Tutorial";
	}
}
else{
	draw_set_alpha(1);
	if(audio_is_playing(thunder_bg)){
		audio_stop_sound(thunder_bg);
	}
	else if(!audio_is_playing(title_screen_bg)){
		audio_play_sound(title_screen_bg,0,true);
	}
}
