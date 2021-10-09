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
if(player_active){
	if(state=ESTATE.IDLE){
		blocking=false;
		crouching=false;
		scr_IdleGoku1();
		scr_jump1();
		scr_attack1();
		scr_dodge1();
		scr_charge1();
		scr_crouch1();


	}
	else if(state=ESTATE.MOVING_FORWARD){
		blocking=false;
		crouching=false;
		scr_movingForwardGoku1();
		scr_jump1();
		scr_attack1();
		scr_dodge1();
		scr_charge1();
		scr_crouch1();

	}
	else if(state=ESTATE.BLOCKING){
		blocking=true;
		crouching=false;
		scr_blockingGoku1();
		scr_jump1();
		scr_attack1();
		scr_dodge1();
		scr_charge1();
		scr_crouch1();

	}
	else if(state=ESTATE.DASHING){
		blocking=false;
		crouching=false;
		scr_dashingGoku1();

	}
	else if(state=ESTATE.DASHING_BACK){
		blocking=false;
		crouching=false;
		scr_dashingBack1();
	

	}
	else if(state=ESTATE.JUMPING){
		blocking=false;
		crouching=false;
		scr_jumpingGoku1();
		scr_attack1();
		scr_dodge1();

	
	
	}
	else if(state=ESTATE.FLYING_IDLE){
		blocking=false;
		crouching=false;
		scr_flyingIdle1();

		scr_attack1();
		scr_dodge1();
		scr_charge1();

	}
	else if(state=ESTATE.FLYING_MOVING_FORWARD){
		blocking=false;
		crouching=false;
		scr_flyingMoving1();
		scr_attack1();
		scr_dodge1();
		scr_charge1();

	}
	else if(state=ESTATE.FLYING_BLOCKING){
		blocking=true;
		crouching=false;
		scr_flyingBlocking1();
		scr_attack1();
		scr_dodge1();
		scr_charge1();

	}


	else if(state=ESTATE.DODGING){
		blocking=false;
		crouching=false;
		scr_dodgingGoku1();	
	}
	else if(state=ESTATE.CHARGING){
		blocking=false;
		crouching=false;
		scr_chargingGoku1();	
		scr_dodge1();
	}
	else if(state=ESTATE.TIRED){
		blocking=false;
		crouching=false;
		scr_tiredGoku1();	
	}

	else if(state=ESTATE.HIT){
		blocking=false;
		crouching=false;
		scr_hitGoku1();	
		scr_dodge1();
	}
	else if(state=ESTATE.CROUCHING_IDLE){
		blocking=false;
		crouching=true;
		scr_crouchingIdleGoku1();
		scr_attack1();
		scr_dodge1();

	}
	else if(state=ESTATE.CROUCHING_BLOCKING){
		blocking=true;
		crouching=true;
		scr_crouchingBlockGoku1();	
		scr_attack1();
		scr_dodge1();

	}
	else if(state=ESTATE.LIGHT_PUNCHING){
		blocking=false;
		crouching=false;
		scr_lightPunchGoku1();
		scr_dodge1();
	}
	else if(state=ESTATE.LIGHT_KICKING){
		blocking=false;
		crouching=false;
		scr_lightKickGoku1();
		scr_dodge1();
	}
	else if(state=ESTATE.CROUCHING_PUNCH){
		blocking=false;
		crouching=true;
		scr_crouchingPunchGoku1();
		scr_dodge1();
	}
	else if(state=ESTATE.CROUCHING_KICK){
		blocking=false;
		crouching=true;
		scr_crouchingKickGoku1();
		scr_dodge1();
	}
	else if(state=ESTATE.UP_KICK_GROUND){
		blocking=false;
		crouching=false;
		scr_upKickGroundGoku1();
		scr_dodge1();
	}
	else if(state=ESTATE.UP_KICK_AIR){
		blocking=false;
		crouching=false;
		scr_upKickAirGoku1();
		scr_dodge1();
	}
	else if(state=ESTATE.UP_PUNCH_GROUND){
		blocking=false;
		crouching=false;
		scr_upPunchGroundGoku1();
		scr_dodge1();
	}
	else if(state=ESTATE.DOWN_KICK){
		blocking=false;
		crouching=false;
		scr_downKickGoku1();
		scr_dodge1();
	}
	else if(state=ESTATE.SIDE_KICK_AIR){
		blocking=false;
		crouching=false;
		scr_sideKickAirGoku1();
		scr_dodge1();
	}
	else if(state=ESTATE.BACK_KICK_AIR){
		blocking=false;
		crouching=false;
		scr_backKickAirGoku1();
		scr_dodge1();
	}
	else if(state=ESTATE.DOWN_PUNCH){
		blocking=false;
		crouching=false;
		scr_downPunchGoku1();
		scr_dodge1();
	}
	else if(state=ESTATE.SIDE_PUNCH_AIR){
		blocking=false;
		crouching=false;
		scr_sidePunchAirGoku1();
		scr_dodge1();
	}
	else if(state=ESTATE.BACK_PUNCH_AIR){
		blocking=false;
		crouching=false;
		scr_backPunchAirGoku1();
		scr_dodge1();
	}
	else if(state=ESTATE.shoot_ONCE){
		blocking=false;
		crouching=false;
		scr_shootOnceGoku1();
		scr_dodge1();
	}
	else if(state=ESTATE.shoot_MULTIPLE){
		blocking=false;
		crouching=false;
		scr_shootMultipleGoku1();
		scr_dodge1();
	}
	else if(state=ESTATE.KAMEHAMEHA){
		blocking=true;
		crouching=false;
		scr_KamehamehaGoku1();
		scr_dodge1();
	}
	else if(state=ESTATE.ULTIMATE1){
		blocking=false;
		crouching=false;
		scr_ChargeGenkidamaGoku1();
		scr_dodge1();
	}
	else if(state=ESTATE.ULTIMATE2){
		blocking=false;
		crouching=false;
		scr_ThrowGenkidamaGoku1();
	}
	else if(state=ESTATE.GROUNDED){
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
if(state=ESTATE.DEATH){
	scr_deathGoku1();
}
else if(state=ESTATE.WIN_ROUND){
	scr_winRoundGoku1();
}
else if(state=ESTATE.WIN_GAME){
	scr_winGameGoku1();
}


//whichever side the player is moving horizontally
//is the side that collides
if(xspeed>0){
	side=bbox_right;
}
else if(xspeed<0){
	side=bbox_left;
}
//collisions with the vertical edge of map
if(bbox_top+yspeed<41||bbox_bottom+yspeed>obj_ground.y){
	if(bbox_top+yspeed<41&&yspeed<0){
		while(bbox_top+1>41){
			y--;
		}
	}
	else if(bbox_bottom+yspeed>obj_ground.y&&yspeed>0){
		if(!attacking&&state!=ESTATE.TIRED&&state!=ESTATE.HIT&&!death_animation){

		if(!keyboard_check(vk_f10)){
			if(keyboard_check(vk_f10)&&image_xscale=1){

				state=ESTATE.MOVING_FORWARD;
			}
			else if(keyboard_check(vk_f10)&&image_xscale=1){

				state=ESTATE.BLOCKING;
			}
			else if(keyboard_check(vk_f10)&&image_xscale=-1){

				state=ESTATE.BLOCKING;
			}
			else if(keyboard_check(vk_f10)&&image_xscale=-1){
		
				state=ESTATE.MOVING_FORWARD;
			}
			else{
			
				state=ESTATE.IDLE
			}
		}
		else{
			if((image_xscale=1&&keyboard_check(vk_f10))||(image_xscale=-1&&keyboard_check(vk_f10))){
				state=ESTATE.CROUCHING_BLOCKING;
			}
			else{
				state=ESTATE.CROUCHING_IDLE;
			}
		}
	

		}
		else if(state=ESTATE.HIT&&sprite_index=spr_hitGokuBigDown1&&(jumping||flying)){
			sprite_index=spr_hitGokuGrounded1;
			sprite_set_speed(sprite_index,20,spritespeed_framespersecond);
			image_index=0;
		}
		else if(death_animation&&sprite_index=spr_deathGoku1){
			sprite_index=spr_hitGokuGrounded1;
			sprite_set_speed(sprite_index,20,spritespeed_framespersecond);
			image_index=0;
			xspeed=0;
			global.RelativeSpeed=1;
			global.gameOver=true;
			global.rounds_player1_won+=1;
			global.rounds_finished+=1;
			with(enemy){
				xspeed=0;
				yspeed=0;
				if(global.rounds_finished>=global.rounds||global.rounds_player1_won>(global.rounds/2)){
					state=PSTATE.WIN_GAME;
				}
				else if(global.rounds_finished<global.rounds){
					state=PSTATE.WIN_ROUND;
				}
			}
		}
		while(bbox_bottom<obj_ground.y){
			y++;
		}
		flying=false;
		jumping=false;
		in_air=false;
		
	}
	yspeed=0;
}

//collisions with the horizontal edge of the map
if(bbox_right+xspeed>room_width||bbox_left+xspeed<0){
	if(xspeed>0&&bbox_right+xspeed>room_width){
		while(bbox_right+1<room_width){
			x++;
		}
	}
	else if(xspeed<0&&bbox_left+xspeed<0){
		while(bbox_left-1>0){
			x--;
		}
	}
	xspeed=0;
}

//when the player sprite changes
//the sprite moves to fit the collisions
if(bbox_right>room_width){
	while(bbox_right+1>room_width){
		x--;
	}
}
else if(bbox_left<0){
	while(bbox_left-1<0){
		x++;
	}
}

if(bbox_top<41){
	while(bbox_top-1<41){
		y++;
	}
}
else if(bbox_bottom>obj_ground.y){
	while(bbox_bottom+1>obj_ground.y){
		
		y--;
	}
}
if(state!=ESTATE.DODGING&&!attacking&&state!=ESTATE.DASHING&&state!=ESTATE.DASHING_BACK&&!jumping&&state!=PSTATE.HIT){
	if(bbox_right<enemy.x){
		if(image_xscale!=1){
			image_xscale=1;
			ds_list_add(ki_blast_combo,global.keyDown);
			ds_list_add(ki_blast_combo,global.keyRight);
			ds_list_add(ki_blast_combo,global.keyPunch);
			ki_blast_string="";
			for(var index=0;index<ds_list_size(ki_blast_combo);index++){
				ki_blast_string+=string(ds_list_find_value(ki_blast_combo,index))+",";
			}
			kamehameha_combo=ds_list_create();
			ds_list_add(kamehameha_combo,global.keyLeft);
			ds_list_add(kamehameha_combo,global.keyDown);
			ds_list_add(kamehameha_combo,global.keyRight);
			ds_list_add(kamehameha_combo,global.keyPunch);
			kamehameha_string="";
			for(var index=0;index<ds_list_size(kamehameha_combo);index++){
				kamehameha_string+=string(ds_list_find_value(kamehameha_combo,index))+",";
			}
		}
		/*
		if(flying){
		image_angle=point_direction(x,y,obj_Goku_ai.x,obj_Goku_ai.y);
		}
		else{
			image_angle=0;
		}
		*/
	}
	else if(bbox_left>enemy.x){
		if(image_xscale!=-1){
			image_xscale=-1;
			ds_list_add(ki_blast_combo,global.keyDown);
			ds_list_add(ki_blast_combo,global.keyLeft);
			ds_list_add(ki_blast_combo,global.keyPunch);
			ki_blast_string="";
			for(var index=0;index<ds_list_size(ki_blast_combo);index++){
				ki_blast_string+=string(ds_list_find_value(ki_blast_combo,index))+",";
			}
			kamehameha_combo=ds_list_create();
			ds_list_add(kamehameha_combo,global.keyRight);
			ds_list_add(kamehameha_combo,global.keyDown);
			ds_list_add(kamehameha_combo,global.keyLeft);
			ds_list_add(kamehameha_combo,global.keyPunch);
			kamehameha_string="";
			for(var index=0;index<ds_list_size(kamehameha_combo);index++){
				kamehameha_string+=string(ds_list_find_value(kamehameha_combo,index))+",";
			}
		}
		/*
		if(flying){
			image_angle=180+point_direction(x,y,obj_Goku_ai.x,obj_Goku_ai.y);
		}
		else{
			image_angle=0;
		}
		*/
	}
}
if(ki<=0&&state!=ESTATE.HIT&&!death_animation){
	state=ESTATE.TIRED;
	
}
if(blocking){
	x+=round(xspeed/1.75)*global.RelativeSpeed;
}
else{
	x+=xspeed*global.RelativeSpeed
}
y+=yspeed*global.RelativeSpeed;
if(attacking){
	out_of_combat=false;
	alarm_set(9,-1);
}


if(hit&&state!=PSTATE.DODGING&&state!=PSTATE.GROUNDED&&sprite_index!=spr_hitGokuGrounded){


	if(instance_exists(hitBy)){
		if(!blocking||(enemy.crouching&&state!=ESTATE.CROUCHING_BLOCKING)){
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
			if(random_range(0,100)<50){
				go_attack=true;
			}
		}
		else if(blocking&&can_parry){
			new_hitbox=hitbox_create(0,0,0,0,5,2*image_xscale,0,15,2,2);
				if(hitBy.owner.type!="ranged"){
					enemy.hit=true;
					enemy.hitBy=new_hitbox;
					var rando=random_range(0,100);
					if(rando<lerp(0,60,(ki-15)/85)&&can_shoot){
						state=ESTATE.shoot_ONCE
					}
					else{
						go_attack=true;
					}
				}
				
			
		}
		
		if(hitbox!=-1){
			instance_destroy(hitbox);
			hitbox=-1;
		}
		if(yspeed<0&&!jumping&&!flying){
			jumping=true;
		}
		if(!blocking||(enemy.crouching&&state!=ESTATE.CROUCHING_BLOCKING)){
			hitStun = hitBy.hitStun;
			player_health-=(hitBy.health_drain)*lerp(1.5,1,stamina/100);
			if(player_health<=0){
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
			player_health-=(hitBy.health_drain/2)*lerp(1.5,1,stamina/100);
			if(player_health<=0){
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
			state=ESTATE.DEATH;
			yspeed=-7;
			xspeed=-4*image_xscale;
			global.timer=-1;
			player_active=false;
			enemy.player_active=false;
			global.RelativeSpeed=.5;
			alarm_set(7,-1);
		}
		else if(!blocking||(enemy.crouching&&state!=ESTATE.CROUCHING_BLOCKING)){
			if(yspeed<-5){
				if(sprite_index!=spr_hitGokuBigUp1){
					sprite_index=spr_hitGokuBigUp1;
					image_index=0;
				}
			}
			else if(yspeed<-1&&yspeed>=-5){
				if(sprite_index!=spr_hitGokuLilUp1){
					sprite_index=spr_hitGokuLilUp1;
					image_index=0;
				}
			}
			else if(yspeed>=-1&&yspeed<=1){
				if(!crouching||jumping||flying){
					if(sprite_index!=spr_hitGoku11){
						sprite_index=spr_hitGoku11;
						image_index=0;
					}
					else if(hitBy.recurring_damage!="true"){
						sprite_index=spr_hitGoku21;
						image_index=0;
					}
				}
				else if(crouching){
					if(sprite_index!=spr_hitGokuCrouching11){
						sprite_index=spr_hitGokuCrouching11;
						image_index=0;
					}
					else if(hitBy.recurring_damage!="true"){
						sprite_index=spr_hitGokuCrouching21;
						image_index=0;
					}
				}
				}
			
				else if(yspeed>10){
					if(sprite_index!=spr_hitGokuBigDown1&&(jumping||flying)){
						sprite_index=spr_hitGokuBigDown1;
						image_index=0;
					}
					else {
						if(sprite_index!=spr_hitGoku11){
							sprite_index=spr_hitGoku11;
							image_index=0;
						}
						else if(hitBy.recurring_damage!="true"){
							sprite_index=spr_hitGoku21;
							image_index=0;
						}
					}
				}
				else{
					if(sprite_index!=spr_hitGoku11){
							sprite_index=spr_hitGoku11;
							image_index=0;
						}
						else if(hitBy.recurring_damage!="true"){
							sprite_index=spr_hitGoku21;
							image_index=0;
						}
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
	
	
		hit = false;
		if(state!=PSTATE.HIT&&!death_animation&&(!blocking||(enemy.crouching&&state!=ESTATE.CROUCHING_BLOCKING))){
			state = PSTATE.HIT;
		}
		else if((!blocking||(enemy.crouching&&state!=ESTATE.CROUCHING_BLOCKING))&&hitBy.recurring_damage!="true"){
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
if(player_active){
	stateTimer-=global.RelativeSpeed;
}
if(enemy.x>x-130&&enemy.x<x+130){
	enemy_in_range=true;
}
else{
	enemy_in_range=false;
}
if(enemy.x>x-300&&enemy.x<x+300){
		enemy_in_walking_distance=true;
	}
	else{
		enemy_in_walking_distance=false;
}
if(enemy.x>x-400&&enemy.x<x+400&&enemy.y<bbox_bottom&&enemy.y>bbox_top){
		enemy_in_kame_distance=true;
	}
	else{
		enemy_in_kame_distance=false;
}
if(enemy.y>y-25&&enemy.y<y+25){
	enemy_in_Yrange=true;
}
else{
	enemy_in_Yrange=false;
}
general_state = (ki+stamina+player_health)/3;
