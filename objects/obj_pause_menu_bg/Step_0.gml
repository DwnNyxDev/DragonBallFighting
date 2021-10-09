/// @description Insert description here
// You can write your code in this editor
if(!characters_created&&show_moves){
	characters_created=true;
	if(character="Goku"){
		for(var index=1;index<=4;index++){
			new_character = instance_create_layer(room_width*.3,room_height*(.18*index),"Instances",obj_showControl);
			new_character.type="specialMove";
			new_character.character=character;
			new_character.depth=depth-1;
			if(index=1){
				new_character.sprite_index=spr_shootMultipleGoku2;
				new_character.move="kiBlast"
			}
			if(index=2){
				new_character.sprite_index=spr_normalKamehamehaGoku2;
				new_character.move="kamehameha"
			}
			else if(index=3){
				new_character.sprite_index=spr_genkidamaChargingGoku2;
				new_character.move="genkidama"
			}
			else if(index=4){
				new_character.sprite_index=spr_dodge;
				new_character.move="dodge"
			}
		}
	}
	else if(character="Trunks"){
		for(var index=1;index<=4;index++){
			new_character = instance_create_layer(room_width*.3,room_height*(.18*index),"Instances",obj_showControl);
			new_character.type="specialMove";
			new_character.character=character;
			new_character.depth=depth-1;
			if(index=1){
				new_character.sprite_index=spr_shootOnceTrunks11;
				new_character.move="stunBlast"
			}
			if(index=2){
				new_character.sprite_index=spr_dashSlashTrunks11;
				new_character.move="Dash Slash"
			}
			else if(index=3){
				new_character.sprite_index=spr_burningAttackTrunks11
				new_character.move="Burning Attack"
			}
			else if(index=4){
				new_character.sprite_index=spr_vampireWings;
				new_character.move="Vampire"
			}
		}
	}
}