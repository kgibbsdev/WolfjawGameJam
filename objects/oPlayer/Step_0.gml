event_inherited();

if isOnGround {
	doubleJumpEnabled = true;
	jumpsRemaining = maximumJumps;
}

//#region Inputs
	//keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
	//keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
	//keyJump = keyboard_check_pressed(vk_space);
//#endregion
//#region Move!





//Work out where to move horizontally
//horizontalSpeed = (keyRight - keyLeft) * moveSpeed;

//Work out where to move vertically
//verticalSpeed = verticalSpeed + grav;

// Quick Variable To Check if Player is On Ground
//var playerOnGround = place_meeting(x, y + 1, oGround);

//Work out if we should jump

//if playerOnGround
//{	
//	if !(firstGrounded) {
//		firstGrounded = !firstGrounded	
//	}
	
//	// Switched to a jumps remaining schema for easier tracking.
//	jumpsRemaining = maximumAllowedJumps;
//	isGrounded = true;
	
//	// I am turning both these off while the player is on the ground for easier handling.
//	wallJumpEnabled = false;
//	doubleJumpEnabled = false;
	
//}

//if (keyJump) {
//	if playerOnGround {
//		Jump()
//	} else if doubleJumpEnabled {
//	  DoubleJump();
//	} else if wallJumpEnabled {
//		WallJump();
	
//	}
//}


//-1 or 1
//var onePixel = sign(horizontalSpeed);

//Check for horizontal collisions and then move if we can

//Check for vertical collisions and move if we can
//-1 or 1
//var onePixel = sign(verticalSpeed);

//y = y + verticalSpeed;

#endregion