include <LoadCell_Case_Dimensions.scad>;

// outer size of lid
lidOuterSize = [pcbW + (clear + wallW) * 2, pcbL + (clear + wallW) * 2, pcbH + chipH + ethH + wallW];

// inner size of lid
lidInnerSize = [pcbW + clear * 2, pcbL + clear * 2, pcbH + chipH + ethH];

// edge of wall
wallEdge = [(pcbW + wallW) / 2 + clear, (pcbL + wallW) / 2 + clear, - lidOuterSize[2] / 2 + wallW];

// ethernet wall cutout for lid
lidEthCutout = [ethW, wallCut, lidInnerSize[2] + cutClear];

// trs cutout for lid
lidTrsCutout = [wallCut, trsRad * 2 + trsSpace * (trsNum - 1) + clear * 2, pcbH + chipH + trsRad];

difference() {

    // outer dimensions
    RoundCorners(lidOuterSize, roundR);

    // cutout inner dimensions
    translate([0, 0, wallW / 2 + cutClear])
        cube(lidInnerSize, center = true);

    // cutout ethernet hole
    translate([0, wallEdge[1], (lidOuterSize[2] - lidInnerSize[2]) / 2])
        cube(lidEthCutout, center = true);

    // cutout trs hole
    translate([wallEdge[0], pcbL / 2 - trsCent, (lidOuterSize[2] - lidTrsCutout[2]) / 2 + cutClear])
        cube(lidTrsCutout, center = true);
}
