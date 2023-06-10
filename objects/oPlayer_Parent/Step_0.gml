// Attempt to Manage movement through functions for readability and extendability as we dive more into this.

var absoluteVelocity = abs(velocityX);
var onePixel = sign(velocityX);

repeat (absoluteVelocity) {
	PlayerMovementX(onePixel, absoluteVelocity);
}

var absoluteVelocity = abs(velocityY);
var onePixel = sign(velocityY);

repeat (absoluteVelocity) {
	PlayerMovementY(onePixel, absoluteVelocity);
}

