/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_font(fnt_button);
draw_set_alpha(lerp(0,1,abs(x-1130)/270));
image_alpha=lerp(0,1,abs(x-1130)/270)
draw_self();
if(x>=860){
	x-=4;
}
draw_text(x,y,type);
