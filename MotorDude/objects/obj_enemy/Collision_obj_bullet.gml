// Increase points by 10
obj_game.points += 10;

// Destroy bullets
instance_destroy(other);

// Spawn new enemies
if instance_number(obj_enemy) < max_enemies{
	// Loop through it twice
	for (var i = 0; i < 4; i += 1;){
		// Create new random coordinates
		var new_x = irandom_range(560, 800);
		var new_y = choose(32, 48, 64, 80, 96);
	
		// Create new enemy
		if (place_empty(new_x, new_y)){
			var new_enemy = instance_create_layer(new_x, new_y, "Instances", obj_enemy);
			new_enemy.speed = speed;
			new_enemy.direction = direction;
		}
	}
}

// Handle enemy death
effect_create_above(ef_explosion, x, y + 10, 0, c_red);
audio_play_sound(snd_impact, 0, false, 1.5, 0, random_range(0.8, 1.3));
instance_destroy();