/// @description Insert description here
// You can write your code in this editor
player=global.obj_player_1;
if(socket!=noone){
	show_debug_message("sending packets");
	buffer_seek(server_buffer,buffer_seek_start,0);
	buffer_write(server_buffer,buffer_u8,1);
	buffer_write(server_buffer,buffer_u32,player.state);
	buffer_write(server_buffer,buffer_u32,player.x);
	buffer_write(server_buffer,buffer_u32,player.y);
	buffer_write(server_buffer,buffer_u32,player.sprite_index);
	buffer_write(server_buffer,buffer_u32,player.image_index);
	buffer_write(server_buffer,buffer_s8,player.image_xscale);
	buffer_write(server_buffer,buffer_s8,player.ki);
	buffer_write(server_buffer,buffer_s8,player.stamina);
	network_send_packet(socket,server_buffer,buffer_tell(server_buffer));
}
