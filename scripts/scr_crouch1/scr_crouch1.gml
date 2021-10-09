function scr_crouch1() {
	if(keyboard_check(vk_f10)){
		if(!keyboard_check(vk_f10)&&!keyboard_check(vk_f10)){
			state=ESTATE.CROUCHING_IDLE;
		}
		else if((keyboard_check(vk_f10)&&image_xscale=1)||(keyboard_check(vk_f10)&&image_xscale=-1)){
			state=ESTATE.CROUCHING_BLOCKING;
		}
		else{
			state=ESTATE.CROUCHING_IDLE;
		}
	}


}
