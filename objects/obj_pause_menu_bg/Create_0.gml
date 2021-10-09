/// @description Insert description here
// You can write your code in this editor
character="";
characters_created=false;
show_moves=false;
moves_btn = instance_create_layer(room_width/2,room_height*.25,"Instances",obj_pause_btn);
moves_btn.type="Moves";
moves_btn.owner=id;
moves_btn.depth=depth-1;
moves_btn.selected=true;
moves_btn = instance_create_layer(room_width/2,room_height*.4,"Instances",obj_pause_btn);
moves_btn.type="Quit";
moves_btn.owner=id;
moves_btn.depth=depth-1;
moves_btn.selected=false;