/// @description Insert description here
// You can write your code in this editor
instance_destroy(obj_Displayer);
instance_destroy(obj_Arrow);
instance_destroy();
Goku_Pickable = instance_create_layer(256,383,"Instances",obj_pickableCharacter);
Goku_Pickable.character="Goku";
Trunks_Pickable = instance_create_layer(768,383,"Instances",obj_pickableCharacter);
Trunks_Pickable.character="Trunks";
audio_play_sound(sfx_button,-1,false);