/// @description Insert description here
// You can write your code in this editor
player=global.obj_player_2;
if(connected=false&&!try_to_connect&&keyboard_check_pressed(vk_enter)){
	try_to_connect=true;
}
if(connected=false&&try_to_connect){
	
	connection=network_connect(socket,ip,port);
	if(connection>=0){
		connected=true;
		global.obj_player_1 = instance_create_layer(358,612,"Instances",obj_Goku_multiplayer);
	global.obj_player_2=instance_create_layer(539,612,"Instances",obj_Goku_player);
	global.obj_player_1.enemy=global.obj_player_2;
	global.obj_player_2.enemy=global.obj_player_1;
	alarm[0]=room_speed*1;
	}
	try_to_connect=false;
}
else if(connected&&can_send_data){
	buffer_seek(client_buffer,buffer_seek_start,0);
	buffer_write(client_buffer,buffer_u8,1);
	buffer_write(client_buffer,buffer_u32,player.state);
	buffer_write(client_buffer,buffer_u32,player.x);
	buffer_write(client_buffer,buffer_u32,player.y);
	buffer_write(client_buffer,buffer_u32,player.sprite_index);
	buffer_write(client_buffer,buffer_u32,player.image_index);
	buffer_write(client_buffer,buffer_s8,player.image_xscale);
	buffer_write(client_buffer,buffer_s8,player.ki);
	buffer_write(client_buffer,buffer_s8,player.stamina);
	network_send_packet(socket,client_buffer,buffer_tell(client_buffer));
}