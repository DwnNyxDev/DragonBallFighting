function save_game() {
	if(file_exists("saveData.ini")){
		file_delete("saveData.ini");
	}
	ini_open("saveData.ini")
		ini_write_real("Controls","keyUp",global.keyUp);
		ini_write_real("Controls","keyDown",global.keyDown);
		ini_write_real("Controls","keyLeft",global.keyLeft);
		ini_write_real("Controls","keyRight",global.keyRight);
		ini_write_real("Controls","keyPunch",global.keyPunch);
		ini_write_real("Controls","keyKick",global.keyKick);
		ini_write_real("Controls","KeySpecial",global.KeySpecial);
		ini_write_real("Controls","keyDodge",global.keyDodge);
		ini_write_real("Controls","keyCharge",global.keyCharge);
		ini_write_real("Controls","keyJump",global.keyJump);
	ini_close();


}
