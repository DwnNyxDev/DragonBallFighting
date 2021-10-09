/// @description Insert description here
// You can write your code in this editor
if(make_new_spirits){
	repeat (irandom_range(1,5)){
		new_spirit=instance_create_layer(choose(random_range(x-200,x-100),random_range(x+100,x+200)),choose(random_range(y-200,y-100),random_range(y+100,y+200)),"Instances",obj_spirit);
		new_spirit.genkidama=id;
	}
	alarm[0]=room_speed*.25*global.RelativeSpeed;
}