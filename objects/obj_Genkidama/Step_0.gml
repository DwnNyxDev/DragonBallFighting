/// @description Insert description here
// You can write your code in this editor
if((owner.state=PSTATE.ULTIMATE1||owner.state=ESTATE.ULTIMATE1)&&owner.Genkidama_charge<100){
	owner.Genkidama_charge+=.25*global.RelativeSpeed;
	make_new_spirits=true;
	x_size=lerp(1,4,owner.Genkidama_charge/100);
	y_size=lerp(1,4,owner.Genkidama_charge/100);
	owner.ki-=.5*global.RelativeSpeed;
}
image_xscale=x_size
image_yscale=y_size

if(thrown){
	make_new_spirits=false;
	x+=3*throw_direction*global.RelativeSpeed;
	if(bbox_bottom<obj_ground.y){
		y+=2*global.RelativeSpeed;
	}
	else{
		instance_destroy();
	}
}
else{
	y=owner.y-111*(1+.25*(image_xscale-1));
}
if(place_meeting(x,y,owner.enemy)&&can_hit_enemy&&owner.enemy.can_be_hit){
	make_new_spirits=false;
		
	can_hit_enemy=false;

	if(owner.state=PSTATE.ULTIMATE1||owner.state=ESTATE.ULTIMATE1){
		with(owner){
			if(instance_exists(new_Genkidama)&&new_Genkidama!=-1){
				instance_destroy(new_Genkidama);
			}
		attacking=false;
		if(state!=PSTATE.TIRED&&state!=ESTATE.TIRED){
			if(jumping){
				if(character_type="player"){
					state=PSTATE.JUMPING
				}
				else{
					state=ESTATE.JUMPING
				}
			}
			else if(!flying){
			if(!(keyboard_check(global.keyDown)||gamepad_button_check(global.gp_connected,gp_padd))){
				if(((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))&&image_xscale=1)||((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&image_xscale=-1)){
					if(character_type="player"){
					state=PSTATE.MOVING_FORWARD;
				}
				else{
					state=ESTATE.MOVING_FORWARD;
				}
				}
				else if(((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&image_xscale=1)||((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))&&image_xscale=-1)){
					if(character_type="player"){
						state=PSTATE.BLOCKING;
					}
					else{
						state=ESTATE.BLOCKING;
					}
				}
				else{
					if(character_type="player"){
						state=PSTATE.IDLE
					}
					else{
						state=ESTATE.IDLE
					}
				}
			}
			else{
				if((image_xscale=1&&(keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl)))||(image_xscale=-1&&(keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr)))){
					if(character_type="player"){
						state=PSTATE.CROUCHING_BLOCKING;
					}
					else{
						state=ESTATE.CROUCHING_BLOCKING;
					}
				}
				else{
					if(character_type="player"){
						state=PSTATE.CROUCHING_IDLE;
					}
					else{
						state=ESTATE.CROUCHING_IDLE;
					}
				}
			}
	
	}
			else if(flying) {
				if(((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))&&image_xscale=1)||((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&image_xscale=-1)){
					if(character_type="player"){
						state=PSTATE.FLYING_MOVING_FORWARD;
					}
					else{
						state=ESTATE.FLYING_MOVING_FORWARD;
					}
				}
				else if(((keyboard_check(global.keyLeft)||gamepad_button_check(global.gp_connected,gp_padl))&&image_xscale=1)||((keyboard_check(global.keyRight)||gamepad_button_check(global.gp_connected,gp_padr))&&image_xscale=-1)){
					if(character_type="player"){
						state=PSTATE.FLYING_BLOCKING;
					}
					else{
						state=ESTATE.FLYING_BLOCKING;
					}
				}
				
				else{
					if(character_type="player"){
						state=PSTATE.FLYING_IDLE
					}
					else{
						state=ESTATE.FLYING_IDLE
					}
				}
			
			}
		}
		}

	}
	new_hitbox=hitbox_create(0,0,0,0,5,lerp(3,15,(other.x_size-1)/3)*throw_direction,0,lerp(20,120,(x_size-1)/3),lerp(1,30,(x_size-1)/3),lerp(1,50,(x_size-1)/3));
	owner.enemy.hit=true;
	owner.enemy.hitBy=new_hitbox;
		
}
if(bbox_left>room_width||bbox_right<0||bbox_top>room_height||bbox_bottom<0){
	instance_destroy();
}