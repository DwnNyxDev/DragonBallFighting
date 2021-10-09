/// @description Insert description here
// You can write your code in this editor
back_button=instance_create_layer(496,672,"Instances",obj_startButtons);
back_button.type="Back";
orange_color=make_color_rgb(255,102,0);
buttons=ds_list_create();
ds_list_add(buttons,"upBtn");
ds_list_add(buttons,"downBtn");
ds_list_add(buttons,"leftBtn");
ds_list_add(buttons,"rightBtn");
ds_list_add(buttons,"punchBtn");
ds_list_add(buttons,"kickBtn");
ds_list_add(buttons,"specialBtn");
ds_list_add(buttons,"dodgeBtn");
ds_list_add(buttons,"chargeBtn");
ds_list_add(buttons,"jumpBtn");
for(var index=0;index<ds_list_size(buttons);index++){
	
	if(index<5){
		newBtn=instance_create_layer(356,100+(80*index),"Instances",obj_optionsButtons);
	}
	else{
		newBtn=instance_create_layer(667,100+(80*(index-5)),"Instances",obj_optionsButtons);
	}
	newBtn.type="Controls";
	newBtn.name=ds_list_find_value(buttons,index);
}