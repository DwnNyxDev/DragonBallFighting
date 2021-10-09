/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_font(fontHeader);
draw_set_color(c_black);
draw_set_halign(fa_center);
if(show_moves){
	draw_text(room_width/2,room_height*.075, string(character+" Moves List"));
}