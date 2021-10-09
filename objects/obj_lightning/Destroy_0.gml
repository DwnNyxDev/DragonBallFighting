
if(global.summonShenron_animation){
	obj_Shenron.sprite_index=spr_Shenron_faded
	obj_kameHouse.sprite_index=spr_startScreen_bg_faded;

	if(obj_Shenron.lightning_made<obj_Shenron.total_lightning){
		obj_Shenron.lightning_made++;
		new_lightning=instance_create_layer(random_range(50,room_width-50),random_range(116,372),"Instances",obj_lightning);
		new_lightning.depth=obj_Shenron.depth;
	}
	else{

		obj_Shenron.sprite_index=spr_Shenron;
		obj_kameHouse.sprite_index=spr_startScreen_bg1;
		obj_kameHouse.ground_animation=true;
		global.summonShenron_animation=false;
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