// Fischertechnik Box Library
// Holder for worm with nut screw
// 31915 with 37858

use <../ModelBase/Simple.scad>
use <../ModelBase/Complex.scad>

include <../Base/PlacementOptions.scad>

/* [Hidden] */
width = 40;
depth = 12;
height = 16;
wormHeight = 12;
volume = [width, depth, height];

// getComboWormAndNutScrewSpace()
// gets the space a worm combined with nut screw needs

function getComboWormAndNutScrewSpace() = getFrameOuterVolume(volume);

// ComboWormAndNutScrew()
// Worm combined with nut screw

module ComboWormAndNutScrew() {
    difference() {
        Frame(volume);
        FrameTopCutoff(volume, 30);
        FrameBottomCutoff(volume, 30);
    }
    distance = 5;
    railHeight = height - wormHeight + 1;
    FrameRails(volume, distance, railHeight, Horizontal);
}

// Test
color("lightgray")
ComboWormAndNutScrew();