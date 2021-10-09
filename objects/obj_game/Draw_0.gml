/// @description Insert description here
// You can write your code in this editor
if(room=CellGamesRoom){
	camera_x=camera_get_view_x(view_camera[0]);
	camera_y=camera_get_view_y(view_camera[0]);
	camera_width=camera_get_view_width(view_camera[0]);
	camera_height=camera_get_view_height(view_camera[0]);
	draw_set_halign(fa_center);
	draw_set_font(font0);
	draw_text(camera_x+camera_width*(512/1024),camera_y+camera_height*(15/768),round(global.timer/60));
	draw_text(camera_x+camera_width*(512/1024),camera_y+camera_height*(50/768),string(global.rounds_player1_won) +" / "+string(global.rounds_player2_won));
}