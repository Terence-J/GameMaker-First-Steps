// Destroy bullets
instance_destroy(other);
effect_create_above(ef_explosion,x ,y ,1 ,c_red);

var moveTo_x = irandom_range(500, 600);

if (place_free(moveTo_x, y)){
	x = moveTo_x
}

// Spawn new enemies
if instance_number(obj_enemy) < 15{
	// Create new random coordinates
	var new_x = irandom_range(560, 800);
	var y_positions = [48, 64, 80, 96, 112];
    var new_y = y_positions[irandom(array_length(y_positions) - 1)];
	
	// Create new enemy
	if (place_free(new_x, new_y)){
	    var new_enemy = instance_create_layer(new_x, new_y, layer, obj_enemy);
		new_enemy.speed = speed;
		new_enemy.direction = direction;
	}
}
else{
	instance_destroy();	
}