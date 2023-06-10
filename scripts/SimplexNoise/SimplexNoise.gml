function simplex_init() {
	var _simplex_perm_list = ds_list_create();
	//commenting out to see why this is here
	//_simplex_perm = _simplex_perm_list;
	for (i=0; i<512; i++) {
		ds_list_add(_simplex_perm_list,floor(random(255)));
	}
	simplex_set_perm(_simplex_perm_list);
	return _simplex_perm_list;
}

function simplex_grad() {
	var h = argument[0] & 7;      // Convert low 3 bits of hash code
	var u;
	if (h<4) {
	u = argument[1];
	}else {
	u = argument[2];  // into 8 simple gradient directions,
	}
	var v;
	if (h<4){
	v = argument[2];
	}else{
	v = argument[1];  // and compute the dot product with (x,y).
	}
	var r1;
	if (h&1)
	r1 = -u;
	else
	r1 = u;
	var r2;
	if (h&2)
	r2 = -2.0*v;
	else
	r2 = 2.0*v;
	return (r1 + r2);
}

function simplex_noise() {
	var xx = argument[0];
	var yy = argument[1];
	var n0, n1, n2;
	var s = (xx+yy)*0.366025403;
	var xs = xx + s;
	var ys = yy + s;
	var i = floor(xs);
	var j = floor(ys);
	var t = (i+j)*0.211324865;
	var X0 = i-t;
	var Y0 = j-t;
	var x0 = xx-X0;
	var y0 = yy-Y0;
	var i1, j1;
	if (x0>y0) { i1=1; j1=0;}
	else {i1=0; j1=1; }
	var x1 = x0 - i1 + 0.211324865;
	var y1 = y0 - j1 + 0.211324865;
	var x2 = x0 - 1.0 + 2.0 * 0.211324865;
	var y2 = y0 - 1.0 + 2.0 * 0.211324865;
	var ii = i & $FF;
	var jj = j &  $FF;
	var t0 = 0.5 - x0*x0-y0*y0;
	if(t0 < 0.0) n0 = 0.0;
	else {
	  t0 *= t0;
	  n0 = t0 * t0 * simplex_grad(ds_list_find_value(global._simplex_perm,ii+ds_list_find_value(global._simplex_perm,jj)), x0, y0); 
	}
	var t1 = 0.5 - x1*x1-y1*y1;
	if(t1 < 0.0) n1 = 0.0;
	else {
	  t1 *= t1;
	  n1 = t1 * t1 * simplex_grad(ds_list_find_value(global._simplex_perm,ii+i1+ds_list_find_value(global._simplex_perm,jj+j1)), x1, y1);
	}
	var t2 = 0.5 - x2*x2-y2*y2;
	if(t2 < 0.0) n2 = 0.0;
	else {
	  t2 *= t2;
	  n2 = t2 * t2 * simplex_grad(ds_list_find_value(global._simplex_perm,ii+1+ds_list_find_value(global._simplex_perm,jj+1)), x2, y2);
	}
	return 40 * (n0+n1+n2);
}

function simplex_cleanup() {
	ds_list_destroy(argument[0]);
}

function simplex_set_perm() {
	global._simplex_perm = argument[0];
}

function fractional_brownian_motion() {
	var seed = argument[0];
	var X = argument[1] + seed;
	var Y = argument[2] + seed;
	var frequency = argument[3];
	var amplitude = argument[4];
	var persistence = argument[5];
	var octaves = argument[6];
	var lacunarity = 2.0;
	var total = 0;
	for(i = 0; i < octaves; i++)
	{
	    total += simplex_noise(X * frequency, Y * frequency) * amplitude;
	    frequency *= lacunarity;
	    amplitude *= persistence;
	}
	return total;
}


