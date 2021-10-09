/// @description Insert description here
// You can write your code in this editor
life --;
show_debug_message("instance exists");
if(life = 0){
	
    instance_destroy();
	show_debug_message("instance destroyed");
	with(owner){
		hitbox=-1;
	}
}