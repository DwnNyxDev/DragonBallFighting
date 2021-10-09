/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1);
draw_set_halign(fa_center);
if(welcome_message){
	draw_text(room_width/2,room_height*.3,welcome[welcome_index]);
}
else if(left_right_lesson){
	if(left_right_index=2){
		draw_text(room_width/2,room_height*.3,left_right[left_right_index-1]);
		draw_text(room_width/2,room_height*.3+20,left_right[left_right_index]);
		draw_healthbar(room_width/2-50,room_height*.3+40,room_width/2+50,room_height*.3+50,progress,c_gray,c_blue,c_aqua,0,true,true);
	}
	else{
		draw_text(room_width/2,room_height*.3,left_right[left_right_index]);
	}
}
else if(jumping_lesson){
	if(jumping_index=0){
		draw_text(room_width/2,room_height*.3,jumping[jumping_index]);
		draw_healthbar(room_width/2-50,room_height*.3+40,room_width/2+50,room_height*.3+50,progress,c_gray,c_blue,c_aqua,0,true,true);
	}
	else{
		draw_text(room_width/2,room_height*.3,jumping[jumping_index]);
	}
}
else if(crouching_lesson){
	if(crouching_index=0){
		draw_text(room_width/2,room_height*.3,crouching[crouching_index]);
		draw_healthbar(room_width/2-50,room_height*.3+40,room_width/2+50,room_height*.3+50,progress,c_gray,c_blue,c_aqua,0,true,true);
	}
	else{
		draw_text(room_width/2,room_height*.3,crouching[crouching_index]);
	}
}
else if(dashing_lesson){
	if(dashing_index=1){
		draw_text(room_width/2,room_height*.3,dashing[dashing_index-1]);
		draw_text(room_width/2,room_height*.3+20,dashing[dashing_index]);
		draw_healthbar(room_width/2-50,room_height*.3+40,room_width/2+50,room_height*.3+50,progress,c_gray,c_blue,c_aqua,0,true,true);
	}
	else{
		draw_text(room_width/2,room_height*.3,dashing[dashing_index]);
	}
}
else if(flying_lesson){
	if(flying_index=0){
		draw_text(room_width/2,room_height*.3,flying[flying_index]);
		draw_healthbar(room_width/2-50,room_height*.3+40,room_width/2+50,room_height*.3+50,progress,c_gray,c_blue,c_aqua,0,true,true);
	}
	else{
		draw_text(room_width/2,room_height*.3,flying[flying_index]);
	}
}
else if(flying_lesson2){
	if(flying2_index=1){
		draw_text(room_width/2,room_height*.3,flying2[flying2_index-1]);
		draw_text(room_width/2,room_height*.3+20,flying2[flying2_index]);
		draw_healthbar(room_width/2-50,room_height*.3+40,room_width/2+50,room_height*.3+50,progress,c_gray,c_blue,c_aqua,0,true,true);
	}
	else{
		draw_text(room_width/2,room_height*.3,flying2[flying2_index]);
	}
}
else if(basic_attack_lesson){
	if(basic_attack_index=2){
		draw_text(room_width/2,room_height*.3,basic_attack[basic_attack_index]);
		draw_healthbar(room_width/2-50,room_height*.3+40,room_width/2+50,room_height*.3+50,progress,c_gray,c_blue,c_aqua,0,true,true);
	}
	else{
		draw_text(room_width/2,room_height*.3,basic_attack[basic_attack_index]);
	}
}
else if(directional_attack_lesson){
	if(directional_attack_index=2){
		draw_text(room_width/2,room_height*.3,directional_attack[directional_attack_index]);
		draw_healthbar(room_width/2-50,room_height*.3+40,room_width/2+50,room_height*.3+50,progress,c_gray,c_blue,c_aqua,0,true,true);
	}
	else{
		draw_text(room_width/2,room_height*.3,directional_attack[directional_attack_index]);
	}
}
else if(aerial_attack_lesson){
	if(aerial_attack_index=2){
		draw_text(room_width/2,room_height*.3,aerial_attack[aerial_attack_index]);
		draw_healthbar(room_width/2-50,room_height*.3+40,room_width/2+50,room_height*.3+50,progress,c_gray,c_blue,c_aqua,0,true,true);
	}
	else{
		draw_text(room_width/2,room_height*.3,aerial_attack[aerial_attack_index]);
	}
}
else if(special_attack_lesson1){
	if(special_attack1_index=2){
		draw_text(room_width/2,room_height*.3,special_attack1[special_attack1_index]);
		draw_healthbar(room_width/2-50,room_height*.3+40,room_width/2+50,room_height*.3+50,progress,c_gray,c_blue,c_aqua,0,true,true);
	}
	else{
		draw_text(room_width/2,room_height*.3,special_attack1[special_attack1_index]);
	}
}
else if(charging_lesson){
	if(charging_index=2){
		draw_text(room_width/2,room_height*.3,charging[charging_index]);
		draw_healthbar(room_width/2-50,room_height*.3+40,room_width/2+50,room_height*.3+50,progress,c_gray,c_blue,c_aqua,0,true,true);
	}
	else{
		draw_text(room_width/2,room_height*.3,charging[charging_index]);
	}
}
else if(special_attack_lesson2){
	if(special_attack2_index=2){
		draw_text(room_width/2,room_height*.3,special_attack2[special_attack2_index]);
		draw_healthbar(room_width/2-50,room_height*.3+40,room_width/2+50,room_height*.3+50,progress,c_gray,c_blue,c_aqua,0,true,true);
	}
	else{
		draw_text(room_width/2,room_height*.3,special_attack2[special_attack2_index]);
	}
}
else if(ultimate_attack_lesson1){
	if(ultimate_attack1_index=2){
		draw_text(room_width/2,room_height*.3,ultimate_attack1[ultimate_attack1_index]);
		draw_healthbar(room_width/2-50,room_height*.3+40,room_width/2+50,room_height*.3+50,progress,c_gray,c_blue,c_aqua,0,true,true);
	}
	else{
		draw_text(room_width/2,room_height*.3,ultimate_attack1[ultimate_attack1_index]);
	}
}
else if(ultimate_attack_lesson2){
	if(ultimate_attack2_index=2){
		draw_text(room_width/2,room_height*.3,ultimate_attack2[ultimate_attack2_index]);
		draw_healthbar(room_width/2-50,room_height*.3+40,room_width/2+50,room_height*.3+50,progress,c_gray,c_blue,c_aqua,0,true,true);
	}
	else{
		draw_text(room_width/2,room_height*.3,ultimate_attack2[ultimate_attack2_index]);
	}
}
else if(dodging_lesson){
	if(dodging_index=2){
		draw_text(room_width/2,room_height*.3,dodging[dodging_index]);
		draw_healthbar(room_width/2-50,room_height*.3+40,room_width/2+50,room_height*.3+50,progress,c_gray,c_blue,c_aqua,0,true,true);
	}
	else{
		draw_text(room_width/2,room_height*.3,dodging[dodging_index]);
	}
}
else if(blocking_lesson){
	if(blocking_index=2){
		draw_text(room_width/2,room_height*.3,blocking[blocking_index]);
		draw_healthbar(room_width/2-50,room_height*.3+40,room_width/2+50,room_height*.3+50,progress,c_gray,c_blue,c_aqua,0,true,true);
	}
	else{
		draw_text(room_width/2,room_height*.3,blocking[blocking_index]);
	}
}
else if(parrying_lesson){
	if(parrying_index=2){
		draw_text(room_width/2,room_height*.3,parrying[parrying_index]);
		draw_healthbar(room_width/2-50,room_height*.3+40,room_width/2+50,room_height*.3+50,progress,c_gray,c_blue,c_aqua,0,true,true);
	}
	else{
		draw_text(room_width/2,room_height*.3,parrying[parrying_index]);
	}
}
else if(tired_lesson){
	if(tired_index=2){
		draw_text(room_width/2,room_height*.3,tired[tired_index]);
		draw_healthbar(room_width/2-50,room_height*.3+40,room_width/2+50,room_height*.3+50,progress,c_gray,c_blue,c_aqua,0,true,true);
	}
	else{
		draw_text(room_width/2,room_height*.3,tired[tired_index]);
	}
}
else if(freePlay_lesson){
	if(freePlay_index=2){
		draw_text(room_width/2,room_height*.3,freePlay[freePlay_index]);
		draw_text(room_width/2,room_height*.3+20,freePlay[freePlay_index+1]);
	}
	else{
		draw_text(room_width/2,room_height*.3,freePlay[freePlay_index]);
	}
}
