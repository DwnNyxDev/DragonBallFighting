/// @description Insert description here
// You can write your code in this editor
if(name="upBtn"){
	symbol=get_character(global.keyUp);
}
else if(name="downBtn"){
	symbol=get_character(global.keyDown);
}
else if(name="leftBtn"){
	symbol=get_character(global.keyLeft);
}
else if(name="rightBtn"){
	symbol=get_character(global.keyRight);
}
else if(name="punchBtn"){
	symbol=get_character(global.keyPunch);
}
else if(name="kickBtn"){
	symbol=get_character(global.keyKick);
}
else if(name="specialBtn"){
	symbol=get_character(global.KeySpecial);
}
else if(name="dodgeBtn"){
	symbol=get_character(global.keyDodge);
}
else if(name="chargeBtn"){
	symbol=get_character(global.keyCharge);
}
else if(name="jumpBtn"){
	symbol=get_character(global.keyJump);
}

if(keyboard_check_pressed(vk_anykey)&&change_control){
	if(keyboard_key=vk_up||keyboard_key=vk_down||keyboard_key=vk_left||keyboard_key=vk_right||keyboard_key=vk_space||keyboard_key=vk_shift||keyboard_key=vk_control||(keyboard_key>=65&&keyboard_key<=90)){
		if(name="upBtn"){
			global.keyUp=keyboard_key;
		}
		else if(name="downBtn"){
			global.keyDown=keyboard_key;
		}
		else if(name="leftBtn"){
			global.keyLeft=keyboard_key;
		}
		else if(name="rightBtn"){
			global.keyRight=keyboard_key;
		}
		else if(name="punchBtn"){
			global.keyPunch=keyboard_key;
		}
		else if(name="kickBtn"){
			global.keyKick=keyboard_key;
		}
		else if(name="specialBtn"){
			global.KeySpecial=keyboard_key;
		}
		else if(name="dodgeBtn"){
			global.keyDodge=keyboard_key;
		}
		else if(name="chargeBtn"){
			global.keyCharge=keyboard_key;
		}
		else if(name="jumpBtn"){
			global.keyJump=keyboard_key;
		}
	}
	save_game();
}
