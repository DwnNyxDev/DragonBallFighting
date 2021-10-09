/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_font(font0);
draw_set_color(c_black);
draw_set_halign(fa_center);
if(type="specialMove"){
	if(character="Goku"&&move="kiBlast"){
		draw_text(room_width*.55,y-(sprite_height/3),"The kiBlast is a crowd control attack that can be used ")
		draw_text(room_width*.55,y-(sprite_height/3)+20,"at any range. Force ur opponent back, or force them to block");
		draw_text(room_width*.55,y-(sprite_height/3)+40,"with a spam of small energy blasts.");
		draw_text(room_width*.55,y-(sprite_height/3)+60,"(Down)+(Right)+(Punch) if enemy is on ur right");
	
	}
	else if(character="Goku"&&move="kamehameha"){
		draw_text(room_width*.55,y-(sprite_height/3),"The Kamehameha is a mid-ranged chargeable attack")
		draw_text(room_width*.55,y-(sprite_height/3)+20,"that deals damage over time to any enemy unlucky");
		draw_text(room_width*.55,y-(sprite_height/3)+40,"enough to be caught in it");
		draw_text(room_width*.55,y-(sprite_height/3)+60,"(Left)+(Down)+(Right)+(Punch) if enemy is on ur right");
	
	}
	else if(character="Goku"&&move="genkidama"){
		draw_text(room_width*.55,y-(sprite_height/3),"Gather the energy of your allies into one major blast to deal");
		draw_text(room_width*.55,y-(sprite_height/3)+20,"massive amounts of damage to your enemy. Be careful");
		draw_text(room_width*.55,y-(sprite_height/3)+40," though it's a large drain on your ki, and if you're hit while");
		draw_text(room_width*.55,y-(sprite_height/3)+60,"charging, you'll lose half your accumulated charge");
		draw_text(room_width*.55,y-(sprite_height/3)+80,"Hold "+ string(get_character(global.KeySpecial)) +" to Charge / Double-Tap "+ string(get_character(global.KeySpecial)) +" to Throw");
	
	}
	else if(character="Goku"&&move="dodge"){
		draw_text(room_width*.55,y-(sprite_height/3),"Waiitttt, where'd Goku go? Oh he's right behind u with a fully");
		draw_text(room_width*.55,y-(sprite_height/3)+20,"charged Kamehameha. Disappear and Reappear in a fraction");
		draw_text(room_width*.55,y-(sprite_height/3)+40," of a second, using ur directional keys to choose where u want");
		draw_text(room_width*.55,y-(sprite_height/3)+60,"to go, or if no directional key is pressed, dodge in place. If charging");
		draw_text(room_width*.55,y-(sprite_height/3)+80,"kamehameha, disappear and reappear on the other side of ur opponent");
		draw_text(room_width*.55,y-(sprite_height/3)+100,"Press "+ string(get_character(global.keyDodge)) +" to Instantly Transmit.");
	}
	else if(character="Trunks"&&move="stunBlast"){
		draw_text(room_width*.55,y-(sprite_height/3),"The stunBlast is a ranged attack that works best at close ")
		draw_text(room_width*.55,y-(sprite_height/3)+20,"range. Stop ur enemies movements and follow up with a");
		draw_text(room_width*.55,y-(sprite_height/3)+40,"quick combo or a dash slash.");
		draw_text(room_width*.55,y-(sprite_height/3)+60,"(Down)+(Right)+(Punch) if enemy is on ur right");
	
	}
	else if(character="Trunks"&&move="Dash Slash"){
		draw_text(room_width*.55,y-(sprite_height/3),"The Dash Slash is the fastest way for Trunks to close distance ")
		draw_text(room_width*.55,y-(sprite_height/3)+20,"between his enemies with a swift sword strike. He enters a ");
		draw_text(room_width*.55,y-(sprite_height/3)+40,"blocking state while dash slashing");
		draw_text(room_width*.55,y-(sprite_height/3)+60,"(Left)+(Right)+(Kick) if enemy is on ur right");
	
	}
	else if(character="Trunks"&&move="Burning Attack"){
		draw_text(room_width*.55,y-(sprite_height/3),"Oh no, ur Trunks and ur opponent is doing the smart thing");
		draw_text(room_width*.55,y-(sprite_height/3)+20,"and staying far away from you and ur deadly sword.");
		draw_text(room_width*.55,y-(sprite_height/3)+40," No problem, hit them with a blackhole that deals damage over time.");
		draw_text(room_width*.55,y-(sprite_height/3)+60,"Be careful though, it take 75 ki to pull off");
		draw_text(room_width*.55,y-(sprite_height/3)+80,"Press "+ string(get_character(global.KeySpecial)) +" to start it up and hold "+ string(get_character(global.KeySpecial)) +" to increase the distance it travels");
	
	}
	else if(character="Trunks"&&move="Vampire"){
		draw_text(room_width*.55,y-(sprite_height/3),"Sadly, Trunks' ki is just not up to par. His lack of control causes his attacks");
		draw_text(room_width*.55,y-(sprite_height/3)+20,"to take more ki than they should. If only he could restore his ki");
		draw_text(room_width*.55,y-(sprite_height/3)+40," during combat. Yep, press shift to toggle on and off vampire mode.");
		draw_text(room_width*.55,y-(sprite_height/3)+60,"It drains ur stamina, but any attack that hits during this state regens ki");
		draw_text(room_width*.55,y-(sprite_height/3)+80,"and health, like ur stealing it from your enemy.");
		draw_text(room_width*.55,y-(sprite_height/3)+100,"Press "+ string(get_character(global.keyDodge)) +" to toggle Vampire Mode");
	}
}