// Fischertechnik Box Library
// Holder for gear support with worm
// 31069

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>

/* [Hidden] */
width = 15;
depth = 22;
height = 10;

// getHolderGearSupportWithWormSpace()
// Gets the space of a frame for a holder of a gear support with worm (mini-mot 1)

function getHolderGearSupportWithWormSpace() = getFrameOuterVolume([width, depth, height]);

// HolderGearSupportWithWorm()
// holder of a gear support with worm (mini-mot 1)

module HolderGearSupportWithWorm() {
    Space(getHolderGearSupportWithWormSpace());

    width1 = width;
    depth1 = 9;
    width2 = width;
    depth2 = 5;
    difference() {
        AngledFrame(width1, depth1, width2, depth2, height);
        cutoffWidth = 5;
        translate([getDividerThickness() + depth2 + getTolerance() - getExcess(), getDividerThickness() + depth1 + getTolerance() - getExcess()])
            cube([cutoffWidth + getExcess(), getDividerThickness() + 3*getExcess(), height + getExcess()]);
    }
    webHeight = 4;
    hVolume = [depth2 + getTolerance() + 2*getExcess(), getDividerThickness(), webHeight];
    vVolume = [getDividerThickness(), depth1 + getTolerance() + 2*getExcess(), webHeight];
    distance = 9;
    translate([getDividerThickness() - getExcess(), (width + getTolerance() - distance) / 2]) {
        Wall(hVolume);
        translate([0, distance + getDividerThickness()])
            Wall(hVolume);
    }
    rightDistance = 2.5;
    translate([width + getTolerance() - rightDistance, getDividerThickness() - getExcess()])
        Wall(vVolume);
}

// Tests
color("lightgray")
HolderGearSupportWithWorm();