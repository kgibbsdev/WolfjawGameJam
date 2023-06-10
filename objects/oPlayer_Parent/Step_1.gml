// Checking ground position for jumping mechanics, My thought is by checking this as a prestep, I
// can more easily manage double jumping and wall jumping based on how I understand this languages data flow to
// work.

isOnGround = VerticalCollision(0, 1);

if (isOnGround) {
	oPlayer.jumpsRemaining = oPlayer.maximumJumps;
	// Testing this for tracking jumping metrics, may be of use later?
	lastGroundedX = x;
	lastGroundedY = y;
}

if (velocityX) != 0 {
	var frictionStrength = (sign(velocityX) * groundResistance) * 0.2375;
	
	if (!isOnGround) {
		frictionStrength = (sign(velocityX) * airResistance) * 1.625;
	} 
	
	velocityX -= frictionStrength;

} else {
	velocityX = 0;
}


velocityY += gravityStrength;





// Maybe?
// Code inertia.
// How would this work in GameMaker

// Physics Formulas that might be relevant:

// Momentum:  mass * velocity
// Acceleration: Delta Velocity / Delta Time (Delta = Final - Initial) Essentially a change in something
// Velocity = InitialVelocity + Acceleration * Time
// Friction = tangent0 * Normal Force
// Normal Force = Mass * Acceleration

// I am thinking this would be more of a stretch target and could be fun to try to implement.