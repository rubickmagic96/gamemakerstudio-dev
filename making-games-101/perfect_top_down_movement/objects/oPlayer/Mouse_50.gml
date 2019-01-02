if (!firing) {
	firing = true
	alarm[0] = rof
	instance_create_layer(x, y, layer, oBullet)	
}