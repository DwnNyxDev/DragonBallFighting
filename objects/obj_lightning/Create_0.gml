/// @description Insert description here
// You can write your code in this editor
starting_x=x;
starting_y=y;
flash=true;
ending_y=random_range(588,658);
life=lerp(room_speed*1.5,room_speed*.1,obj_Shenron.lightning_made/obj_Shenron.total_lightning);

opacity=random_range(.25,1);

total_segments=irandom_range(4,8);
x_values=ds_list_create();
y_values=ds_list_create();
for(var index=0;index<total_segments;index++){
	
	ds_list_add(x_values,random_range(x-50,x+50));
	ds_list_add(y_values,lerp(starting_y,ending_y,(index+1)/total_segments));

}

line_width=random_range(1,10);
segments_drawn=1;
alarm[0]=life/total_segments;




