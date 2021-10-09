/// @description Insert description here
// You can write your code in this editor
type=network_socket_tcp
socket=noone;
port=7504;
max_clients=1;
players=ds_list_create();
server = network_create_server(type,port,max_clients);

var size=1024;
var type= buffer_fixed;
var alignment = 1;
server_buffer= buffer_create(size,type,alignment);