randomize();

chunkSize = 32*64;

seed = floor(random(999999999999));

// Distance between feature points (mountains, valleys, etc...)
var frequency = 0.00009; //0.00009
// How high or low a point can go
// Increase for deeper valleys, and taller mountains. Decrease for flatter land
var amplitude = 0.2;
// Change in amplitude per octave
var persistence = 0.8;
// Number of iterations (increase for more features/details)
// Performance heavy, don't recommend going above 8
var octaves = 4;

//genInit();
simplex_init();
generate_terrain(x, chunkSize, frequency, amplitude, persistence, octaves, seed);

