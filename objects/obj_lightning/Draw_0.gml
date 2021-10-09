/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(opacity);
draw_set_color(c_yellow);
var new_starting_x=starting_x;
var new_starting_y=starting_y;


for(var line_index=0;line_index<segments_drawn;line_index++){
	draw_line_width(new_starting_x,new_starting_y,ds_list_find_value(x_values,line_index),ds_list_find_value(y_values,line_index),line_width);
	new_starting_x=ds_list_find_value(x_values,line_index)
	new_starting_y=ds_list_find_value(y_values,line_index)
}
life--;
if(life<=0){
	instance_destroy();
}

