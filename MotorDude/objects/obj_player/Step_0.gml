// Controls
var upKey = keyboard_check(vk_up);
var downKey = keyboard_check(vk_down);

// Move Direction
var ySpeed = (downKey - upKey) * moveSpeed;

// Wall Collision
if place_meeting(x, y + ySpeed, obj_wall) == true
	{
		ySpeed = 0;
	}

// Position Calculation
y += ySpeed;