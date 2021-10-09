/// @description Insert description here

gp_num = gamepad_get_device_count();
global.gp_connected=-1;
SpeedChange = .5; // how fast do we want game speed to change
TargetRelativeSpeed = 1.0; // speed we'd like the game to run
global.RelativeSpeed = TargetRelativeSpeed; // set current relative speed as target speed
global.paused=false;
global.gameOver=false;
global.rounds=3;
global.beginning_timer=room_speed*60;

global.obj_player_1=-1;
global.obj_player_2=-1;
global.rounds_finished=0;
global.rounds_player1_won=0;
global.rounds_player2_won=0;
global.character_selected="";
global.bot_selected=obj_Goku_ai;

reset_round=false;

global.summonShenron_animation=true;
if(file_exists("saveData.ini")){
	ini_open("saveData.ini");
		global.keyUp=ini_read_real("Controls","keyUp",vk_up);
		global.keyDown=ini_read_real("Controls","keyDown",vk_down);
		global.keyLeft=ini_read_real("Controls","keyLeft",vk_left);
		global.keyRight=ini_read_real("Controls","keyRight",vk_right);
		global.keyPunch=ini_read_real("Controls","keyPunch",ord("Z"));
		global.keyKick=ini_read_real("Controls","keyKick",ord("X"));
		global.KeySpecial=ini_read_real("Controls","KeySpecial",ord("C"));
		global.keyDodge=ini_read_real("Controls","keyDodge",vk_shift);
		global.keyCharge=ini_read_real("Controls","keyCharge",ord("A"));
		global.keyJump=ini_read_real("Controls","keyJump",vk_space);
	ini_close();
}
else{
	ini_open("saveData.ini");
		ini_write_real("Controls","keyUp",vk_up);
		ini_write_real("Controls","keyDown",vk_down);
		ini_write_real("Controls","keyLeft",vk_left);
		ini_write_real("Controls","keyRight",vk_right);
		ini_write_real("Controls","keyPunch",ord("Z"));
		ini_write_real("Controls","keyKick",ord("X"));
		ini_write_real("Controls","KeySpecial",ord("C"));
		ini_write_real("Controls","keyDodge",vk_shift);
		ini_write_real("Controls","keyCharge",ord("A"));
		ini_write_real("Controls","keyJump",vk_space);
	ini_close();
	global.keyUp=vk_up;
	global.keyDown=vk_down;
	global.keyLeft=vk_left;
	global.keyRight=vk_right;
	global.keyPunch=ord("Z");
	global.keyKick=ord("X");
	global.KeySpecial=ord("C");
	global.keyDodge=vk_shift;
	global.keyCharge=ord("A");
	global.keyJump=vk_space;
}
enum PSTATE {
	IDLE,
	MOVING_FORWARD,
	BLOCKING,
	DASHING,
	DASHING_BACK,
	JUMPING,
	FLYING_IDLE,
	FLYING_MOVING_FORWARD,
	FLYING_BLOCKING,
	DODGING,
	CHARGING,
	TIRED,
	HIT,
	CROUCHING_IDLE,
	CROUCHING_BLOCKING,
	LIGHT_PUNCHING,
	LIGHT_KICKING,
	CROUCHING_PUNCH,
	CROUCHING_KICK,
	UP_KICK_GROUND,
	DOWN_KICK,
	UP_KICK_AIR,
	UP_PUNCH_GROUND,
	SIDE_KICK_AIR,
	BACK_KICK_AIR,
	DOWN_PUNCH,
	SIDE_PUNCH_AIR,
	BACK_PUNCH_AIR,
	shoot_ONCE,
	shoot_MULTIPLE,
	KAMEHAMEHA,
	ULTIMATE1,
	ULTIMATE2,
	GROUNDED,
	DEATH,
	WIN_ROUND,
	WIN_GAME
}
enum ESTATE {
	IDLE,
	MOVING_FORWARD,
	BLOCKING,
	DASHING,
	DASHING_BACK,
	JUMPING,
	FLYING_IDLE,
	FLYING_MOVING_FORWARD,
	FLYING_BLOCKING,
	DODGING,
	CHARGING,
	TIRED,
	HIT,
	CROUCHING_IDLE,
	CROUCHING_BLOCKING,
	LIGHT_PUNCHING,
	LIGHT_KICKING,
	CROUCHING_PUNCH,
	CROUCHING_KICK,
	UP_KICK_GROUND,
	DOWN_KICK,
	UP_KICK_AIR,
	UP_PUNCH_GROUND,
	SIDE_KICK_AIR,
	BACK_KICK_AIR,
	DOWN_PUNCH,
	SIDE_PUNCH_AIR,
	BACK_PUNCH_AIR,
	shoot_ONCE,
	shoot_MULTIPLE,
	KAMEHAMEHA,
	ULTIMATE1,
	ULTIMATE2,
	GROUNDED,
	DEATH,
	WIN_ROUND,
	WIN_GAME
}