/// @description Insert description here
// You can write your code in this editor
if(room=Start_Screen){
	audio_play_sound(thunder_bg,0,true);
}
else if(room=CellGamesRoom){
	audio_play_sound(CellGames_bg,0,true);
	global.paused=false;
	global.RelativeSpeed=1;
	global.timer=global.beginning_timer
	global.bot_selected=choose(obj_Trunks_ai,obj_Goku_ai);
	if(global.character_selected="Goku"){
		global.obj_player_1 = instance_create_layer(358,612,"Instances",obj_Goku_player);
	}
	else if(global.character_selected="Trunks"){
		global.obj_player_1 = instance_create_layer(358,612,"Instances",obj_Trunks_player);
	}
	global.obj_player_2=instance_create_layer(539,612,"Instances",global.bot_selected);
	global.obj_player_1.enemy=global.obj_player_2;
	global.obj_player_2.enemy=global.obj_player_1;
}
else if(room=TutorialRoom){
	global.paused=false;
	global.RelativeSpeed=1;
	global.obj_player_1 = instance_create_layer(358,612,"Instances",obj_Goku_player);
	global.obj_player_2=instance_create_layer(539,612,"Instances",obj_Goku_trainer);
	global.obj_player_1.enemy=global.obj_player_2;
	global.obj_player_2.enemy=global.obj_player_1;
}
else if(room=Character_Select_Room){
	rounds_display=instance_create_layer(640,192,"Instances",obj_Displayer);
	rounds_display.type="rounds";
	timer_display=instance_create_layer(640,448,"Instances",obj_Displayer);
	timer_display.type="timer";
	instance_create_layer(512,650,"Instances",obj_NextBtn);
	/*
	Goku_Pickable = instance_create_layer(256,383,"Instances",obj_pickableCharacter);
	Goku_Pickable.character="Goku";
	Trunks_Pickable = instance_create_layer(768,383,"Instances",obj_pickableCharacter);
	Trunks_Pickable.character="Trunks";
	*/
}
else if(room=MultiplayerRoom){
	global.paused=false;
	global.RelativeSpeed=1;
	instance_create_layer(room_width/2-65,room_height*.8,"Instances",obj_recieverbtn);
	instance_create_layer(room_width/2+65,room_height*.8,"Instances",obj_senderbtn);
}