/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_font(fnt_button)
draw_set_halign(fa_center)
draw_set_color(c_black);
if(type="rounds"){
draw_text(x,y,"Rounds: "+string(global.rounds));
}
else if(type="timer"){
draw_text(x,y,"timer: "+string(round(global.beginning_timer/room_speed))+" sec.");
}
