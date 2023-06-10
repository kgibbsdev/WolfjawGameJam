
function PlayerMovementX(onePixel, abVel) {
	var isCollision = HorizontalCollision(onePixel, 0);
	if (!isCollision) {
		x += onePixel;
	} else {

	return;
	}
}


function PlayerMovementY(onePixel, abVel) {
	var isCollision = VerticalCollision(0, onePixel);
	if (!isCollision) {
		y += onePixel;
	} else {
		velocityY = 0;
		isOnGround = true;
		return;
	}
}

function ExecuteAppropriateJump(onGround) {
	switch onGround {
	case true:
		Jump();
		break;
	case false:
		if jumpsRemaining > 0 {
			DoubleJump();
			break;
		}
	default:
		// Do nothing? 
		break;
	}
}

function Jump() {
	oPlayer.velocityY = jumpSpeed;
	jumpsRemaining -= 1;
	doubleJumpEnabled = true;
	isOnGround = false;
}

function DoubleJump() {
	oPlayer.velocityY = jumpSpeed;
	jumpsRemaining -= 1;
	doubleJumpEnabled = false;
}

function WallJump() {
	horizontalSpeed = -wallJumpSpeed;
	verticalSpeed = jumpSpeed;
	wallJump = false;
}