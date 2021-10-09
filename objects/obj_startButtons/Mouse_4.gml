/// @description Insert description here
// You can write your code in this editor
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
