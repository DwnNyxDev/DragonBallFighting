/// @description Insert description here
// You can write your code in this editor
if(gamepad_button_check_pressed(global.gp_connected,gp_face1)&&selected){
	if(type="Start"){
			room_goto(Character_Select_Room);
		
	}
	else if(type="Controls"){
		room_goto(OptionsRoom)
	}
	else if(type="Tutorial"){
		room_goto(TutorialRoom)
	}
	else if(type="Back"){
		room_goto(Start_Screen);
	}
}

if(selected){
	if(type="Start"||type="Back"||type="Tutorial"){
		sprite_index=spr_startButtons_1ball_hover;
	}
	else if(type="Controls"){
		sprite_index=spr_startButtons_2ball_hover;
	}
}
else{
	if(type="Start"||type="Back"||type="Tutorial"){
		sprite_index=spr_startButtons_1ball;
	}
	else if(type="Controls"){
		sprite_index=spr_startButtons_2ball;
	}
}