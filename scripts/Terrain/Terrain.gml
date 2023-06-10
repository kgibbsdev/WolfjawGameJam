/// @description generateTerrain(startX, endX, frequency, amplitude, persistence, octaves, seed);
/// @param startX
/// @param  endX
/// @param  frequency
/// @param  amplitude
/// @param  persistence
/// @param  octaves
/// @param  seed
function generate_terrain() {
	randomize();
	globalvar startX;
	globalvar endX;

	startX = argument[0];
	endX = argument[1];
	var frequency = argument[2];
	var amplitude = argument[3];
	var persistence = argument[4];
	var octaves = argument[5];
	var seed = argument[6];

	var maxHeight = 576/32;
	var heightBuffer = 64;
	for(_x = startX;_x < endX; _x += 64)
	{
	    var height = fractional_brownian_motion(seed, _x, 0, frequency, amplitude, persistence, octaves);
	    height = (height + 1) * 0.5;
		height *= maxHeight;
	      
		for(_y = 20; _y > height; _y--){    
	        if(_y <= height+1){
	            var block = instance_create(_x, _y * 64, oWall);
	        } else if(_y <= height+50){
	            var block = instance_create(_x, _y * 64, oWall);  
			}
        
		}

	}




}
