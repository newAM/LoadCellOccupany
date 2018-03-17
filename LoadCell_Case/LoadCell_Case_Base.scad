include <LoadCell_Case_Dimensions.scad>;

// screw standoffs
standoff = [heatPad * 2, heatPad * 2, chipH];

// base dimensions
baseSize = [pcbW + (clear + wallW) * 2, pcbL + (clear + wallW) * 2, wallW];

// ethernet wall
baseEthWall = [ethW - clear * 2, wallW, pcbH + chipH];

// TRS wall
baseTrsWall = [wallW, trsRad * 2 + trsSpace * (trsNum - 1), pcbH + chipH];

union() {
    // create base
    RoundCorners(baseSize, roundR);

    // place PCB standoff at each corner
    for (x = [1, -1]) {
        for (y = [1, -1]) {
            translate([(pcbW / 2 - holeX) * x, (pcbL / 2 - holeX) * y, (baseSize[2] + standoff[2]) / 2]) {
                difference() {
                    cube(standoff, center = true);
                    cylinder(h = heatH + cutClear, r = heatR, center = true, $fn = fn);
                }
            }
        }
    }

    // place ethernet wall
    translate([0, (baseSize[1] - baseEthWall[1]) / 2, (baseSize[2] + baseEthWall[2]) / 2]) {
        cube(baseEthWall, center = true);
    }

    // place TRS wall
    translate([-(baseSize[0] - baseTrsWall[0]) / 2, pcbL / 2 - trsCent, (baseSize[2] + baseTrsWall[2]) / 2]) {
        cube(baseTrsWall, center = true);
    }
}
