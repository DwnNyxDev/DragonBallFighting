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


for (i=gp_face1; i<gp_axisrv; i++){
    if gamepad_button_check_pressed(global.gp_connected, i){
        any_pressed = true;
        break;
	}
}

if(any_pressed){
	if(gamepad_button_check_pressed(global.gp_connected,gp_padu)){
		ds_list_add(combo_chain,global.keyUp);
		alarm[2]=room_speed*.4;
	}
	else if(gamepad_button_check_pressed(global.gp_connected,gp_padl)){
		ds_list_add(combo_chain,global.keyLeft);
		alarm[2]=room_speed*.4;
	}
	else if(gamepad_button_check_pressed(global.gp_connected,gp_padr)){
		ds_list_add(combo_chain,global.keyRight);
		alarm[2]=room_speed*.4;
	}
	else if(gamepad_button_check_pressed(global.gp_connected,gp_padd)){
		ds_list_add(combo_chain,global.keyDown);
		alarm[2]=room_speed*.4;
	}
	else if(gamepad_button_check_pressed(global.gp_connected,gp_face1)){
		ds_list_add(combo_chain,global.keyJump);
		alarm[2]=room_speed*.4;
	}
	else if(gamepad_button_check_pressed(global.gp_connected,gp_face3)){
		ds_list_add(combo_chain,global.keyPunch);
		alarm[2]=room_speed*.4;
	}
	else if(gamepad_button_check_pressed(global.gp_connected,gp_face4)){
		ds_list_add(combo_chain,global.keyKick);
		alarm[2]=room_speed*.4;
	}
	
}

if(keyboard_check_pressed(vk_anykey)){
	alarm[2]=room_speed*.4;
	if(keyboard_key>=65&&keyboard_key<=90){
		ds_list_add(combo_chain,string(keyboard_key));
	}
	else if(keyboard_key=37){
		ds_list_add(combo_chain,string(keyboard_key));
	}
	else if(keyboard_key=38){
		ds_list_add(combo_chain,string(keyboard_key));
	}
	else if(keyboard_key=39){
		ds_list_add(combo_chain,string(keyboard_key));
	}
	else if(keyboard_key=40){
		ds_list_add(combo_chain,string(keyboard_key));
	}
	
}
if((room=CellGamesRoom||room=TutorialRoom)&&player_active&&!global.gameOver){
	if(keyboard_check_pressed(ord("P"))||gamepad_button_check_pressed(global.gp_connected,gp_start)){
		if(!global.paused){
			global.paused=true;
			press_paused=true
			global.RelativeSpeed=0;
			new_pause_menu=instance_create_layer(0,0,"Instances",obj_pause_menu_bg);
			new_pause_menu.depth=depth-1;
			new_pause_menu.character="Goku";
		}
		else if(press_paused) {
			global.paused=false;
			press_paused=false;
			global.RelativeSpeed=1;
			instance_destroy(obj_pause_menu_bg);
		}
	}
}

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
	else if(state=PSTATE.LIGHT_PUNCHING){
		blocking=false;
		crouching=false;
		scr_lightPunchGoku();
		scr_dodge();
	}
	else if(state=PSTATE.LIGHT_KICKING){
		blocking=false;
		crouching=false;
		scr_lightKickGoku();
		scr_dodge();
	}
	else if(state=PSTATE.CROUCHING_PUNCH){
		blocking=false;
		crouching=true;
		scr_crouchingPunchGoku();
		scr_dodge();
	}
	else if(state=PSTATE.CROUCHING_KICK){
		blocking=false;
		crouching=true;
		scr_crouchingKickGoku();
		scr_dodge();
	}
	else if(state=PSTATE.UP_KICK_GROUND){
		blocking=false;
		crouching=false;
		scr_upKickGroundGoku();
		scr_dodge();
	}
	else if(state=PSTATE.UP_KICK_AIR){
		blocking=false;
		crouching=false;
		scr_upKickAirGoku();
		scr_dodge();
	}
	else if(state=PSTATE.UP_PUNCH_GROUND){
		blocking=false;
		crouching=false;
		scr_upPunchGroundGoku();
		scr_dodge();
	}
	else if(state=PSTATE.DOWN_KICK){
		blocking=false;
		crouching=false;
		scr_downKickGoku();
		scr_dodge();
	}
	else if(state=PSTATE.SIDE_KICK_AIR){
		blocking=false;
		crouching=false;
		scr_sideKickAirGoku();
		scr_dodge();
	}
	else if(state=PSTATE.BACK_KICK_AIR){
		blocking=false;
		crouching=false;
		scr_backKickAirGoku();
		scr_dodge();
	}
	else if(state=PSTATE.DOWN_PUNCH){
		blocking=false;
		crouching=false;
		scr_downPunchGoku();
		scr_dodge();
	}
	else if(state=PSTATE.SIDE_PUNCH_AIR){
		blocking=false;
		crouching=false;
		scr_sidePunchAirGoku();
		scr_dodge();
	}
	else if(state=PSTATE.BACK_PUNCH_AIR){
		blocking=false;
		crouching=false;
		scr_backPunchAirGoku();
		scr_dodge();
	}
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

