function scr_lightPunchGoku2() {


	if(image_index>1&&image_index<2&&hitbox=-1){
		hitbox=hitbox_create(image_xscale,1,0*image_xscale,0,10*(1/global.RelativeSpeed),3*image_xscale,0,30,4,2);
		hitbox.sprite_index=spr_lightPunch_hitbox;
	}

	if(image_index>2&&(keyboard_check_pressed(global.keyKick)||gamepad_button_check_pressed(global.gp_connected,gp_face4))&&!(keyboard_check(global.keyDown)||gamepad_button_check(global.gp_connected,gp_padd))){
		if(hitbox!=-1){
			instance_destroy(hitbox);
			hitbox=-1;
		}
		state=PSTATE.LIGHT_KICKING
	}




}
