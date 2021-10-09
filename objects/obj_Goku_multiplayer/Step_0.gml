/// @description Insert description here
// You can write your code in this editor
image_speed=global.RelativeSpeed;
if(enemy.death_animation){
	if (image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){
		image_index=image_number-1;
		sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
		xspeed=0;
		yspeed=0;
	}
}
any_pressed = false

show_debug_message(hitbox);


/*
if(!global.paused&&player_active){
	if(state=PSTATE.IDLE){
		blocking=false;
		crouching=false;
		scr_IdleGoku();
		scr_jump();
		scr_attack();
		scr_dodge();
		scr_charge();
		scr_crouch();


	}
	else if(state=PSTATE.MOVING_FORWARD){
		blocking=false;
		crouching=false;
		scr_movingForwardGoku();
		scr_jump();
		scr_attack();
		scr_dodge();
		scr_charge();
		scr_crouch();

	}
	else if(state=PSTATE.BLOCKING){
		blocking=true;
		crouching=false;
		scr_blockingGoku();
		scr_jump();
		scr_attack();
		scr_dodge();
		scr_charge();
		scr_crouch();

	}
	else if(state=PSTATE.DASHING){
		blocking=false;
		crouching=false;
		scr_dashingGoku();

	}
	else if(state=PSTATE.DASHING_BACK){
		blocking=false;
		crouching=false;
		scr_dashingBack();
	

	}
	else if(state=PSTATE.JUMPING){
		blocking=false;
		crouching=false;
		scr_jumpingGoku();
		scr_attack();
		scr_dodge();

	
	
	}
	else if(state=PSTATE.FLYING_IDLE){
		blocking=false;
		crouching=false;
		scr_flyingIdle();

		scr_attack();
		scr_dodge();
		scr_charge();

	}
	else if(state=PSTATE.FLYING_MOVING_FORWARD){
		blocking=false;
		crouching=false;
		scr_flyingMoving();
		scr_attack();
		scr_dodge();
		scr_charge();

	}
	else if(state=PSTATE.FLYING_BLOCKING){
		blocking=true;
		crouching=false;
		scr_flyingBlocking();
		scr_attack();
		scr_dodge();
		scr_charge();

	}


	else if(state=PSTATE.DODGING){
		blocking=false;
		crouching=false;
		scr_dodgingGoku();	
	}
	else if(state=PSTATE.CHARGING){
		blocking=false;
		crouching=false;
		scr_chargingGoku();	
		scr_dodge();
	}
	else if(state=PSTATE.TIRED){
		blocking=false;
		crouching=false;
		scr_tiredGoku();	
	}

	else if(state=PSTATE.HIT){
		blocking=false;
		crouching=false;
		scr_hitGoku();	
		scr_dodge();
	}
	else if(state=PSTATE.CROUCHING_IDLE){
		blocking=false;
		crouching=true;
		scr_crouchingIdleGoku();
		scr_attack();
		scr_dodge();

	}
	else if(state=PSTATE.CROUCHING_BLOCKING){
		blocking=true;
		crouching=true;
		scr_crouchingBlockGoku();	
		scr_attack();
		scr_dodge();

	}
	
	 if(state=PSTATE.LIGHT_PUNCHING){
		blocking=false;
		crouching=false;
		scr_lightPunchGoku2();
		scr_dodge();
	}
	else if(state=PSTATE.LIGHT_KICKING){
		blocking=false;
		crouching=false;
		scr_lightKickGoku2();
		scr_dodge();
	}
	else if(state=PSTATE.CROUCHING_PUNCH){
		blocking=false;
		crouching=true;
		scr_crouchingPunchGoku2();
		scr_dodge();
	}
	else if(state=PSTATE.CROUCHING_KICK){
		blocking=false;
		crouching=true;
		scr_crouchingKickGoku2();
		scr_dodge();
	}
	else if(state=PSTATE.UP_KICK_GROUND){
		blocking=false;
		crouching=false;
		scr_upKickGroundGoku2();
		scr_dodge();
	}
	else if(state=PSTATE.UP_KICK_AIR){
		blocking=false;
		crouching=false;
		scr_upKickAirGoku2();
		scr_dodge();
	}
	else if(state=PSTATE.UP_PUNCH_GROUND){
		blocking=false;
		crouching=false;
		scr_upPunchGroundGoku2();
		scr_dodge();
	}
	else if(state=PSTATE.DOWN_KICK){
		blocking=false;
		crouching=false;
		scr_downKickGoku2();
		scr_dodge();
	}
	else if(state=PSTATE.SIDE_KICK_AIR){
		blocking=false;
		crouching=false;
		scr_sideKickAirGoku2();
		scr_dodge();
	}
	else if(state=PSTATE.BACK_KICK_AIR){
		blocking=false;
		crouching=false;
		scr_backKickAirGoku3();
		scr_dodge();
	}
	else if(state=PSTATE.DOWN_PUNCH){
		blocking=false;
		crouching=false;
		scr_downPunchGoku2();
		scr_dodge();
	}
	else if(state=PSTATE.SIDE_PUNCH_AIR){
		blocking=false;
		crouching=false;
		scr_sidePunchAirGoku2();
		scr_dodge();
	}
	else if(state=PSTATE.BACK_PUNCH_AIR){
		blocking=false;
		crouching=false;
		scr_backPunchAirGoku3();
		scr_dodge();
	}
	/*
	else if(state=PSTATE.shoot_ONCE){
		blocking=false;
		crouching=false;
		scr_shootOnceGoku();
		scr_dodge();
	}
	else if(state=PSTATE.shoot_MULTIPLE){
		blocking=false;
		crouching=false;
		scr_shootMultipleGoku();
		scr_dodge();
	}
	else if(state=PSTATE.KAMEHAMEHA){
		blocking=true;
		crouching=false;
		scr_KamehamehaGoku();
		scr_dodge();
	}
	else if(state=PSTATE.ULTIMATE1){
		blocking=false;
		crouching=false;
		scr_ChargeGenkidamaGoku();
		scr_dodge();
	}
	else if(state=PSTATE.ULTIMATE2){
		blocking=false;
		crouching=false;
		scr_ThrowGenkidamaGoku();
	}
	else if(state=PSTATE.GROUNDED){
		blocking=false;
		crouching=false;
		scr_groundedGoku()
	}
}

else{
	if(instance_exists(hitbox)&&hitbox!=-1){
		instance_destroy(hitbox);
	}
}
/*
if(state=PSTATE.DEATH){
	scr_deathGoku();
}
else if(state=PSTATE.WIN_ROUND){
	scr_winRoundGoku();
}
else if(state=PSTATE.WIN_GAME){
	scr_winGameGoku();
}
*/
//whichever side the player is moving horizontally
//is the side that collides
if(xspeed>0){
	side=bbox_right;
}
else if(xspeed<0){
	side=bbox_left;
}
//collisions with the vertical edge of map


