/// @description Insert description here
// You can write your code in this editor

hit=false;
hitStun=0;
hitBy=-1;
in_air=false;
state=ESTATE.IDLE;
can_dash=false;
character_type="enemy";
shoot_multiple=false;
xspeed=0;
yspeed=0;
frames=-1;
tired=false;
going_forward=false;
going_backward=false;
kiBlast_made=false;
kiBlast2_made=false;
can_shoot=true;
can_kame=true;
kame_cooldown=room_speed*3;
kiBlast_cooldown=room_speed*.5;
active_hurtbox=true;
hitbox = -1;
flying=false;
jumping=false;
type="melee";
can_attack=true;
attacking=false;
dash_speed=10;
dashing_check_button=vk_nokey;
kamehameha_fired=false;
new_kamehameha=-1;

dodge_direction="none";
poweringUp_effect=false;
ULTIMATE2=false;
Genkidama_charge=0;
new_Genkidama=-1;
ki=100;
crouching=false;
stamina=100;
player_health=100;
charging_kamehameha=false;
kamehameha_total_power=10;
kamehameha_charge=-1;
charge_time=false;
out_of_combat=true;
instant_transmission_attack=false;
saved_state=ESTATE.IDLE;
combo_chain=ds_list_create();
ki_blast_combo=ds_list_create();
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
blocking=false;
can_parry=false;
stateTimer=60;
go_fly=false;
go_jump=false;
go_dash=false;
go_dodge=false;
go_attack=false;
go_block=true;
enemy_in_range=false;
enemy_in_Yrange=false;
enemy_in_walking_distance=true;
enemy_in_kame_distance=true;
general_state = (ki+stamina+player_health)/3;
player_active=true;
death_animation=false;
can_be_hit=true;