// render settings
fn  = 100;     // sides to render on cylinder
cut = 0.001;   // exact cutouts do not render

// Makes a cube shape with rounded corners in the z-direction
// dim[x,y,z] - vector containing outer dimensions of the cube
// rad        - radius of the rounded corners 
module RoundCorners(dim, rad) {
    // create adjusted dimensions for corners
    adjDim = [dim[0] - rad * 2, dim[1] - rad * 2, dim[2]];

    hull() {
        // place cylinders at each corner
        for (x = [1, -1])
            for (y = [1, -1])
                translate([x * adjDim[0] / 2,   y * adjDim[1] / 2, 0])
                    cylinder(h = adjDim[2], r = rad, center = true, $fn = fn);

        // place main body
        cube(adjDim, center = true);
    }
}

// clearances
clear = 0.2;    // clearance from load cell to wall

// load cell measured dimensions
loadCellX = 34;  // length and width of load cell
loadBaseH = 2.5; // thickness of load cell base
loadBaseX = 3;   // width of load cell base
loadBaseB = 7.5; // width of load cell base at the strain gauge

// wall thickness
wall = 3;        // wall thickness

roundR = 3;      // radius of rounded corners

// derived dimensions
base    = [loadCellX + wall * 2, loadCellX + wall * 2, wall];
baseCut = [loadCellX - (loadBaseX + clear) * 2, 
           loadCellX - loadBaseX - loadBaseB - clear * 2, 
           wall + cut];
wallCut = [loadCellX + clear * 2, 
           loadCellX + clear * 2, 
           base[2] + cut];

union() {
    // base with cutout for load cell to deflect
    difference() {
        RoundCorners(base, roundR);
        translate([0, (loadBaseB - loadBaseX) / 2, 0])
            RoundCorners(baseCut, roundR);
    }

    // walls to hold load cell
    difference() {
        translate([0, 0, wall])
            RoundCorners(base, roundR);
        translate([0, 0, wall])
            RoundCorners(wallCut, roundR);
    }
}


