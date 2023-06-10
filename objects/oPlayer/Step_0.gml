#region Inputs
	keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
	keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
	keyJump = keyboard_check_pressed(vk_space);
#endregion

#region Move!
//Work out where to move horizontally
horizontalSpeed = (keyRight - keyLeft) * moveSpeed;

//Work out where to move vertically
verticalSpeed = verticalSpeed + grav;

//Work out if we should jump
if (place_meeting(x,y+1,oWall) and (keyJump))
{
	show_debug_message("JUMP!");
    verticalSpeed = jumpSpeed;
}

//-1 or 1
var onePixel = sign(horizontalSpeed);

//Check for horizontal collisions and then move if we can
if(place_meeting(x+horizontalSpeed, y, oWall)) {
	//move as close as we can
	while(!place_meeting(x+onePixel, y, oWall)) {
		x = x + onePixel;	
	}
	horizontalSpeed = 0;
}
x = x + horizontalSpeed;
//Check for vertical collisions and move if we can
//-1 or 1
var onePixel = sign(verticalSpeed);
if(place_meeting(x, y+verticalSpeed, oWall)) {
	//move as close as we can
	while(!place_meeting(x, y+onePixel, oWall)) {
		y = y + onePixel;
	}
	verticalSpeed = 0;
}
y = y + verticalSpeed;

#endregion