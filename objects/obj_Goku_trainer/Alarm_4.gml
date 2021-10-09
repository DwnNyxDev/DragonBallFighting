/// @description dodging alarm
// You can write your code in this editor
if(image_alpha=1){

	image_alpha=0;
	alarm[4]=room_speed*.1;
	if(dodge_direction="right"){
		if(instant_transmission_attack){
			while(bbox_left<=enemy.bbox_right){
				x+=1;
			}
			image_xscale=-1;
			ds_list_add(ki_blast_combo,global.keyDown);
			ds_list_add(ki_blast_combo,global.keyLeft);
			ds_list_add(ki_blast_combo,global.keyPunch);
			ki_blast_string="";
			for(var index=0;index<ds_list_size(ki_blast_combo);index++){
				ki_blast_string+=string(ds_list_find_value(ki_blast_combo,index))+",";
			}
			kamehameha_combo=ds_list_create();
			ds_list_add(kamehameha_combo,global.keyRight);
			ds_list_add(kamehameha_combo,global.keyDown);
			ds_list_add(kamehameha_combo,global.keyLeft);
			ds_list_add(kamehameha_combo,global.keyPunch);
			kamehameha_string="";
			for(var index=0;index<ds_list_size(kamehameha_combo);index++){
				kamehameha_string+=string(ds_list_find_value(kamehameha_combo,index))+",";
			}
			y=enemy.y;
			if(enemy.jumping||enemy.flying){
				flying=true;
				jumping=false;
			}
			else{
				flying=false;
				jumping=false;
			}
			if(bbox_right>room_width){
				while(bbox_right>room_width){
					x-=1;
				}
			}
			if(bbox_bottom>obj_ground.y){
				while(bbox_bottom>obj_ground.y){
					y--;
				}
			}
		}
		else{
			if(bbox_right+200>room_width){
				while(bbox_right+1<room_width){
					x+=1;
				}
			}
			else{
				x+=200;
			}
		}
	}
	else if(dodge_direction="left"){
		if(instant_transmission_attack){
			while(bbox_right>=enemy.bbox_left){
				x-=1;
			}

			image_xscale=1;
			ds_list_add(ki_blast_combo,global.keyDown);
			ds_list_add(ki_blast_combo,global.keyRight);
			ds_list_add(ki_blast_combo,global.keyPunch);
			ki_blast_string="";
			for(var index=0;index<ds_list_size(ki_blast_combo);index++){
				ki_blast_string+=string(ds_list_find_value(ki_blast_combo,index))+",";
			}
			kamehameha_combo=ds_list_create();
			ds_list_add(kamehameha_combo,global.keyLeft);
			ds_list_add(kamehameha_combo,global.keyDown);
			ds_list_add(kamehameha_combo,global.keyRight);
			ds_list_add(kamehameha_combo,global.keyPunch);
			kamehameha_string="";
			for(var index=0;index<ds_list_size(kamehameha_combo);index++){
				kamehameha_string+=string(ds_list_find_value(kamehameha_combo,index))+",";
			}
			y=enemy.y;
			if(enemy.jumping||enemy.flying){
				flying=true;
				jumping=false;
			}
			else{
				flying=false;
				jumping=false;
			}
			if(bbox_left<0){
				while(bbox_left<0){
					x+=1;
				}
			}
			if(bbox_bottom>obj_ground.y){
				while(bbox_bottom>obj_ground.y){
					y--;
				}
			}
		}
		else{
			if(bbox_left-200<0){
				while(bbox_left-1>0){
					x-=1;
				}
			}
			else{
				x-=200;
			}
		}
	}
}
else{
	image_alpha=1;
	active_hurtbox=true;
	var rando=random_range(0,100);
	if(ki>33&& rando<lerp(0,75,ki/100)){
		state=ESTATE.KAMEHAMEHA;
		ki-=33;
	}
	else{
		var rando=random_range(0,100);
		if(rando<60){
			go_attack=true;
		}
		if(flying){
			state=ESTATE.FLYING_IDLE;
		}
		else{
			state=ESTATE.IDLE;
		}
	}

}