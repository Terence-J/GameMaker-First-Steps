  // Create a bullet template and set its direction
  var create_bullet = function(dir){
	var bullet = instance_create_layer(x, y-10, "Instances", obj_bullet);
	bullet.direction = dir;
  }
  
  create_bullet(5);
  create_bullet(0);
  create_bullet(-5);