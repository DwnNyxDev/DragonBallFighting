/// @description Insert description here
// You can write your code in this editor
global.RelativeSpeed=1;
instance_destroy(global.obj_player_1);
instance_destroy(global.obj_player_2);
global.paused=false;
reset_round=false;
global.gameOver=false;
global.rounds=3;
global.obj_player_1=-1;
global.obj_player_2=-1;
global.rounds_finished=0;
global.rounds_player1_won=0;
global.rounds_player2_won=0;
room_goto(Start_Screen);