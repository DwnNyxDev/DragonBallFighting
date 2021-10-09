function hitbox_create(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9) {
	_hitbox = instance_create_layer(x,y,"Instances",obj_hitbox);
	_hitbox.owner = id;
	_hitbox.image_xscale = argument0;
	_hitbox.image_yscale = argument1;
	_hitbox.xOffset = argument2;
	_hitbox.yOffset = argument3;
	_hitbox.life = argument4;
	_hitbox.xHit = argument5;
	_hitbox.yHit=argument6;
	_hitbox.hitStun = argument7;
	_hitbox.energy_drain=argument8;
	_hitbox.health_drain=argument9;

	return _hitbox;




}
