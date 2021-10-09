/// @description Insert description here
// You can write your code in this editor
if(image_xscale=1){
	special_attack1[2]="Press "+string(get_character(global.keyDown))+", "+string(get_character(global.keyRight))+", "+string(get_character(global.keyPunch))+" to fire a ki blast."
	special_attack2[2]="Press "+string(get_character(global.keyLeft))+", "+string(get_character(global.keyDown))+", "+string(get_character(global.keyRight))+", "+string(get_character(global.keyPunch))+" to fire a ki blast."
}
else{
	special_attack1[2]="Press "+string(get_character(global.keyDown))+", "+string(get_character(global.keyLeft))+", "+string(get_character(global.keyPunch))+" to fire a ki blast."
	special_attack2[2]="Press "+string(get_character(global.keyRight))+", "+string(get_character(global.keyDown))+", "+string(get_character(global.keyLeft))+", "+string(get_character(global.keyPunch))+" to fire a kamehameha."
}

if(keyboard_check_pressed(vk_enter)&&!freePlay_lesson){
	if(welcome_message){
		welcome_message=false;
		left_right_lesson=true;
	}
	else if(left_right_lesson){
		left_right_lesson=false;
		jumping_lesson=true;
	}
	else if(jumping_lesson){
		jumping_lesson=false;
		crouching_lesson=true;
	}
	else if(crouching_lesson){
		crouching_lesson=false;
		dashing_lesson=true;
	}
	else if(dashing_lesson){
		dashing_lesson=false;
		flying_lesson=true;
	}
	else if(flying_lesson){
		flying_lesson=false;
		flying_lesson2=true;
	}
	else if(flying_lesson2){
		flying_lesson2=false;
		basic_attack_lesson=true;
	}
	else if(basic_attack_lesson){
		basic_attack_lesson=false;
		directional_attack_lesson=true;
	}
	else if(directional_attack_lesson){
		directional_attack_lesson=false;
		aerial_attack_lesson=true;
	}
	else if(aerial_attack_lesson){
		aerial_attack_lesson=false;
		special_attack_lesson1=true;
	}
	else if(special_attack_lesson1){
		special_attack_lesson1=false;
		charging_lesson=true;
	}
	else if(charging_lesson){
		charging_lesson=false;
		special_attack_lesson2=true;
	}
	else if(special_attack_lesson2){
		special_attack_lesson2=false;
		ultimate_attack_lesson1=true;
	}
	else if(ultimate_attack_lesson1){
		ultimate_attack_lesson1=false;
		ultimate_attack_lesson2=true;
	}
	else if(ultimate_attack_lesson2){
		ultimate_attack_lesson2=false;
		dodging_lesson=true;
	}
	else if(dodging_lesson){
		dodging_lesson=false;
		blocking_lesson=true;
	}
	else if(blocking_lesson){
		blocking_lesson=false;
		parrying_lesson=true;
	}
	else if(parrying_lesson){
		parrying_lesson=false;
		tired_lesson=true;
	}
	else if(tired_lesson){
		tired_lesson=false;
		freePlay_lesson=true;
	}
	alarm[0]=room_speed*2;
}
if(left_right_index=2&&left_right_lesson){
		if(keyboard_check(global.keyLeft)||keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padl)||gamepad_button_check(global.gp_connected,gp_padr)){
				progress+=.2;
			if(progress>=100){
				left_right_index=3;
				alarm[0]=4*string_length(left_right[left_right_index]);
				progress=0;
			}
		}
}
else if(jumping_index=0&&jumping_lesson){
	if(keyboard_check_pressed(global.keyJump)||gamepad_button_check_pressed(global.gp_connected,gp_face1)){
				progress+=100;
			if(progress>=100){
				jumping_index=1;
				alarm[0]=4*string_length(jumping[jumping_index]);
				progress=0;
			}
		}
}
else if(crouching_index=0&&crouching_lesson){
	if(global.obj_player_1.state=PSTATE.CROUCHING_IDLE){
				progress+=1;
			if(progress>=100){
				crouching_index=1;
				alarm[0]=4*string_length(crouching[crouching_index]);
				progress=0;
			}
		}
}
else if(dashing_index=1&&dashing_lesson){
	if(global.obj_player_1.state=PSTATE.DASHING||global.obj_player_1.state=PSTATE.DASHING_BACK){
				progress+=1;
			if(progress>=100){
				dashing_index=2;
				alarm[0]=4*string_length(dashing[dashing_index]);
				progress=0;
			}
		}
}
else if(flying_index=0&&flying_lesson){
	if(global.obj_player_1.state=PSTATE.FLYING_IDLE){
				progress+=100;
			if(progress>=100){
				flying_index=1;
				alarm[0]=4*string_length(flying[flying_index]);
				progress=0;
			}
		}
}
else if(flying2_index=1&&flying_lesson2){
	if(global.obj_player_1.flying=false){
				progress+=100;
			if(progress>=100){
				flying2_index=2;
				alarm[0]=4*string_length(flying2[flying2_index]);
				progress=0;
			}
		}
}
else if(basic_attack_index=2&&basic_attack_lesson){
	if(global.obj_player_1.state=PSTATE.LIGHT_PUNCHING||global.obj_player_1.state=PSTATE.LIGHT_KICKING){
				progress+=.5;
			if(progress>=100){
				basic_attack_index=3;
				alarm[0]=4*string_length(basic_attack[basic_attack_index]);
				progress=0;
			}
		}
}
else if(directional_attack_index=2&&directional_attack_lesson){
	if(global.obj_player_1.state=PSTATE.UP_PUNCH_GROUND||global.obj_player_1.state=PSTATE.UP_KICK_GROUND||global.obj_player_1.state=PSTATE.CROUCHING_KICK||global.obj_player_1.state=PSTATE.CROUCHING_PUNCH){
				progress+=.25;
			if(progress>=100){
				directional_attack_index=3;
				alarm[0]=4*string_length(directional_attack[directional_attack_index]);
				progress=0;
			}
		}
}
else if(aerial_attack_index=2&&aerial_attack_lesson){
	if(global.obj_player_1.state=PSTATE.SIDE_KICK_AIR||global.obj_player_1.state=PSTATE.SIDE_PUNCH_AIR||global.obj_player_1.state=PSTATE.DOWN_KICK||global.obj_player_1.state=PSTATE.DOWN_PUNCH||global.obj_player_1.state=PSTATE.BACK_PUNCH_AIR||global.obj_player_1.state=PSTATE.BACK_KICK_AIR||global.obj_player_1.state=PSTATE.UP_KICK_AIR){
				progress+=.25;
			if(progress>=100){
				aerial_attack_index=3;
				alarm[0]=4*string_length(aerial_attack[aerial_attack_index]);
				progress=0;
			}
		}
}
else if(special_attack1_index=2&&special_attack_lesson1){
	if(global.obj_player_1.state=PSTATE.shoot_ONCE||global.obj_player_1.state=PSTATE.shoot_MULTIPLE){
				progress+=.5;
			if(progress>=100){
				special_attack1_index=3;
				alarm[0]=4*string_length(special_attack1[special_attack1_index]);
				progress=0;
			}
		}
}
else if(charging_index=2&&charging_lesson){
	if(global.obj_player_1.ki>=100&&global.obj_player_1.state=PSTATE.CHARGING){
				progress+=100;
			if(progress>=100){
				charging_index=3;
				alarm[0]=4*string_length(charging[charging_index]);
				progress=0;
			}
		}
}
else if(special_attack2_index=2&&special_attack_lesson2){
	if(global.obj_player_1.state=PSTATE.KAMEHAMEHA){
				progress+=100;
			if(progress>=100){
				special_attack2_index=3;
				alarm[0]=4*string_length(special_attack2[special_attack2_index]);
				progress=0;
			}
		}
}
else if(ultimate_attack1_index=2&&ultimate_attack_lesson1){
	if(global.obj_player_1.Genkidama_charge>=100){
				progress+=100;
			if(progress>=100){
				ultimate_attack1_index=3;
				alarm[0]=4*string_length(ultimate_attack1[ultimate_attack1_index]);
				progress=0;
			}
		}
}
else if(ultimate_attack2_index=2&&ultimate_attack_lesson2){
	if(global.obj_player_1.state=PSTATE.ULTIMATE2){
				progress+=100;
			if(progress>=100){
				ultimate_attack2_index=3;
				alarm[0]=4*string_length(ultimate_attack2[ultimate_attack2_index]);
				progress=0;
			}
		}
}
else if(dodging_index=2&&dodging_lesson){
	if(keyboard_check_pressed(global.keyDodge)){
				progress+=34;
			if(progress>=100){
				dodging_index=3;
				alarm[0]=4*string_length(dodging[dodging_index]);
				progress=0;
			}
		}
}
else if(blocking_index=2&&blocking_lesson){
	with(global.obj_player_2){
		player_active=true;
		is_visible=true;
		can_be_hit=false;
		image_alpha=1;
	}
	if(global.obj_player_1.attack_blocked){
				progress+=34;
			if(progress>=100){
				blocking_index=3;
				alarm[0]=4*string_length(blocking[blocking_index]);
				progress=0;
				with(global.obj_player_2){
					player_active=false;
					is_visible=false;
					can_be_hit=false;
					xspeed=0;
					yspeed=0;
					x=539;
					y=612;
					state=ESTATE.IDLE;
					image_alpha=0;
				}
			}
		}
}
else if(parrying_index=2&&parrying_lesson){
	with(global.obj_player_2){
		player_active=true;
		is_visible=true;
		can_be_hit=false;
		image_alpha=1;
	}
	if(global.obj_player_1.attack_parried){
				progress+=34;
			if(progress>=100){
				parrying_index=3;
				alarm[0]=4*string_length(parrying[parrying_index]);
				progress=0;
				with(global.obj_player_2){
					player_active=false;
					is_visible=false;
					can_be_hit=false;
					xspeed=0;
					yspeed=0;
					x=539;
					y=612;
					state=ESTATE.IDLE;
					image_alpha=0;
				}
			}
		}
}
else if(tired_index=2&&tired_lesson){
	with(global.obj_player_2){
		player_active=true;
		practice_ai="tired";
		is_visible=true;
		can_be_hit=true;
		image_alpha=1;
	}
	if(global.obj_player_2.state=ESTATE.TIRED){
				progress+=100;
			if(progress>=100){
				tired_index=3;
				alarm[0]=4*string_length(tired[tired_index]);
				progress=0;
				with(global.obj_player_2){
					practice_ai="none";
				}
			}
		}
}
else if(freePlay_index=2&&freePlay_lesson){
	with(global.obj_player_2){
		player_active=true;
		is_visible=true;
		can_be_hit=true;
		image_alpha=1;
	}
	if(keyboard_check_pressed(ord("1"))){
		global.obj_player_2.practice_ai="blocking";
	}
	else if(keyboard_check_pressed(ord("2"))){
		global.obj_player_2.practice_ai="tired";
	}
	else if(keyboard_check_pressed(ord("3"))){
		instance_destroy(global.obj_player_1);
		instance_destroy(global.obj_player_2);
		global.obj_player_1 = instance_create_layer(358,612,"Instances",obj_Goku_player);
		global.obj_player_2=instance_create_layer(539,612,"Instances",obj_Goku_trainer);
		global.obj_player_1.enemy=global.obj_player_2;
		global.obj_player_2.enemy=global.obj_player_1;
	}
	else if(keyboard_check_pressed(ord("4"))){
		global.obj_player_2.practice_ai="none";
	}
}
