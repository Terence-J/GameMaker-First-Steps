// Controls
var upKey = keyboard_check(ord("W"));
var downKey = keyboard_check(ord("S"));

// Move Direction
var ySpeed = (downKey - upKey) * moveSpeed;

// Wall Collision
if place_meeting(x, y + ySpeed, obj_wall) == true
	{
		ySpeed = 0;
	}

// Position Calculation
y += ySpeed;

if keyboard_check_pressed(vk_space){
	instance_create_layer(x, y, "Instances", obj_bullet);
}