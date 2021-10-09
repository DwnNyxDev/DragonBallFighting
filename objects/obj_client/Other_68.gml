/// @description recieveing buffers from server
// You can write your code in this editor
var type_event = async_load[? "type"]

switch(type_event) {
	
	case network_type_data :
		//Handle the data
		show_debug_message("data recieved");
		var buffer = async_load[? "buffer"];
		buffer_seek(buffer, buffer_seek_start,0);
		scr_recieved_packet (buffer);
		break;
}