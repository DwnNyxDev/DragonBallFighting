function scr_recieved_packet(argument0) {
	var buffer = argument0;
	var message_id = buffer_read(buffer,buffer_u8); //100,120

	switch (message_id) {
		case 1:
			if(instance_exists(obj_server)){
					with(global.obj_player_2){
						state=buffer_read(buffer,buffer_u32);
						x=buffer_read(buffer,buffer_u32);
						y=buffer_read(buffer,buffer_u32);
						sprite_index=buffer_read(buffer,buffer_u32);
						image_index=buffer_read(buffer,buffer_u32);
						image_xscale=buffer_read(buffer,buffer_s8);
						ki=buffer_read(buffer,buffer_s8);
						stamina=buffer_read(buffer,buffer_s8);
					}
			}
			else{
				with(global.obj_player_1){
						state=buffer_read(buffer,buffer_u32);
						x=buffer_read(buffer,buffer_u32);
						y=buffer_read(buffer,buffer_u32);
						sprite_index=buffer_read(buffer,buffer_u32);
						image_index=buffer_read(buffer,buffer_u32);
						image_xscale=buffer_read(buffer,buffer_s8);
						ki=buffer_read(buffer,buffer_s8);
						stamina=buffer_read(buffer,buffer_s8);
					}
			}
				break;
			case 3:
				if(instance_exists(obj_client)){
						with(global.obj_player_1){
							if(hitbox!=-1&&!instance_exists(hitbox)){
								hitbox=hitbox_create(0,0,0,0,buffer_read(buffer,buffer_s32),buffer_read(buffer,buffer_s32),buffer_read(buffer,buffer_s32),buffer_read(buffer,buffer_s32),buffer_read(buffer,buffer_s32),buffer_read(buffer,buffer_s32));
								global.obj_player_2.hit=true;
								global.obj_player_2.hitBy=hitbox;
								hitbox.can_hit=false;
							}
						
						}
				}
				else if(instance_exists(obj_server)){
					/*
					buffer_write(client_buffer,buffer_s32,hitBy.life);
					buffer_write(client_buffer,buffer_s32,hitBy.xHit);
					buffer_write(client_buffer,buffer_s32,hitBy.yHit);
					buffer_write(client_buffer,buffer_s32,hitBy.hitStun);
					buffer_write(client_buffer,buffer_s32,hitBy.energy_drain);
					buffer_write(client_buffer,buffer_s32,hitBy.health_drain);
					*/
					with(global.obj_player_2){
						if(hitbox!=-1&&!instance_exists(hitbox)){
							hitbox=hitbox_create(0,0,0,0,buffer_read(buffer,buffer_s32),buffer_read(buffer,buffer_s32),buffer_read(buffer,buffer_s32),buffer_read(buffer,buffer_s32),buffer_read(buffer,buffer_s32),buffer_read(buffer,buffer_s32));
							global.obj_player_1.hit=true;
							global.obj_player_1.hitBy=hitbox;
							hitbox.can_hit=false;
						}
					}
				}
			
			

	
	}


}
