function get_character(argument0) {
	unicode=argument0;

	if(unicode>=65&&unicode<=90){
		return(chr(unicode));
	}
	else if(unicode=37){
		return("LeftArrow");
	}
	else if(unicode=38){
		return("UpArrow");
	}
	else if(unicode=39){
		return("RightArrow");
	}
	else if(unicode=40){
		return("DownArrow");
	}
	else if(unicode=16){
		return("Shift");
	}
	else if(unicode=32){
		return("Space");
	}


}
