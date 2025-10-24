  // Check if there are bullets in the chamber
  if (obj_game.can_shoot && obj_game.bullet_chamber > 0){
    // Create a bullet template and set its direction
    var create_bullet = function(dir){
	  var bullet = instance_create_layer(x, y-10, "Instances", obj_bullet);
	  bullet.direction = dir;
    }
  
	// Base spread value
	var spread = 5;
	
	// Adapt spread value depending on score
	if (obj_game.points >= 1000) {
		spread = 15;
	} 
	else if (obj_game.points >= 500) {
		spread = 10;
	}

	// Loop to create bullets
	for (var i = -spread; i <= spread; i += 5) {
		create_bullet(i);
	}
 
	obj_game.bullet_chamber -= 1;
	audio_play_sound(snd_shoot, 0, false, 1, 0, random_range(0.9, 1.5));
}