if(hit&&state!=PSTATE.DODGING&&state!=PSTATE.GROUNDED&&sprite_index!=spr_hitGokuGrounded){
/*_hitbox.life = argument4;
_hitbox.xHit = argument5;
_hitbox.yHit=argument6;
_hitbox.hitStun = argument7;
_hitbox.energy_drain=argument8;
_hitbox.health_drain=argument9;
*/
	if(instance_exists(hitBy)){
		if(instance_exists(obj_server)){
			with(obj_server){
				buffer_seek(server_buffer,buffer_seek_start,0);
				buffer_write(server_buffer,buffer_u8,3);
				buffer_write(server_buffer,buffer_s32,obj_Goku_multiplayer.hitBy.life);
				buffer_write(server_buffer,buffer_s32,obj_Goku_multiplayer.hitBy.xHit);
				buffer_write(server_buffer,buffer_s32,obj_Goku_multiplayer.hitBy.yHit);
				buffer_write(server_buffer,buffer_s32,obj_Goku_multiplayer.hitBy.hitStun);
				buffer_write(server_buffer,buffer_s32,obj_Goku_multiplayer.hitBy.energy_drain);
				buffer_write(server_buffer,buffer_s32,obj_Goku_multiplayer.hitBy.health_drain);
				network_send_packet(socket,server_buffer,buffer_tell(server_buffer));
			}
		}
		else if(instance_exists(obj_client)){
			with(obj_client){
				buffer_seek(client_buffer,buffer_seek_start,0);
				buffer_write(client_buffer,buffer_u8,3);
				buffer_write(client_buffer,buffer_s32,obj_Goku_multiplayer.hitBy.life);
				buffer_write(client_buffer,buffer_s32,obj_Goku_multiplayer.hitBy.xHit);
				buffer_write(client_buffer,buffer_s32,obj_Goku_multiplayer.hitBy.yHit);
				buffer_write(client_buffer,buffer_s32,obj_Goku_multiplayer.hitBy.hitStun);
				buffer_write(client_buffer,buffer_s32,obj_Goku_multiplayer.hitBy.energy_drain);
				buffer_write(client_buffer,buffer_s32,obj_Goku_multiplayer.hitBy.health_drain);
				network_send_packet(socket,client_buffer,buffer_tell(client_buffer));
			}
		}
		if(!blocking||(enemy.crouching&&state!=PSTATE.CROUCHING_BLOCKING)){
			xspeed = hitBy.xHit;
			yspeed=hitBy.yHit;
			if(state=PSTATE.ULTIMATE1){
				Genkidama_charge/=2;
			}
			out_of_combat=false;
			alarm[9]=room_speed*3+hitBy.hitStun;
		}
		else if(blocking&&!can_parry){
			xspeed = hitBy.xHit/2;
			attack_blocked=true;
		}
		else if(blocking&&can_parry){
			new_hitbox=hitbox_create(0,0,0,0,5,2*image_xscale,0,60,2,2);
			if(hitBy.owner.type!="ranged"){
				enemy.hit=true;
				enemy.hitBy=new_hitbox;
			}
			attack_blocked=true;
			attack_parried=true;
			
		}
		if(hitbox!=-1){
			instance_destroy(hitbox);
			hitbox=-1;
		}
		if(yspeed<0&&!jumping&&!flying){
			jumping=true;
		}
		if(!blocking||(enemy.crouching&&state!=PSTATE.CROUCHING_BLOCKING)){
			hitStun = hitBy.hitStun;
			player_health-=hitBy.health_drain*lerp(2,1,stamina/100);
			if(player_health<=0&&room!=TutorialRoom){
				player_health=0;
				death_animation=true;
			}

				if(stamina>hitBy.energy_drain>0){
					stamina-=hitBy.energy_drain;
				}
				else{
					stamina=0;
				}
			
			
		}
		else if(blocking&&!can_parry){
			if(stamina-hitBy.energy_drain/4>0){
				stamina-=hitBy.energy_drain/4;
			}
			else{
				stamina=0;
			}
			ki-=hitBy.energy_drain*1.5;
			player_health-=(hitBy.health_drain/2)*lerp(2,1,stamina/100);
			if(player_health<=0&&room!=TutorialRoom){
				player_health=0;
				death_animation=true;
			}
		}
		else if(blocking&&can_parry){
			if(stamina<100){
				stamina+=random_range(5,15);
				if(stamina>100){
					stamina=100;
				}
			}
			ki-=hitBy.energy_drain*.5;
			
		}
		if(death_animation){
			state=PSTATE.DEATH;
			yspeed=-7;
			global.timer=-1;
			xspeed=-4*image_xscale;
			player_active=false;
			enemy.player_active=false;
			global.RelativeSpeed=.5;
			alarm_set(7,-1);
		}
		else if(!blocking||(enemy.crouching&&state!=PSTATE.CROUCHING_BLOCKING)){
			if(yspeed<-5){
				if(sprite_index!=spr_hitGokuBigUp){
					sprite_index=spr_hitGokuBigUp;
					image_index=0;
				}
			}
			else if(yspeed<-1&&yspeed>=-5){
				if(sprite_index!=spr_hitGokuLilUp){
					sprite_index=spr_hitGokuLilUp;
					image_index=0;
				}
			}
			else if(yspeed>=-1&&yspeed<=1){
				if(!keyboard_check(vk_f10)||jumping||flying){
					if(sprite_index!=spr_hitGoku1){
						sprite_index=spr_hitGoku1;
						image_index=0;
					}
					else if(hitBy.recurring_damage!="true"){
						sprite_index=spr_hitGoku2;
						image_index=0;
					}
				}
				else{
					if(sprite_index!=spr_hitGokuCrouching1){
						sprite_index=spr_hitGokuCrouching1;
						image_index=0;
					}
					else if(hitBy.recurring_damage!="true"){
						sprite_index=spr_hitGokuCrouching2;
						image_index=0;
					}
				}
				}
			
				else if(yspeed>10){
					if(sprite_index!=spr_hitGokuBigDown&&(jumping||flying)){
						sprite_index=spr_hitGokuBigDown;
						image_index=0;
					}
				}
				else{
					if(sprite_index!=spr_hitGoku1){
							sprite_index=spr_hitGoku1;
							image_index=0;
						}
						else if(hitBy.recurring_damage!="true"){
							sprite_index=spr_hitGoku2;
							image_index=0;
						}
				}
			
			
			
				sprite_set_speed(sprite_index,30,spritespeed_framespersecond);
			
				if(bbox_bottom>obj_ground.y){
					while(bbox_bottom>obj_ground.y){
						y--;
					}
				}
				else if(!jumping&&!flying&&bbox_bottom<obj_ground.y){
					while(bbox_bottom<obj_ground.y){
						y++;
					}
				}
	
		}
		hit = false;
		if(state!=PSTATE.HIT&&!blocking&&!death_animation){
			state = PSTATE.HIT;
		}
		else if((!blocking||(enemy.crouching&&state!=PSTATE.CROUCHING_BLOCKING))&&hitBy.recurring_damage!="true"){
			effect_create_above(ef_ellipse,hitBy.x,hitBy.y,1,c_red);
		}
		else if(blocking&&!can_parry&&hitBy.recurring_damage!="true"){
			effect_create_above(ef_ellipse,hitBy.x,hitBy.y,1,c_blue);
		}
		else if(blocking&&can_parry&&hitBy.recurring_damage!="true"){
			effect_create_above(ef_ellipse,hitBy.x,hitBy.y,1,c_yellow);
		}
		if(instance_exists(hitBy)&&instance_exists(hitBy.owner)){
			if(hitBy.owner.type="ranged"){
				instance_destroy(hitBy.owner);
			}
		}
	}
	
}
if(enemy.x>x-130&&enemy.x<x+130){
	enemy_in_range=true;
}
else{
	enemy_in_range=false;
}
if(enemy.y>y-25&&enemy.y<y+25){
	enemy_in_Yrange=true;
}
else{
	enemy_in_Yrange=false;
}
