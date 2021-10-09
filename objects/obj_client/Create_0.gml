/// @description Initialize the client
// You can write your code in this editor
type =network_socket_tcp
ip = "127.0.0.1";
port = 7504;
connected=false;
network_set_config(network_config_connect_timeout,1000);
network_set_config(network_config_use_non_blocking_socket,1);
socket=network_create_socket(type);
connection=network_connect(socket,ip,port);
if(connection>=0){
	connected=true;
	global.obj_player_1 = instance_create_layer(358,612,"Instances",obj_Goku_multiplayer);
	global.obj_player_2=instance_create_layer(539,612,"Instances",obj_Goku_player);
	global.obj_player_1.enemy=global.obj_player_2;
	global.obj_player_2.enemy=global.obj_player_1;
	alarm[0]=room_speed*1;
}

can_send_data=false;
var size=1024;
var type= buffer_fixed;
var alignment = 1;
client_buffer= buffer_create(size,type,alignment);