if(state=PSTATE.DEATH){
	scr_deathGoku();
}
else if(state=PSTATE.WIN_ROUND){
	scr_winRoundGoku();
}
else if(state=PSTATE.WIN_GAME){
	scr_winGameGoku();
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
		if(!attacking&&state!=PSTATE.TIRED&&state!=PSTATE.HIT&&!death_animation){

		if(!(keyboard_check(global.keyDown)||gamepad_button_check(global.gp_connected,gp_padd))){
			if((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))&&image_xscale=1){

				state=PSTATE.MOVING_FORWARD;
			}
			else if((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&image_xscale=1){

				state=PSTATE.BLOCKING;
			}
			else if((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))&&image_xscale=-1){

				state=PSTATE.BLOCKING;
			}
			else if((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&image_xscale=-1){
		
				state=PSTATE.MOVING_FORWARD;
			}
			else{
			
				state=PSTATE.IDLE
			}
		}
		else{
			if((image_xscale=1&&(keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl)))||(image_xscale=-1&&(keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr)))){
				state=PSTATE.CROUCHING_BLOCKING;
			}
			else{
				state=PSTATE.CROUCHING_IDLE;
			}
		}
	

		}
		else if(state=PSTATE.HIT&&sprite_index=spr_hitGokuBigDown){
			sprite_index=spr_hitGokuGrounded;
			sprite_set_speed(sprite_index,20,spritespeed_framespersecond);
			image_index=0;
		}
		else if(death_animation&&sprite_index=spr_deathGoku){
			sprite_index=spr_hitGokuGrounded;
			sprite_set_speed(sprite_index,20,spritespeed_framespersecond);
			image_index=0;
			xspeed=0;
			global.RelativeSpeed=1;
			global.gameOver=true;
			global.rounds_player2_won+=1;
			global.rounds_finished+=1;
			with(enemy){
				xspeed=0;
				yspeed=0;
				if(global.rounds_finished>=global.rounds||global.rounds_player2_won>(global.rounds/2)){
					state=ESTATE.WIN_GAME;
				}
				else if(global.rounds_finished<global.rounds){
					state=ESTATE.WIN_ROUND;
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
if(state!=PSTATE.DODGING&&!attacking&&state!=PSTATE.DASHING&&state!=PSTATE.DASHING_BACK&&!jumping&&state!=PSTATE.HIT){
	if(bbox_right<enemy.x){
		if(image_xscale!=1){
			image_xscale=1;
			ds_list_clear(ki_blast_combo);
			ds_list_add(ki_blast_combo,global.keyDown);
			ds_list_add(ki_blast_combo,global.keyRight);
			ds_list_add(ki_blast_combo,global.keyPunch);
			ki_blast_string="";
			for(var index=0;index<ds_list_size(ki_blast_combo);index++){
				ki_blast_string+=string(ds_list_find_value(ki_blast_combo,index))+",";
			}
			ds_list_clear(kamehameha_combo);
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
			ds_list_clear(ki_blast_combo);
			ds_list_add(ki_blast_combo,global.keyDown);
			ds_list_add(ki_blast_combo,global.keyLeft);
			ds_list_add(ki_blast_combo,global.keyPunch);
			ki_blast_string="";
			for(var index=0;index<ds_list_size(ki_blast_combo);index++){
				ki_blast_string+=string(ds_list_find_value(ki_blast_combo,index))+",";
			}
			ds_list_clear(kamehameha_combo);
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
if(ki<0&&!death_animation&&room!=TutorialRoom){
	state=PSTATE.TIRED;
	
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
