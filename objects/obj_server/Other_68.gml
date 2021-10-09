/// @description Insert description here
// You can write your code in this editor
/// @description Check for Clients and Data
// You can write your code in this editor

var type_event = async_load[? "type"]

switch(type_event) {
	case network_type_connect : 
		//Add the client to the socket variable
		if(socket=noone){
			socket=async_load[? "socket"];
			global.obj_player_1 = instance_create_layer(358,612,"Instances",obj_Goku_player);
			global.obj_player_2=instance_create_layer(539,612,"Instances",obj_Goku_multiplayer);
			global.obj_player_1.enemy=global.obj_player_2;
			global.obj_player_2.enemy=global.obj_player_1;
		}	
		break;
	
	case network_type_disconnect :
		//Remove the client from the socket variable
		socket=noone;
		
		break;	
	
	case network_type_data :
		//Handle the data
		var buffer = async_load[? "buffer"];
		buffer_seek(buffer, buffer_seek_start,0);
		scr_recieved_packet (buffer);

		break;
}