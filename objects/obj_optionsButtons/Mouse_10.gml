/// @description Insert description here
// You can write your code in this editor
sprite_index=spr_optionsButtons_hover;
with(obj_optionsButtons){
	change_control=false;
}
change_control=true;
if(name="downBtn"){
	obj_showControl.sprite_index=spr_crouchingGoku;
}
else if(name="leftBtn"){
	obj_showControl.sprite_index=spr_blockingGoku;
	obj_showControl.image_index=0;
	sprite_set_speed(obj_showControl.sprite_index,20,spritespeed_framespersecond);
}
else if(name="rightBtn"){
	obj_showControl.sprite_index=spr_movingGoku;
	obj_showControl.image_index=0;
	sprite_set_speed(obj_showControl.sprite_index,20,spritespeed_framespersecond);
}
else if(name="punchBtn"){
	obj_showControl.sprite_index=spr_lightPunchGoku;
	obj_showControl.image_index=0;
	sprite_set_speed(obj_showControl.sprite_index,9,spritespeed_framespersecond);
}
else if(name="kickBtn"){
	obj_showControl.sprite_index=spr_lightKickGoku;
	obj_showControl.image_index=0;
	sprite_set_speed(obj_showControl.sprite_index,11,spritespeed_framespersecond);
}
else if(name="specialBtn"){
	
}
else if(name="dodgeBtn"){
	obj_showControl.sprite_index=spr_dodge;
}
else if(name="chargeBtn"){
	obj_showControl.sprite_index=spr_chargingGoku;
	obj_showControl.image_index=0;
	sprite_set_speed(obj_showControl.sprite_index,10,spritespeed_framespersecond);
}
else if(name="jumpBtn"){
	obj_showControl.sprite_index=spr_jumpingGoku;
	obj_showControl.image_index=0;
	sprite_set_speed(obj_showControl.sprite_index,8,spritespeed_framespersecond);
}
