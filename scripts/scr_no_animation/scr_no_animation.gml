function scr_no_animation() {
	if(image_alpha>0){
		image_alpha-=.05;
	}
	else if(sprite_index!=-1){
		sprite_index=-1;
	}


}
