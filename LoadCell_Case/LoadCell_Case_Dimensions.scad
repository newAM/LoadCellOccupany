// render settings
fn       = 100;     // sides to render on cylinder
cutClear = 0.001;   // exact cutouts do not render

// clearances
clear = 0.2;    // object to case side
chipH = 3;      // height of chips on board

// PCB dimensions
pcbW = 50;      // width
pcbL = 80;      // length
pcbH = 1.6;     // height

// case dimensions
wallW   = 2;    // wall thickness
roundR  = 2;    // radius of rounded corners
wallCut = wallW + cutClear;

// ethernet cutout sizes
ethH = 13.61 + clear * 2; // 14.00 datasheet recommended
ethW = 16.79 + clear * 2; // 17.55 datasheet recommended

// TRS cutout sizes
trsRad   = 2 + clear;   // radius of cutout for TRS ports
trsSpace = 11;          // spacing between TRS ports 
                        // same as space between first TRS port and PCB edge
trsNum   = 4;           // number of TRS ports
trsCent  = 27.5;        // center of the TRS bank from edge of PCB

// PCB mount points
holeX   = 3.5;                  // distance from hole center to edge of PCB
heatR   = 3.9 / 2;              // radius of hole for heat set insert
heatH   = 3;                    // depth of hole for heat set insert
heatPad = holeX - clear * 2;    // radius of padding around heat set insert

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
