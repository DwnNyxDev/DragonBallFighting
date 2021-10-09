/// @description Insert description here
// You can write your code in this editor
show_debug_message("Event = " + async_load[? "event_type"]);  
if(async_load[? "event_type"] =  "gamepad discovered"&&global.gp_connected=-1){
	for (var index=0; index<gp_num;index++){
		if(gamepad_is_connected(index)){
			show_debug_message("gamepad "+string(index)+" connected");
			show_debug_message(gamepad_get_description(index));
			global.gp_connected=index;
		}
	}
}
else if(async_load[? "event_type"] =  "gamepad lost"&&global.gp_connected!=-1){
	global.gp_connected=-1;
}