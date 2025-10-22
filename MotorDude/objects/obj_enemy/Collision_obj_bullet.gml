// Destroy bullets
instance_destroy(other);
effect_create_above(ef_explosion,x ,y ,1 ,c_red);

x = irandom_range(500, 600);

// Spawn new enemies
if instance_number(obj_enemy) < 12{
	// Create new random coordinates
	var new_x = irandom_range(560, 800);
	var y_positions = [32, 64, 96];
    var new_y = y_positions[irandom(array_length(y_positions) - 1)];
	
	// Create new enemy
    var new_enemy = instance_create_layer(new_x, new_y, layer, obj_enemy);
    new_enemy.speed = speed;
    new_enemy.direction = direction;
}
else{
	instance_destroy();	
}