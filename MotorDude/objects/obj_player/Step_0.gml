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

// Check the depth of the image
depth = -bbox_bottom;