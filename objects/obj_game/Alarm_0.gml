/// @description Insert description here
// You can write your code in this editor

		instance_destroy(global.obj_player_1);
		instance_destroy(global.obj_player_2);
		if(instance_exists(obj_kiBlast)){
			instance_destroy(obj_kiBlast);
		}
		if(instance_exists(obj_stunBlast)){
			instance_destroy(obj_stunBlast);
		}
		if(instance_exists(obj_kamehameha)){
			instance_exists(obj_kamehameha);
		}
		if(instance_exists(obj_Genkidama)){
			instance_destroy(obj_Genkidama);
		}
		if(instance_exists(obj_kamehameha_charging)){
			instance_destroy(obj_kamehameha_charging);
		}
		if(instance_exists(obj_burningAttack)){
			instance_destroy(obj_burningAttack);
		}
		if(global.character_selected="Goku"){
			global.obj_player_1 = instance_create_layer(358,612,"Instances",obj_Goku_player);
		}
		else if(global.character_selected="Trunks"){
			global.obj_player_1 = instance_create_layer(358,612,"Instances",obj_Trunks_player);
		}
		global.obj_player_2=instance_create_layer(539,612,"Instances",global.bot_selected);
		global.obj_player_1.enemy=global.obj_player_2;
		global.obj_player_2.enemy=global.obj_player_1;
		global.RelativeSpeed=1;
		global.timer=global.beginning_timer;
		global.gameOver=false;
		reset_round=false;