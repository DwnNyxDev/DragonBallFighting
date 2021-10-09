function scr_pythag(argument0, argument1, argument2) {
	function_direction=argument0;
	value1=argument1;
	value2=argument2;

	if(function_direction="hypotenuse"){
		return(power(power(value1,2)+power(value2,2),.5));
	}
	else if(function_direction="leg"){
		return(power(power(value1,2)-power(value2,2),.5));
	}


}
